module HSWM.ManageHook where

import Data.List (isInfixOf, isPrefixOf, isSuffixOf)
import HSWM.StackSet qualified as W
import HSWM.Types.WM
import HSWM.Util.Types

-- | If-then-else lifted to a 'Monad'.
ifM :: (Monad m) => m Bool -> m a -> m a -> m a
ifM mb t f = mb >>= \b -> if b then t else f

idHook :: ManageHook
idHook = pure $ Endo id

-- | A grouping type, which can hold the outcome of a predicate Query.
-- This is analogous to group types in regular expressions.
-- TODO: create a better API for aggregating multiple Matches logically
data Match a = Match Bool a

-- | An alternative 'ManageHook' composer. Unlike 'composeAll' it stops as soon as
-- a candidate returns a 'Just' value, effectively running only the first match
-- (whereas 'composeAll' continues and executes all matching rules).
composeOne :: (Monoid a, Monad m) => [m (Maybe a)] -> m a
composeOne = foldr f (return mempty)
  where
    f q z = do
      x <- q
      maybe z return x

infix 0 -->

-- | @p --> x@.  If @p@ returns 'True', execute the 'ManageHook'.
--
-- > (-->) :: Monoid m => Query Bool -> Query m -> Query m -- a simpler type
(-->) :: (Monad m, Monoid a) => m Bool -> m a -> m a
p --> f = p >>= \b -> if b then f else return mempty

-- | @q =? x@. if the result of @q@ equals @x@, return 'True'.
(=?) :: (Eq a) => Query a -> a -> Query Bool
q =? x = fmap (== x) q

infixr 3 <&&>, <||>

-- | '&&' lifted to a 'Monad'.
(<&&>) :: (Monad m) => m Bool -> m Bool -> m Bool
x <&&> y = ifM x y (pure False)

-- | '||' lifted to a 'Monad'.
(<||>) :: (Monad m) => m Bool -> m Bool -> m Bool
x <||> y = ifM x (pure True) y

infixr 0 -?>, -->>, -?>>

-- | q \/=? x. if the result of q equals x, return False
(/=?) :: (Eq a, Functor m) => m a -> a -> m Bool
q /=? x = fmap (/= x) q

-- | q ^? x. if the result of @x `isPrefixOf` q@, return True
(^?) :: (Eq a, Functor m) => m [a] -> [a] -> m Bool
q ^? x = fmap (x `isPrefixOf`) q

-- | q ~? x. if the result of @x `isInfixOf` q@, return True
(~?) :: (Eq a, Functor m) => m [a] -> [a] -> m Bool
q ~? x = fmap (x `isInfixOf`) q

-- | q $? x. if the result of @x `isSuffixOf` q@, return True
($?) :: (Eq a, Functor m) => m [a] -> [a] -> m Bool
q $? x = fmap (x `isSuffixOf`) q

-- | q <==? x. if the result of q equals x, return True grouped with q
(<==?) :: (Eq a, Functor m) => m a -> a -> m (Match a)
q <==? x = fmap (`eq` x) q
  where
    eq q' x' = Match (q' == x') q'

-- | q <\/=? x. if the result of q notequals x, return True grouped with q
(</=?) :: (Eq a, Functor m) => m a -> a -> m (Match a)
q </=? x = fmap (`neq` x) q
  where
    neq q' x' = Match (q' /= x') q'

-- | A helper operator for use in 'composeOne'. It takes a condition and an action;
-- if the condition fails, it returns 'Nothing' from the 'Query' so 'composeOne' will
-- go on and try the next rule.
(-?>) :: (Functor m, Monad m) => m Bool -> m a -> m (Maybe a)
p -?> f = do
  x <- p
  if x then fmap Just f else return Nothing

-- | A helper operator for use in 'composeAll'. It takes a condition and a function taking a grouped datum to action.  If 'p' is true, it executes the resulting action.
(-->>) :: (Monoid b, Monad m) => m (Match a) -> (a -> m b) -> m b
p -->> f = do
  Match b m <- p
  if b then f m else return mempty

-- | A helper operator for use in 'composeOne'.  It takes a condition and a function taking a groupdatum to action.  If 'p' is true, it executes the resulting action.  If it fails, it returns 'Nothing' from the 'Query' so 'composeOne' will go on and try the next rule.
(-?>>) :: (Functor m, Monad m) => m (Match a) -> (a -> m b) -> m (Maybe b)
p -?>> f = do
  Match b m <- p
  if b then fmap Just (f m) else return Nothing

-- | A predicate to check whether a window is hidden (minimized).
isMinimized :: Query Bool
isMinimized = asks minimized

appName :: Query String
appName = asks appId

wTitle :: Query String
wTitle = asks title

-- | Floats the new window in the given rectangle.
doRectFloat ::
  -- | The rectangle to float the window in. 0 to 1; x, y, w, h.
  W.RationalRect ->
  ManageHook
doRectFloat r = ask >>= \w -> doF (W.float w.river_window r)

-- | Float the window in given relative size at the center of the screen.
doCenterFloat :: Rational -> Rational -> ManageHook
doCenterFloat width height = do
  w <- ask
  doF $ W.float w.river_window (centerRationalRect $ W.RationalRect 0 0 width height)

-- | Modify the 'WindowSet' with a pure function.
doF :: (s -> s) -> Query (Endo s)
doF = return . Endo

-- -- | Move the window to the floating layer.
-- doFloat :: ManageHook
-- doFloat = ask >>= \w -> doF . W.float w . snd =<< liftHS (floatLocation w)

-- -- | Map the window and remove it from the 'WindowSet'.
-- doIgnore :: ManageHook
-- doIgnore = ask >>= \w -> liftX (reveal w) >> doF (W.delete w)

-- | Move the window to a given workspace
doShift :: WorkspaceId -> ManageHook
doShift i = doF . W.shiftWin i . river_window =<< ask
