{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Pixman.Safe
    ( Generated.Pixman.Safe.pixman_transform_init_identity
    , Generated.Pixman.Safe.pixman_transform_point_3d
    , Generated.Pixman.Safe.pixman_transform_point
    , Generated.Pixman.Safe.pixman_transform_multiply
    , Generated.Pixman.Safe.pixman_transform_init_scale
    , Generated.Pixman.Safe.pixman_transform_scale
    , Generated.Pixman.Safe.pixman_transform_init_rotate
    , Generated.Pixman.Safe.pixman_transform_rotate
    , Generated.Pixman.Safe.pixman_transform_init_translate
    , Generated.Pixman.Safe.pixman_transform_translate
    , Generated.Pixman.Safe.pixman_transform_bounds
    , Generated.Pixman.Safe.pixman_transform_invert
    , Generated.Pixman.Safe.pixman_transform_is_identity
    , Generated.Pixman.Safe.pixman_transform_is_scale
    , Generated.Pixman.Safe.pixman_transform_is_int_translate
    , Generated.Pixman.Safe.pixman_transform_is_inverse
    , Generated.Pixman.Safe.pixman_transform_from_pixman_f_transform
    , Generated.Pixman.Safe.pixman_f_transform_from_pixman_transform
    , Generated.Pixman.Safe.pixman_f_transform_invert
    , Generated.Pixman.Safe.pixman_f_transform_point
    , Generated.Pixman.Safe.pixman_f_transform_point_3d
    , Generated.Pixman.Safe.pixman_f_transform_multiply
    , Generated.Pixman.Safe.pixman_f_transform_init_scale
    , Generated.Pixman.Safe.pixman_f_transform_scale
    , Generated.Pixman.Safe.pixman_f_transform_init_rotate
    , Generated.Pixman.Safe.pixman_f_transform_rotate
    , Generated.Pixman.Safe.pixman_f_transform_init_translate
    , Generated.Pixman.Safe.pixman_f_transform_translate
    , Generated.Pixman.Safe.pixman_f_transform_bounds
    , Generated.Pixman.Safe.pixman_f_transform_init_identity
    , Generated.Pixman.Safe.pixman_region_set_static_pointers
    , Generated.Pixman.Safe.pixman_region_init
    , Generated.Pixman.Safe.pixman_region_init_rect
    , Generated.Pixman.Safe.pixman_region_init_rects
    , Generated.Pixman.Safe.pixman_region_init_with_extents
    , Generated.Pixman.Safe.pixman_region_init_from_image
    , Generated.Pixman.Safe.pixman_region_fini
    , Generated.Pixman.Safe.pixman_region_translate
    , Generated.Pixman.Safe.pixman_region_copy
    , Generated.Pixman.Safe.pixman_region_intersect
    , Generated.Pixman.Safe.pixman_region_union
    , Generated.Pixman.Safe.pixman_region_union_rect
    , Generated.Pixman.Safe.pixman_region_intersect_rect
    , Generated.Pixman.Safe.pixman_region_subtract
    , Generated.Pixman.Safe.pixman_region_inverse
    , Generated.Pixman.Safe.pixman_region_contains_point
    , Generated.Pixman.Safe.pixman_region_contains_rectangle
    , Generated.Pixman.Safe.pixman_region_empty
    , Generated.Pixman.Safe.pixman_region_not_empty
    , Generated.Pixman.Safe.pixman_region_extents
    , Generated.Pixman.Safe.pixman_region_n_rects
    , Generated.Pixman.Safe.pixman_region_rectangles
    , Generated.Pixman.Safe.pixman_region_equal
    , Generated.Pixman.Safe.pixman_region_selfcheck
    , Generated.Pixman.Safe.pixman_region_reset
    , Generated.Pixman.Safe.pixman_region_clear
    , Generated.Pixman.Safe.pixman_region32_init
    , Generated.Pixman.Safe.pixman_region32_init_rect
    , Generated.Pixman.Safe.pixman_region32_init_rects
    , Generated.Pixman.Safe.pixman_region32_init_with_extents
    , Generated.Pixman.Safe.pixman_region32_init_from_image
    , Generated.Pixman.Safe.pixman_region32_fini
    , Generated.Pixman.Safe.pixman_region32_translate
    , Generated.Pixman.Safe.pixman_region32_copy
    , Generated.Pixman.Safe.pixman_region32_intersect
    , Generated.Pixman.Safe.pixman_region32_union
    , Generated.Pixman.Safe.pixman_region32_intersect_rect
    , Generated.Pixman.Safe.pixman_region32_union_rect
    , Generated.Pixman.Safe.pixman_region32_subtract
    , Generated.Pixman.Safe.pixman_region32_inverse
    , Generated.Pixman.Safe.pixman_region32_contains_point
    , Generated.Pixman.Safe.pixman_region32_contains_rectangle
    , Generated.Pixman.Safe.pixman_region32_empty
    , Generated.Pixman.Safe.pixman_region32_not_empty
    , Generated.Pixman.Safe.pixman_region32_extents
    , Generated.Pixman.Safe.pixman_region32_n_rects
    , Generated.Pixman.Safe.pixman_region32_rectangles
    , Generated.Pixman.Safe.pixman_region32_equal
    , Generated.Pixman.Safe.pixman_region32_selfcheck
    , Generated.Pixman.Safe.pixman_region32_reset
    , Generated.Pixman.Safe.pixman_region32_clear
    , Generated.Pixman.Safe.pixman_region64f_init
    , Generated.Pixman.Safe.pixman_region64f_init_rect
    , Generated.Pixman.Safe.pixman_region64f_init_rectf
    , Generated.Pixman.Safe.pixman_region64f_init_rects
    , Generated.Pixman.Safe.pixman_region64f_init_with_extents
    , Generated.Pixman.Safe.pixman_region64f_init_from_image
    , Generated.Pixman.Safe.pixman_region64f_fini
    , Generated.Pixman.Safe.pixman_region64f_translate
    , Generated.Pixman.Safe.pixman_region64f_translatef
    , Generated.Pixman.Safe.pixman_region64f_copy
    , Generated.Pixman.Safe.pixman_region64f_intersect
    , Generated.Pixman.Safe.pixman_region64f_union
    , Generated.Pixman.Safe.pixman_region64f_intersect_rect
    , Generated.Pixman.Safe.pixman_region64f_intersect_rectf
    , Generated.Pixman.Safe.pixman_region64f_union_rect
    , Generated.Pixman.Safe.pixman_region64f_union_rectf
    , Generated.Pixman.Safe.pixman_region64f_subtract
    , Generated.Pixman.Safe.pixman_region64f_inverse
    , Generated.Pixman.Safe.pixman_region64f_contains_point
    , Generated.Pixman.Safe.pixman_region64f_contains_pointf
    , Generated.Pixman.Safe.pixman_region64f_contains_rectangle
    , Generated.Pixman.Safe.pixman_region64f_empty
    , Generated.Pixman.Safe.pixman_region64f_not_empty
    , Generated.Pixman.Safe.pixman_region64f_extents
    , Generated.Pixman.Safe.pixman_region64f_n_rects
    , Generated.Pixman.Safe.pixman_region64f_rectangles
    , Generated.Pixman.Safe.pixman_region64f_equal
    , Generated.Pixman.Safe.pixman_region64f_selfcheck
    , Generated.Pixman.Safe.pixman_region64f_reset
    , Generated.Pixman.Safe.pixman_region64f_clear
    , Generated.Pixman.Safe.pixman_blt
    , Generated.Pixman.Safe.pixman_fill
    , Generated.Pixman.Safe.pixman_version
    , Generated.Pixman.Safe.pixman_version_string
    , Generated.Pixman.Safe.pixman_format_supported_destination
    , Generated.Pixman.Safe.pixman_format_supported_source
    , Generated.Pixman.Safe.pixman_image_create_solid_fill
    , Generated.Pixman.Safe.pixman_image_create_linear_gradient
    , Generated.Pixman.Safe.pixman_image_create_radial_gradient
    , Generated.Pixman.Safe.pixman_image_create_conical_gradient
    , Generated.Pixman.Safe.pixman_image_create_bits
    , Generated.Pixman.Safe.pixman_image_create_bits_no_clear
    , Generated.Pixman.Safe.pixman_image_ref
    , Generated.Pixman.Safe.pixman_image_unref
    , Generated.Pixman.Safe.pixman_image_set_destroy_function
    , Generated.Pixman.Safe.pixman_image_get_destroy_data
    , Generated.Pixman.Safe.pixman_image_set_clip_region
    , Generated.Pixman.Safe.pixman_image_set_clip_region32
    , Generated.Pixman.Safe.pixman_image_set_clip_region64f
    , Generated.Pixman.Safe.pixman_image_set_has_client_clip
    , Generated.Pixman.Safe.pixman_image_set_transform
    , Generated.Pixman.Safe.pixman_image_set_repeat
    , Generated.Pixman.Safe.pixman_image_set_dither
    , Generated.Pixman.Safe.pixman_image_set_dither_offset
    , Generated.Pixman.Safe.pixman_image_set_filter
    , Generated.Pixman.Safe.pixman_image_set_source_clipping
    , Generated.Pixman.Safe.pixman_image_set_alpha_map
    , Generated.Pixman.Safe.pixman_image_set_component_alpha
    , Generated.Pixman.Safe.pixman_image_get_component_alpha
    , Generated.Pixman.Safe.pixman_image_set_accessors
    , Generated.Pixman.Safe.pixman_image_set_indexed
    , Generated.Pixman.Safe.pixman_image_get_data
    , Generated.Pixman.Safe.pixman_image_get_width
    , Generated.Pixman.Safe.pixman_image_get_height
    , Generated.Pixman.Safe.pixman_image_get_stride
    , Generated.Pixman.Safe.pixman_image_get_depth
    , Generated.Pixman.Safe.pixman_image_get_format
    , Generated.Pixman.Safe.pixman_filter_create_separable_convolution
    , Generated.Pixman.Safe.pixman_image_fill_rectangles
    , Generated.Pixman.Safe.pixman_image_fill_boxes
    , Generated.Pixman.Safe.pixman_compute_composite_region
    , Generated.Pixman.Safe.pixman_image_composite
    , Generated.Pixman.Safe.pixman_image_composite32
    , Generated.Pixman.Safe.pixman_image_composite64f
    , Generated.Pixman.Safe.pixman_disable_out_of_bounds_workaround
    , Generated.Pixman.Safe.pixman_glyph_cache_create
    , Generated.Pixman.Safe.pixman_glyph_cache_destroy
    , Generated.Pixman.Safe.pixman_glyph_cache_freeze
    , Generated.Pixman.Safe.pixman_glyph_cache_thaw
    , Generated.Pixman.Safe.pixman_glyph_cache_lookup
    , Generated.Pixman.Safe.pixman_glyph_cache_insert
    , Generated.Pixman.Safe.pixman_glyph_cache_remove
    , Generated.Pixman.Safe.pixman_glyph_get_extents
    , Generated.Pixman.Safe.pixman_glyph_get_mask_format
    , Generated.Pixman.Safe.pixman_composite_glyphs
    , Generated.Pixman.Safe.pixman_composite_glyphs_no_mask
    , Generated.Pixman.Safe.pixman_sample_ceil_y
    , Generated.Pixman.Safe.pixman_sample_floor_y
    , Generated.Pixman.Safe.pixman_edge_step
    , Generated.Pixman.Safe.pixman_edge_init
    , Generated.Pixman.Safe.pixman_line_fixed_edge_init
    , Generated.Pixman.Safe.pixman_rasterize_edges
    , Generated.Pixman.Safe.pixman_add_traps
    , Generated.Pixman.Safe.pixman_add_trapezoids
    , Generated.Pixman.Safe.pixman_rasterize_trapezoid
    , Generated.Pixman.Safe.pixman_composite_trapezoids
    , Generated.Pixman.Safe.pixman_composite_triangles
    , Generated.Pixman.Safe.pixman_add_triangles
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Pixman

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <pixman.h>"
  , "void hs_bindgen_b0063d94f21a79d7 ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_transform_init_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_916eed0dbe556883 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point_3d)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_96555bcb0c683cbf ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_75d62e3fec92f019 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return (pixman_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f0c3ddfcd7bbea1f ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_bb919d066ce5d54e ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_7f1a9f1380d631b6 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9faae79e90f553b3 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_bba559913af7c1bb ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_cb651ef78fe9895d ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_80d8c4679d2e3360 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_bounds)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_32f2b7a8a64ced5c ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f4fa302f11f8fb7e ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_4eb8fdc35d810804 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_scale)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_5e34e729ffea635f ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_int_translate)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_6c15d2abaf6c6b83 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_is_inverse)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_967ee4a2dd006109 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_from_pixman_f_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c32e1dd014a3a92c ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_from_pixman_transform)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_18b66d984e822be9 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b329aee9b92231ab ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_point)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e61694cfba10d1b4 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_point_3d)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e9d83660134c8d38 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c5e7b1063f60ca76 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1aca4d44c50ba4cd ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_9c2fa7120c44a2fb ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d872dcf8bb373381 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_13d2c8a8cbc49e55 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_8cc51ecaa634b6b3 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_86cae815b835273f ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_bounds)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f635509530a2953a ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_identity)(arg1);"
  , "}"
  , "void hs_bindgen_c841396366f67b35 ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  (pixman_region_set_static_pointers)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_df93dd5911b36a39 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_init)(arg1);"
  , "}"
  , "void hs_bindgen_9f7c396063355ade ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_cf880971d9b8c885 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_cfcc8e8b67d0a119 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b1b8bb04b0587bef ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ddbfdae767754a09 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_fini)(arg1);"
  , "}"
  , "void hs_bindgen_d7d406720818ebb7 ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d6670c82d8328c78 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b0ee46f12ed3b049 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_39ff4beed71df1c4 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_76660a1e3e0c630d ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return (pixman_region_union_rect)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_b89dd21a6532d8a9 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return (pixman_region_intersect_rect)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_b0dd1d349f2da68c ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d6a9f74bdf1a218e ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_3366b9e600a7a765 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_4557ba96357046c9 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f04b933e0b8b461e ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_c53aaa9140393262 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_not_empty)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_1ce0dd1f0cb56391 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_60d0c501f56b2ae4 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_n_rects)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_224eff8c74122673 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_dee7fc680493edcf ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_87ad5531b382008d ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_94264697f3aaba50 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d7dd541ade7e0b13 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_clear)(arg1);"
  , "}"
  , "void hs_bindgen_42f704075be6bee9 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_init)(arg1);"
  , "}"
  , "void hs_bindgen_7f7ea3f44e2743e5 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region32_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_545d398b59b3e13b ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_539fa501d19678fd ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c7cdf8f9a3e78d98 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2f34474764095737 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_fini)(arg1);"
  , "}"
  , "void hs_bindgen_7645261bd07b4122 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region32_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_4edc3f9d3ab091be ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e24b28ee6e73e2b1 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7e79ae2d804fb5c6 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_29552ed39fa30fbd ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect_rect)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_d5ef971c05f014c7 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return (pixman_region32_union_rect)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_e8575358da2e0b8a ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_925f2a07800b666d ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_450d8c7056ee5c6f ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_726e797112f599db ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e681769ef0486f33 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_92cf10eba34bfad0 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_not_empty)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_3ec7d7efcdee7393 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_355ecdbec5cec96e ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_n_rects)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_9634246aca44b3d7 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_79ff80abe138cb7e ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_90c6265c91ca172e ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_1c92e9560d4620ba ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ea37376838d44e57 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_clear)(arg1);"
  , "}"
  , "void hs_bindgen_511f32b01f98254b ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_init)(arg1);"
  , "}"
  , "void hs_bindgen_473a6dd8c61f1198 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_91c7d8b4fd83cb29 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rectf)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_07474ee617b630a0 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9e7a6e0ac55e5c64 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3fb9fe5dcda81edb ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_dd499b7108fbdb24 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_fini)(arg1);"
  , "}"
  , "void hs_bindgen_216ccb6ff0ba0bc1 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translate)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_62a1e3989bbc8fd6 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translatef)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7569e10773b8258d ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_471c1e401df4037a ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_707002dbbd66abde ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d0a516d55a3616a5 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect_rect)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_0385b0f738a73110 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5,"
  , "  double arg6"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect_rectf)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_abbbb3f2cae556f5 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return (pixman_region64f_union_rect)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_34558706e8f3e848 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5,"
  , "  double arg6"
  , ")"
  , "{"
  , "  return (pixman_region64f_union_rectf)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_bool_t hs_bindgen_2abf35c280fc641f ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_0cdcfc3a34dc2abf ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_160d0aafb5712d10 ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_8795ca1f508d430a ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_pointf)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_a10c888100374bc7 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_cc4951087869baa9 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_14abea2c162e2d17 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_not_empty)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_f0ad09bdd91ed5bf ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_df7c94af72eb547d ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_n_rects)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_b45df5f061f94f25 ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_79f49aaa48a9937d ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_60c6459985ccdada ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_3de633b388a7f203 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_70ed9845c8d470aa ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_clear)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_79ca56e52f77ef5a ("
  , "  uint32_t *arg1,"
  , "  uint32_t *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  signed int arg5,"
  , "  signed int arg6,"
  , "  signed int arg7,"
  , "  signed int arg8,"
  , "  signed int arg9,"
  , "  signed int arg10,"
  , "  signed int arg11,"
  , "  signed int arg12"
  , ")"
  , "{"
  , "  return (pixman_blt)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);"
  , "}"
  , "pixman_bool_t hs_bindgen_8009826436b9f267 ("
  , "  uint32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  signed int arg5,"
  , "  signed int arg6,"
  , "  signed int arg7,"
  , "  uint32_t arg8"
  , ")"
  , "{"
  , "  return (pixman_fill)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_efed5d05252619b8 (void)"
  , "{"
  , "  return (pixman_version)();"
  , "}"
  , "char const *hs_bindgen_562f2409b174b947 (void)"
  , "{"
  , "  return (pixman_version_string)();"
  , "}"
  , "pixman_bool_t hs_bindgen_2a48277514fbb740 ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_destination)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_ca5ca447ed2443fc ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_source)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_37fd3fe9c39f2286 ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_create_solid_fill)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_1673d00e31952500 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_linear_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_88f1ffcf28dbef6e ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_gradient_stop_t const *arg5,"
  , "  signed int arg6"
  , ")"
  , "{"
  , "  return (pixman_image_create_radial_gradient)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "pixman_image_t *hs_bindgen_f04c1587e8086024 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_conical_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_c7091a8f108ccee9 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_2d7eb33bfa918a20 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits_no_clear)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_2a10505a62570b9a ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_ref)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_d073de95fa9d05fa ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_unref)(arg1);"
  , "}"
  , "void hs_bindgen_cdf2a943f558337a ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_destroy_function)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_70341b862091f90e ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_destroy_data)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_2438e74935286b20 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_5f36d4fca8052355 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region32)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_66fbc630e61bbc2a ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region64f)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7c9f2d0566f6d73a ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_has_client_clip)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_8580eabb0c139f70 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_036238ae3333c5b0 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_repeat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a7f5e4370c7a3378 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_dither)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_26320f45b0f254d5 ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_dither_offset)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_703b53566075fe62 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_set_filter)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c1acb4c511bb6b8b ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_source_clipping)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0bff0e5cbd12853e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  (pixman_image_set_alpha_map)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_97107daa80824765 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_component_alpha)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_83f505afe102e361 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_component_alpha)(arg1);"
  , "}"
  , "void hs_bindgen_04b5993b91e58750 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_accessors)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_797b4a00cc1515c9 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_indexed)(arg1, arg2);"
  , "}"
  , "uint32_t *hs_bindgen_0122e9c74bc8cc5f ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_data)(arg1);"
  , "}"
  , "signed int hs_bindgen_f7100d70ff323678 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_width)(arg1);"
  , "}"
  , "signed int hs_bindgen_8b2e53e1b1362bcd ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_height)(arg1);"
  , "}"
  , "signed int hs_bindgen_afdc3350400b4990 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_stride)(arg1);"
  , "}"
  , "signed int hs_bindgen_1c48d581e765a140 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_depth)(arg1);"
  , "}"
  , "pixman_format_code_t hs_bindgen_3e7d20be0f67a7ad ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_format)(arg1);"
  , "}"
  , "pixman_fixed_t *hs_bindgen_0e136ade51383926 ("
  , "  signed int *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_kernel_t arg4,"
  , "  pixman_kernel_t arg5,"
  , "  pixman_kernel_t arg6,"
  , "  pixman_kernel_t arg7,"
  , "  signed int arg8,"
  , "  signed int arg9"
  , ")"
  , "{"
  , "  return (pixman_filter_create_separable_convolution)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);"
  , "}"
  , "pixman_bool_t hs_bindgen_1402a265caaeb03c ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_rectangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_9a2460070c412f68 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_boxes)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_dd96d81c6261cda8 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_image_t *arg4,"
  , "  int16_t arg5,"
  , "  int16_t arg6,"
  , "  int16_t arg7,"
  , "  int16_t arg8,"
  , "  int16_t arg9,"
  , "  int16_t arg10,"
  , "  uint16_t arg11,"
  , "  uint16_t arg12"
  , ")"
  , "{"
  , "  return (pixman_compute_composite_region)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);"
  , "}"
  , "void hs_bindgen_f495205079327c13 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_image_t *arg4,"
  , "  int16_t arg5,"
  , "  int16_t arg6,"
  , "  int16_t arg7,"
  , "  int16_t arg8,"
  , "  int16_t arg9,"
  , "  int16_t arg10,"
  , "  uint16_t arg11,"
  , "  uint16_t arg12"
  , ")"
  , "{"
  , "  (pixman_image_composite)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);"
  , "}"
  , "void hs_bindgen_1d4d54c39e247d5c ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_image_t *arg4,"
  , "  int32_t arg5,"
  , "  int32_t arg6,"
  , "  int32_t arg7,"
  , "  int32_t arg8,"
  , "  int32_t arg9,"
  , "  int32_t arg10,"
  , "  int32_t arg11,"
  , "  int32_t arg12"
  , ")"
  , "{"
  , "  (pixman_image_composite32)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);"
  , "}"
  , "void hs_bindgen_fe1ca476d35858db ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_image_t *arg4,"
  , "  double arg5,"
  , "  double arg6,"
  , "  double arg7,"
  , "  double arg8,"
  , "  double arg9,"
  , "  double arg10,"
  , "  double arg11,"
  , "  double arg12"
  , ")"
  , "{"
  , "  (pixman_image_composite64f)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);"
  , "}"
  , "void hs_bindgen_e52e60fba09559b8 (void)"
  , "{"
  , "  (pixman_disable_out_of_bounds_workaround)();"
  , "}"
  , "pixman_glyph_cache_t *hs_bindgen_3cae46612658eaa6 (void)"
  , "{"
  , "  return (pixman_glyph_cache_create)();"
  , "}"
  , "void hs_bindgen_cfb0fdb93598c1bf ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_85c1a4a9d6bd0e9c ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_freeze)(arg1);"
  , "}"
  , "void hs_bindgen_f4f946a0ac687684 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_thaw)(arg1);"
  , "}"
  , "void const *hs_bindgen_b5b64e11e34ec9e1 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_lookup)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_3071a83790236258 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3,"
  , "  signed int arg4,"
  , "  signed int arg5,"
  , "  pixman_image_t *arg6"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_insert)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "void hs_bindgen_ece79085d67816b8 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_remove)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_eff6ccd3dc3c86b5 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  (pixman_glyph_get_extents)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_format_code_t hs_bindgen_d7fb618122cf6ef0 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_get_mask_format)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8e48ff00df92554a ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_format_code_t arg4,"
  , "  int32_t arg5,"
  , "  int32_t arg6,"
  , "  int32_t arg7,"
  , "  int32_t arg8,"
  , "  int32_t arg9,"
  , "  int32_t arg10,"
  , "  int32_t arg11,"
  , "  int32_t arg12,"
  , "  pixman_glyph_cache_t *arg13,"
  , "  signed int arg14,"
  , "  pixman_glyph_t const *arg15"
  , ")"
  , "{"
  , "  (pixman_composite_glyphs)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15);"
  , "}"
  , "void hs_bindgen_7bfe5f34f1cd2361 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5,"
  , "  int32_t arg6,"
  , "  int32_t arg7,"
  , "  pixman_glyph_cache_t *arg8,"
  , "  signed int arg9,"
  , "  pixman_glyph_t const *arg10"
  , ")"
  , "{"
  , "  (pixman_composite_glyphs_no_mask)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);"
  , "}"
  , "pixman_fixed_t hs_bindgen_9119dbe6c14f5549 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_ceil_y)(arg1, arg2);"
  , "}"
  , "pixman_fixed_t hs_bindgen_fa829951649898c8 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_floor_y)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_cd222e3abfbdd24f ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  (pixman_edge_step)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4b75dca2a7e9ec7c ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5,"
  , "  pixman_fixed_t arg6,"
  , "  pixman_fixed_t arg7"
  , ")"
  , "{"
  , "  (pixman_edge_init)(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "void hs_bindgen_11918d424f77b97c ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_line_fixed_t const *arg4,"
  , "  signed int arg5,"
  , "  signed int arg6"
  , ")"
  , "{"
  , "  (pixman_line_fixed_edge_init)(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "void hs_bindgen_ec55f6bbad99e05f ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  (pixman_rasterize_edges)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_af19c6acbcbcdf20 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_traps)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_89409f82f9915626 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_trapezoids)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_eefb370a07bc7603 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  (pixman_rasterize_trapezoid)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_522baca645879bac ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_format_code_t arg4,"
  , "  signed int arg5,"
  , "  signed int arg6,"
  , "  signed int arg7,"
  , "  signed int arg8,"
  , "  signed int arg9,"
  , "  pixman_trapezoid_t const *arg10"
  , ")"
  , "{"
  , "  (pixman_composite_trapezoids)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);"
  , "}"
  , "void hs_bindgen_e73572320611e5f7 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_image_t *arg3,"
  , "  pixman_format_code_t arg4,"
  , "  signed int arg5,"
  , "  signed int arg6,"
  , "  signed int arg7,"
  , "  signed int arg8,"
  , "  signed int arg9,"
  , "  pixman_triangle_t const *arg10"
  , ")"
  , "{"
  , "  (pixman_composite_triangles)(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);"
  , "}"
  , "void hs_bindgen_ebf14c03d5b9fc57 ("
  , "  pixman_image_t *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  signed int arg4,"
  , "  pixman_triangle_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_triangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  ]))

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_identity@
foreign import ccall safe "hs_bindgen_b0063d94f21a79d7" hs_bindgen_b0063d94f21a79d7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_identity@
hs_bindgen_b0063d94f21a79d7 ::
     RIP.Ptr Pixman_transform
  -> IO ()
hs_bindgen_b0063d94f21a79d7 =
  RIP.fromFFIType hs_bindgen_b0063d94f21a79d7_base

{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> IO ()
pixman_transform_init_identity =
  hs_bindgen_b0063d94f21a79d7

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_point_3d@
foreign import ccall safe "hs_bindgen_916eed0dbe556883" hs_bindgen_916eed0dbe556883_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_point_3d@
hs_bindgen_916eed0dbe556883 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_916eed0dbe556883 =
  RIP.fromFFIType hs_bindgen_916eed0dbe556883_base

{-| __C declaration:__ @pixman_transform_point_3d@

    __defined at:__ @pixman.h 191:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point_3d ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @transform@
  -> RIP.Ptr Pixman_vector
     -- ^ __C declaration:__ @vector@
  -> IO Pixman_bool_t
pixman_transform_point_3d =
  hs_bindgen_916eed0dbe556883

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_point@
foreign import ccall safe "hs_bindgen_96555bcb0c683cbf" hs_bindgen_96555bcb0c683cbf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_point@
hs_bindgen_96555bcb0c683cbf ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_96555bcb0c683cbf =
  RIP.fromFFIType hs_bindgen_96555bcb0c683cbf_base

{-| __C declaration:__ @pixman_transform_point@

    __defined at:__ @pixman.h 195:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @transform@
  -> RIP.Ptr Pixman_vector
     -- ^ __C declaration:__ @vector@
  -> IO Pixman_bool_t
pixman_transform_point = hs_bindgen_96555bcb0c683cbf

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_multiply@
foreign import ccall safe "hs_bindgen_75d62e3fec92f019" hs_bindgen_75d62e3fec92f019_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_multiply@
hs_bindgen_75d62e3fec92f019 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_75d62e3fec92f019 =
  RIP.fromFFIType hs_bindgen_75d62e3fec92f019_base

{-| __C declaration:__ @pixman_transform_multiply@

    __defined at:__ @pixman.h 199:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_multiply ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @dst@
  -> PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @l@
  -> PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @r@
  -> IO Pixman_bool_t
pixman_transform_multiply =
  hs_bindgen_75d62e3fec92f019

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_scale@
foreign import ccall safe "hs_bindgen_f0c3ddfcd7bbea1f" hs_bindgen_f0c3ddfcd7bbea1f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_scale@
hs_bindgen_f0c3ddfcd7bbea1f ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_f0c3ddfcd7bbea1f =
  RIP.fromFFIType hs_bindgen_f0c3ddfcd7bbea1f_base

{-| __C declaration:__ @pixman_transform_init_scale@

    __defined at:__ @pixman.h 204:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_scale ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @t@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @sx@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @sy@
  -> IO ()
pixman_transform_init_scale =
  hs_bindgen_f0c3ddfcd7bbea1f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_scale@
foreign import ccall safe "hs_bindgen_bb919d066ce5d54e" hs_bindgen_bb919d066ce5d54e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_scale@
hs_bindgen_bb919d066ce5d54e ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_bb919d066ce5d54e =
  RIP.fromFFIType hs_bindgen_bb919d066ce5d54e_base

{-| __C declaration:__ @pixman_transform_scale@

    __defined at:__ @pixman.h 209:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_scale ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @forward@
  -> RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @reverse@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @sx@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @sy@
  -> IO Pixman_bool_t
pixman_transform_scale = hs_bindgen_bb919d066ce5d54e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_rotate@
foreign import ccall safe "hs_bindgen_7f1a9f1380d631b6" hs_bindgen_7f1a9f1380d631b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_rotate@
hs_bindgen_7f1a9f1380d631b6 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_7f1a9f1380d631b6 =
  RIP.fromFFIType hs_bindgen_7f1a9f1380d631b6_base

{-| __C declaration:__ @pixman_transform_init_rotate@

    __defined at:__ @pixman.h 215:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_rotate ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @t@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @cos@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @sin@
  -> IO ()
pixman_transform_init_rotate =
  hs_bindgen_7f1a9f1380d631b6

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_rotate@
foreign import ccall safe "hs_bindgen_9faae79e90f553b3" hs_bindgen_9faae79e90f553b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_rotate@
hs_bindgen_9faae79e90f553b3 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_9faae79e90f553b3 =
  RIP.fromFFIType hs_bindgen_9faae79e90f553b3_base

{-| __C declaration:__ @pixman_transform_rotate@

    __defined at:__ @pixman.h 220:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_rotate ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @forward@
  -> RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @reverse@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @c@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @s@
  -> IO Pixman_bool_t
pixman_transform_rotate = hs_bindgen_9faae79e90f553b3

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_translate@
foreign import ccall safe "hs_bindgen_bba559913af7c1bb" hs_bindgen_bba559913af7c1bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_init_translate@
hs_bindgen_bba559913af7c1bb ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_bba559913af7c1bb =
  RIP.fromFFIType hs_bindgen_bba559913af7c1bb_base

{-| __C declaration:__ @pixman_transform_init_translate@

    __defined at:__ @pixman.h 226:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_translate ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @t@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @tx@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @ty@
  -> IO ()
pixman_transform_init_translate =
  hs_bindgen_bba559913af7c1bb

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_translate@
foreign import ccall safe "hs_bindgen_cb651ef78fe9895d" hs_bindgen_cb651ef78fe9895d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_translate@
hs_bindgen_cb651ef78fe9895d ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_cb651ef78fe9895d =
  RIP.fromFFIType hs_bindgen_cb651ef78fe9895d_base

{-| __C declaration:__ @pixman_transform_translate@

    __defined at:__ @pixman.h 231:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_translate ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @forward@
  -> RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @reverse@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @tx@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @ty@
  -> IO Pixman_bool_t
pixman_transform_translate =
  hs_bindgen_cb651ef78fe9895d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_bounds@
foreign import ccall safe "hs_bindgen_80d8c4679d2e3360" hs_bindgen_80d8c4679d2e3360_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_bounds@
hs_bindgen_80d8c4679d2e3360 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_80d8c4679d2e3360 =
  RIP.fromFFIType hs_bindgen_80d8c4679d2e3360_base

{-| __C declaration:__ @pixman_transform_bounds@

    __defined at:__ @pixman.h 237:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_bounds ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> RIP.Ptr Pixman_box16
     -- ^ __C declaration:__ @b@
  -> IO Pixman_bool_t
pixman_transform_bounds = hs_bindgen_80d8c4679d2e3360

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_invert@
foreign import ccall safe "hs_bindgen_32f2b7a8a64ced5c" hs_bindgen_32f2b7a8a64ced5c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_invert@
hs_bindgen_32f2b7a8a64ced5c ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_32f2b7a8a64ced5c =
  RIP.fromFFIType hs_bindgen_32f2b7a8a64ced5c_base

{-| __C declaration:__ @pixman_transform_invert@

    __defined at:__ @pixman.h 241:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_invert ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @dst@
  -> PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @src@
  -> IO Pixman_bool_t
pixman_transform_invert = hs_bindgen_32f2b7a8a64ced5c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_identity@
foreign import ccall safe "hs_bindgen_f4fa302f11f8fb7e" hs_bindgen_f4fa302f11f8fb7e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_identity@
hs_bindgen_f4fa302f11f8fb7e ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_f4fa302f11f8fb7e =
  RIP.fromFFIType hs_bindgen_f4fa302f11f8fb7e_base

{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_identity =
  hs_bindgen_f4fa302f11f8fb7e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_scale@
foreign import ccall safe "hs_bindgen_4eb8fdc35d810804" hs_bindgen_4eb8fdc35d810804_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_scale@
hs_bindgen_4eb8fdc35d810804 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_4eb8fdc35d810804 =
  RIP.fromFFIType hs_bindgen_4eb8fdc35d810804_base

{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_scale =
  hs_bindgen_4eb8fdc35d810804

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_int_translate@
foreign import ccall safe "hs_bindgen_5e34e729ffea635f" hs_bindgen_5e34e729ffea635f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_int_translate@
hs_bindgen_5e34e729ffea635f ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_5e34e729ffea635f =
  RIP.fromFFIType hs_bindgen_5e34e729ffea635f_base

{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_int_translate =
  hs_bindgen_5e34e729ffea635f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_inverse@
foreign import ccall safe "hs_bindgen_6c15d2abaf6c6b83" hs_bindgen_6c15d2abaf6c6b83_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_is_inverse@
hs_bindgen_6c15d2abaf6c6b83 ::
     PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_6c15d2abaf6c6b83 =
  RIP.fromFFIType hs_bindgen_6c15d2abaf6c6b83_base

{-| __C declaration:__ @pixman_transform_is_inverse@

    __defined at:__ @pixman.h 254:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_inverse ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @a@
  -> PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @b@
  -> IO Pixman_bool_t
pixman_transform_is_inverse =
  hs_bindgen_6c15d2abaf6c6b83

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_from_pixman_f_transform@
foreign import ccall safe "hs_bindgen_967ee4a2dd006109" hs_bindgen_967ee4a2dd006109_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_transform_from_pixman_f_transform@
hs_bindgen_967ee4a2dd006109 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_967ee4a2dd006109 =
  RIP.fromFFIType hs_bindgen_967ee4a2dd006109_base

{-| __C declaration:__ @pixman_transform_from_pixman_f_transform@

    __defined at:__ @pixman.h 275:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_from_pixman_f_transform ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @t@
  -> PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @ft@
  -> IO Pixman_bool_t
pixman_transform_from_pixman_f_transform =
  hs_bindgen_967ee4a2dd006109

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_from_pixman_transform@
foreign import ccall safe "hs_bindgen_c32e1dd014a3a92c" hs_bindgen_c32e1dd014a3a92c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_from_pixman_transform@
hs_bindgen_c32e1dd014a3a92c ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO ()
hs_bindgen_c32e1dd014a3a92c =
  RIP.fromFFIType hs_bindgen_c32e1dd014a3a92c_base

{-| __C declaration:__ @pixman_f_transform_from_pixman_transform@

    __defined at:__ @pixman.h 279:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_from_pixman_transform ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @ft@
  -> PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_from_pixman_transform =
  hs_bindgen_c32e1dd014a3a92c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_invert@
foreign import ccall safe "hs_bindgen_18b66d984e822be9" hs_bindgen_18b66d984e822be9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_invert@
hs_bindgen_18b66d984e822be9 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_18b66d984e822be9 =
  RIP.fromFFIType hs_bindgen_18b66d984e822be9_base

{-| __C declaration:__ @pixman_f_transform_invert@

    __defined at:__ @pixman.h 283:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_invert ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @dst@
  -> PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @src@
  -> IO Pixman_bool_t
pixman_f_transform_invert =
  hs_bindgen_18b66d984e822be9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_point@
foreign import ccall safe "hs_bindgen_b329aee9b92231ab" hs_bindgen_b329aee9b92231ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_point@
hs_bindgen_b329aee9b92231ab ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO Pixman_bool_t
hs_bindgen_b329aee9b92231ab =
  RIP.fromFFIType hs_bindgen_b329aee9b92231ab_base

{-| __C declaration:__ @pixman_f_transform_point@

    __defined at:__ @pixman.h 287:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point ::
     PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> RIP.Ptr Pixman_f_vector
     -- ^ __C declaration:__ @v@
  -> IO Pixman_bool_t
pixman_f_transform_point =
  hs_bindgen_b329aee9b92231ab

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_point_3d@
foreign import ccall safe "hs_bindgen_e61694cfba10d1b4" hs_bindgen_e61694cfba10d1b4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_point_3d@
hs_bindgen_e61694cfba10d1b4 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO ()
hs_bindgen_e61694cfba10d1b4 =
  RIP.fromFFIType hs_bindgen_e61694cfba10d1b4_base

{-| __C declaration:__ @pixman_f_transform_point_3d@

    __defined at:__ @pixman.h 291:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point_3d ::
     PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> RIP.Ptr Pixman_f_vector
     -- ^ __C declaration:__ @v@
  -> IO ()
pixman_f_transform_point_3d =
  hs_bindgen_e61694cfba10d1b4

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_multiply@
foreign import ccall safe "hs_bindgen_e9d83660134c8d38" hs_bindgen_e9d83660134c8d38_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_multiply@
hs_bindgen_e9d83660134c8d38 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO ()
hs_bindgen_e9d83660134c8d38 =
  RIP.fromFFIType hs_bindgen_e9d83660134c8d38_base

{-| __C declaration:__ @pixman_f_transform_multiply@

    __defined at:__ @pixman.h 295:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_multiply ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @dst@
  -> PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @l@
  -> PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @r@
  -> IO ()
pixman_f_transform_multiply =
  hs_bindgen_e9d83660134c8d38

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_scale@
foreign import ccall safe "hs_bindgen_c5e7b1063f60ca76" hs_bindgen_c5e7b1063f60ca76_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_scale@
hs_bindgen_c5e7b1063f60ca76 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_c5e7b1063f60ca76 =
  RIP.fromFFIType hs_bindgen_c5e7b1063f60ca76_base

{-| __C declaration:__ @pixman_f_transform_init_scale@

    __defined at:__ @pixman.h 300:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_scale ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> RIP.CDouble
     -- ^ __C declaration:__ @sx@
  -> RIP.CDouble
     -- ^ __C declaration:__ @sy@
  -> IO ()
pixman_f_transform_init_scale =
  hs_bindgen_c5e7b1063f60ca76

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_scale@
foreign import ccall safe "hs_bindgen_1aca4d44c50ba4cd" hs_bindgen_1aca4d44c50ba4cd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_scale@
hs_bindgen_1aca4d44c50ba4cd ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_1aca4d44c50ba4cd =
  RIP.fromFFIType hs_bindgen_1aca4d44c50ba4cd_base

{-| __C declaration:__ @pixman_f_transform_scale@

    __defined at:__ @pixman.h 305:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_scale ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @forward@
  -> RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @reverse@
  -> RIP.CDouble
     -- ^ __C declaration:__ @sx@
  -> RIP.CDouble
     -- ^ __C declaration:__ @sy@
  -> IO Pixman_bool_t
pixman_f_transform_scale =
  hs_bindgen_1aca4d44c50ba4cd

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_rotate@
foreign import ccall safe "hs_bindgen_9c2fa7120c44a2fb" hs_bindgen_9c2fa7120c44a2fb_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_rotate@
hs_bindgen_9c2fa7120c44a2fb ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_9c2fa7120c44a2fb =
  RIP.fromFFIType hs_bindgen_9c2fa7120c44a2fb_base

{-| __C declaration:__ @pixman_f_transform_init_rotate@

    __defined at:__ @pixman.h 311:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_rotate ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> RIP.CDouble
     -- ^ __C declaration:__ @cos@
  -> RIP.CDouble
     -- ^ __C declaration:__ @sin@
  -> IO ()
pixman_f_transform_init_rotate =
  hs_bindgen_9c2fa7120c44a2fb

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_rotate@
foreign import ccall safe "hs_bindgen_d872dcf8bb373381" hs_bindgen_d872dcf8bb373381_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_rotate@
hs_bindgen_d872dcf8bb373381 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_d872dcf8bb373381 =
  RIP.fromFFIType hs_bindgen_d872dcf8bb373381_base

{-| __C declaration:__ @pixman_f_transform_rotate@

    __defined at:__ @pixman.h 316:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_rotate ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @forward@
  -> RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @reverse@
  -> RIP.CDouble
     -- ^ __C declaration:__ @c@
  -> RIP.CDouble
     -- ^ __C declaration:__ @s@
  -> IO Pixman_bool_t
pixman_f_transform_rotate =
  hs_bindgen_d872dcf8bb373381

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_translate@
foreign import ccall safe "hs_bindgen_13d2c8a8cbc49e55" hs_bindgen_13d2c8a8cbc49e55_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_translate@
hs_bindgen_13d2c8a8cbc49e55 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_13d2c8a8cbc49e55 =
  RIP.fromFFIType hs_bindgen_13d2c8a8cbc49e55_base

{-| __C declaration:__ @pixman_f_transform_init_translate@

    __defined at:__ @pixman.h 322:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_translate ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> RIP.CDouble
     -- ^ __C declaration:__ @tx@
  -> RIP.CDouble
     -- ^ __C declaration:__ @ty@
  -> IO ()
pixman_f_transform_init_translate =
  hs_bindgen_13d2c8a8cbc49e55

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_translate@
foreign import ccall safe "hs_bindgen_8cc51ecaa634b6b3" hs_bindgen_8cc51ecaa634b6b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_translate@
hs_bindgen_8cc51ecaa634b6b3 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_8cc51ecaa634b6b3 =
  RIP.fromFFIType hs_bindgen_8cc51ecaa634b6b3_base

{-| __C declaration:__ @pixman_f_transform_translate@

    __defined at:__ @pixman.h 327:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_translate ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @forward@
  -> RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @reverse@
  -> RIP.CDouble
     -- ^ __C declaration:__ @tx@
  -> RIP.CDouble
     -- ^ __C declaration:__ @ty@
  -> IO Pixman_bool_t
pixman_f_transform_translate =
  hs_bindgen_8cc51ecaa634b6b3

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_bounds@
foreign import ccall safe "hs_bindgen_86cae815b835273f" hs_bindgen_86cae815b835273f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_bounds@
hs_bindgen_86cae815b835273f ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_86cae815b835273f =
  RIP.fromFFIType hs_bindgen_86cae815b835273f_base

{-| __C declaration:__ @pixman_f_transform_bounds@

    __defined at:__ @pixman.h 333:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_bounds ::
     PtrConst.PtrConst Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> RIP.Ptr Pixman_box16
     -- ^ __C declaration:__ @b@
  -> IO Pixman_bool_t
pixman_f_transform_bounds =
  hs_bindgen_86cae815b835273f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_identity@
foreign import ccall safe "hs_bindgen_f635509530a2953a" hs_bindgen_f635509530a2953a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_f_transform_init_identity@
hs_bindgen_f635509530a2953a ::
     RIP.Ptr Pixman_f_transform
  -> IO ()
hs_bindgen_f635509530a2953a =
  RIP.fromFFIType hs_bindgen_f635509530a2953a_base

{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_init_identity =
  hs_bindgen_f635509530a2953a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_set_static_pointers@
foreign import ccall safe "hs_bindgen_c841396366f67b35" hs_bindgen_c841396366f67b35_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_set_static_pointers@
hs_bindgen_c841396366f67b35 ::
     RIP.Ptr Pixman_box16_t
  -> RIP.Ptr Pixman_region16_data_t
  -> RIP.Ptr Pixman_region16_data_t
  -> IO ()
hs_bindgen_c841396366f67b35 =
  RIP.fromFFIType hs_bindgen_c841396366f67b35_base

{-| __C declaration:__ @pixman_region_set_static_pointers@

    __defined at:__ @pixman.h 496:6@

    __exported by:__ @pixman.h@
-}
pixman_region_set_static_pointers ::
     RIP.Ptr Pixman_box16_t
     -- ^ __C declaration:__ @empty_box@
  -> RIP.Ptr Pixman_region16_data_t
     -- ^ __C declaration:__ @empty_data@
  -> RIP.Ptr Pixman_region16_data_t
     -- ^ __C declaration:__ @broken_data@
  -> IO ()
pixman_region_set_static_pointers =
  hs_bindgen_c841396366f67b35

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init@
foreign import ccall safe "hs_bindgen_df93dd5911b36a39" hs_bindgen_df93dd5911b36a39_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init@
hs_bindgen_df93dd5911b36a39 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_df93dd5911b36a39 =
  RIP.fromFFIType hs_bindgen_df93dd5911b36a39_base

{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_init = hs_bindgen_df93dd5911b36a39

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_rect@
foreign import ccall safe "hs_bindgen_9f7c396063355ade" hs_bindgen_9f7c396063355ade_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_rect@
hs_bindgen_9f7c396063355ade ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_9f7c396063355ade =
  RIP.fromFFIType hs_bindgen_9f7c396063355ade_base

{-| __C declaration:__ @pixman_region_init_rect@

    __defined at:__ @pixman.h 505:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rect ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_region_init_rect = hs_bindgen_9f7c396063355ade

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_rects@
foreign import ccall safe "hs_bindgen_cf880971d9b8c885" hs_bindgen_cf880971d9b8c885_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_rects@
hs_bindgen_cf880971d9b8c885 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_cf880971d9b8c885 =
  RIP.fromFFIType hs_bindgen_cf880971d9b8c885_base

{-| __C declaration:__ @pixman_region_init_rects@

    __defined at:__ @pixman.h 512:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rects ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box16_t
     -- ^ __C declaration:__ @boxes@
  -> RIP.CInt
     -- ^ __C declaration:__ @count@
  -> IO Pixman_bool_t
pixman_region_init_rects =
  hs_bindgen_cf880971d9b8c885

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_with_extents@
foreign import ccall safe "hs_bindgen_cfcc8e8b67d0a119" hs_bindgen_cfcc8e8b67d0a119_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_with_extents@
hs_bindgen_cfcc8e8b67d0a119 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_cfcc8e8b67d0a119 =
  RIP.fromFFIType hs_bindgen_cfcc8e8b67d0a119_base

{-| __C declaration:__ @pixman_region_init_with_extents@

    __defined at:__ @pixman.h 517:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_with_extents ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box16_t
     -- ^ __C declaration:__ @extents@
  -> IO ()
pixman_region_init_with_extents =
  hs_bindgen_cfcc8e8b67d0a119

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_from_image@
foreign import ccall safe "hs_bindgen_b1b8bb04b0587bef" hs_bindgen_b1b8bb04b0587bef_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_init_from_image@
hs_bindgen_b1b8bb04b0587bef ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_b1b8bb04b0587bef =
  RIP.fromFFIType hs_bindgen_b1b8bb04b0587bef_base

{-| __C declaration:__ @pixman_region_init_from_image@

    __defined at:__ @pixman.h 521:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_from_image ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO ()
pixman_region_init_from_image =
  hs_bindgen_b1b8bb04b0587bef

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_fini@
foreign import ccall safe "hs_bindgen_ddbfdae767754a09" hs_bindgen_ddbfdae767754a09_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_fini@
hs_bindgen_ddbfdae767754a09 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_ddbfdae767754a09 =
  RIP.fromFFIType hs_bindgen_ddbfdae767754a09_base

{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_fini = hs_bindgen_ddbfdae767754a09

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_translate@
foreign import ccall safe "hs_bindgen_d7d406720818ebb7" hs_bindgen_d7d406720818ebb7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_translate@
hs_bindgen_d7d406720818ebb7 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_d7d406720818ebb7 =
  RIP.fromFFIType hs_bindgen_d7d406720818ebb7_base

{-| __C declaration:__ @pixman_region_translate@

    __defined at:__ @pixman.h 530:25@

    __exported by:__ @pixman.h@
-}
pixman_region_translate ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> IO ()
pixman_region_translate = hs_bindgen_d7d406720818ebb7

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_copy@
foreign import ccall safe "hs_bindgen_d6670c82d8328c78" hs_bindgen_d6670c82d8328c78_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_copy@
hs_bindgen_d6670c82d8328c78 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_d6670c82d8328c78 =
  RIP.fromFFIType hs_bindgen_d6670c82d8328c78_base

{-| __C declaration:__ @pixman_region_copy@

    __defined at:__ @pixman.h 535:25@

    __exported by:__ @pixman.h@
-}
pixman_region_copy ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @source@
  -> IO Pixman_bool_t
pixman_region_copy = hs_bindgen_d6670c82d8328c78

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_intersect@
foreign import ccall safe "hs_bindgen_b0ee46f12ed3b049" hs_bindgen_b0ee46f12ed3b049_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_intersect@
hs_bindgen_b0ee46f12ed3b049 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b0ee46f12ed3b049 =
  RIP.fromFFIType hs_bindgen_b0ee46f12ed3b049_base

{-| __C declaration:__ @pixman_region_intersect@

    __defined at:__ @pixman.h 539:25@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg2@
  -> IO Pixman_bool_t
pixman_region_intersect = hs_bindgen_b0ee46f12ed3b049

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_union@
foreign import ccall safe "hs_bindgen_39ff4beed71df1c4" hs_bindgen_39ff4beed71df1c4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_union@
hs_bindgen_39ff4beed71df1c4 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_39ff4beed71df1c4 =
  RIP.fromFFIType hs_bindgen_39ff4beed71df1c4_base

{-| __C declaration:__ @pixman_region_union@

    __defined at:__ @pixman.h 544:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg2@
  -> IO Pixman_bool_t
pixman_region_union = hs_bindgen_39ff4beed71df1c4

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_union_rect@
foreign import ccall safe "hs_bindgen_76660a1e3e0c630d" hs_bindgen_76660a1e3e0c630d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_union_rect@
hs_bindgen_76660a1e3e0c630d ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_76660a1e3e0c630d =
  RIP.fromFFIType hs_bindgen_76660a1e3e0c630d_base

{-| __C declaration:__ @pixman_region_union_rect@

    __defined at:__ @pixman.h 549:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union_rect ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @source@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region_union_rect =
  hs_bindgen_76660a1e3e0c630d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_intersect_rect@
foreign import ccall safe "hs_bindgen_b89dd21a6532d8a9" hs_bindgen_b89dd21a6532d8a9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_intersect_rect@
hs_bindgen_b89dd21a6532d8a9 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_b89dd21a6532d8a9 =
  RIP.fromFFIType hs_bindgen_b89dd21a6532d8a9_base

{-| __C declaration:__ @pixman_region_intersect_rect@

    __defined at:__ @pixman.h 557:16@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect_rect ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @source@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region_intersect_rect =
  hs_bindgen_b89dd21a6532d8a9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_subtract@
foreign import ccall safe "hs_bindgen_b0dd1d349f2da68c" hs_bindgen_b0dd1d349f2da68c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_subtract@
hs_bindgen_b0dd1d349f2da68c ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b0dd1d349f2da68c =
  RIP.fromFFIType hs_bindgen_b0dd1d349f2da68c_base

{-| __C declaration:__ @pixman_region_subtract@

    __defined at:__ @pixman.h 565:25@

    __exported by:__ @pixman.h@
-}
pixman_region_subtract ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @reg_d@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg_m@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg_s@
  -> IO Pixman_bool_t
pixman_region_subtract = hs_bindgen_b0dd1d349f2da68c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_inverse@
foreign import ccall safe "hs_bindgen_d6a9f74bdf1a218e" hs_bindgen_d6a9f74bdf1a218e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_inverse@
hs_bindgen_d6a9f74bdf1a218e ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_d6a9f74bdf1a218e =
  RIP.fromFFIType hs_bindgen_d6a9f74bdf1a218e_base

{-| __C declaration:__ @pixman_region_inverse@

    __defined at:__ @pixman.h 570:25@

    __exported by:__ @pixman.h@
-}
pixman_region_inverse ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_box16_t
     -- ^ __C declaration:__ @inv_rect@
  -> IO Pixman_bool_t
pixman_region_inverse = hs_bindgen_d6a9f74bdf1a218e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_contains_point@
foreign import ccall safe "hs_bindgen_3366b9e600a7a765" hs_bindgen_3366b9e600a7a765_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_contains_point@
hs_bindgen_3366b9e600a7a765 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_3366b9e600a7a765 =
  RIP.fromFFIType hs_bindgen_3366b9e600a7a765_base

{-| __C declaration:__ @pixman_region_contains_point@

    __defined at:__ @pixman.h 575:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_point ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.Ptr Pixman_box16_t
     -- ^ __C declaration:__ @box@
  -> IO Pixman_bool_t
pixman_region_contains_point =
  hs_bindgen_3366b9e600a7a765

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_contains_rectangle@
foreign import ccall safe "hs_bindgen_4557ba96357046c9" hs_bindgen_4557ba96357046c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_contains_rectangle@
hs_bindgen_4557ba96357046c9 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_region_overlap_t
hs_bindgen_4557ba96357046c9 =
  RIP.fromFFIType hs_bindgen_4557ba96357046c9_base

{-| __C declaration:__ @pixman_region_contains_rectangle@

    __defined at:__ @pixman.h 581:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_rectangle ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box16_t
     -- ^ __C declaration:__ @prect@
  -> IO Pixman_region_overlap_t
pixman_region_contains_rectangle =
  hs_bindgen_4557ba96357046c9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_empty@
foreign import ccall safe "hs_bindgen_f04b933e0b8b461e" hs_bindgen_f04b933e0b8b461e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_empty@
hs_bindgen_f04b933e0b8b461e ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_f04b933e0b8b461e =
  RIP.fromFFIType hs_bindgen_f04b933e0b8b461e_base

{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_empty = hs_bindgen_f04b933e0b8b461e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_not_empty@
foreign import ccall safe "hs_bindgen_c53aaa9140393262" hs_bindgen_c53aaa9140393262_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_not_empty@
hs_bindgen_c53aaa9140393262 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_c53aaa9140393262 =
  RIP.fromFFIType hs_bindgen_c53aaa9140393262_base

{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_not_empty = hs_bindgen_c53aaa9140393262

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_extents@
foreign import ccall safe "hs_bindgen_1ce0dd1f0cb56391" hs_bindgen_1ce0dd1f0cb56391_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_extents@
hs_bindgen_1ce0dd1f0cb56391 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_1ce0dd1f0cb56391 =
  RIP.fromFFIType hs_bindgen_1ce0dd1f0cb56391_base

{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_extents = hs_bindgen_1ce0dd1f0cb56391

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_n_rects@
foreign import ccall safe "hs_bindgen_60d0c501f56b2ae4" hs_bindgen_60d0c501f56b2ae4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_n_rects@
hs_bindgen_60d0c501f56b2ae4 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO RIP.CInt
hs_bindgen_60d0c501f56b2ae4 =
  RIP.fromFFIType hs_bindgen_60d0c501f56b2ae4_base

{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region_n_rects = hs_bindgen_60d0c501f56b2ae4

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_rectangles@
foreign import ccall safe "hs_bindgen_224eff8c74122673" hs_bindgen_224eff8c74122673_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_rectangles@
hs_bindgen_224eff8c74122673 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_224eff8c74122673 =
  RIP.fromFFIType hs_bindgen_224eff8c74122673_base

{-| __C declaration:__ @pixman_region_rectangles@

    __defined at:__ @pixman.h 597:25@

    __exported by:__ @pixman.h@
-}
pixman_region_rectangles ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr RIP.CInt
     -- ^ __C declaration:__ @n_rects@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_rectangles =
  hs_bindgen_224eff8c74122673

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_equal@
foreign import ccall safe "hs_bindgen_dee7fc680493edcf" hs_bindgen_dee7fc680493edcf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_equal@
hs_bindgen_dee7fc680493edcf ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_dee7fc680493edcf =
  RIP.fromFFIType hs_bindgen_dee7fc680493edcf_base

{-| __C declaration:__ @pixman_region_equal@

    __defined at:__ @pixman.h 601:25@

    __exported by:__ @pixman.h@
-}
pixman_region_equal ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region1@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region2@
  -> IO Pixman_bool_t
pixman_region_equal = hs_bindgen_dee7fc680493edcf

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_selfcheck@
foreign import ccall safe "hs_bindgen_87ad5531b382008d" hs_bindgen_87ad5531b382008d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_selfcheck@
hs_bindgen_87ad5531b382008d ::
     RIP.Ptr Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_87ad5531b382008d =
  RIP.fromFFIType hs_bindgen_87ad5531b382008d_base

{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_selfcheck = hs_bindgen_87ad5531b382008d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_reset@
foreign import ccall safe "hs_bindgen_94264697f3aaba50" hs_bindgen_94264697f3aaba50_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_reset@
hs_bindgen_94264697f3aaba50 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_94264697f3aaba50 =
  RIP.fromFFIType hs_bindgen_94264697f3aaba50_base

{-| __C declaration:__ @pixman_region_reset@

    __defined at:__ @pixman.h 608:25@

    __exported by:__ @pixman.h@
-}
pixman_region_reset ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box16_t
     -- ^ __C declaration:__ @box@
  -> IO ()
pixman_region_reset = hs_bindgen_94264697f3aaba50

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_clear@
foreign import ccall safe "hs_bindgen_d7dd541ade7e0b13" hs_bindgen_d7dd541ade7e0b13_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region_clear@
hs_bindgen_d7dd541ade7e0b13 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_d7dd541ade7e0b13 =
  RIP.fromFFIType hs_bindgen_d7dd541ade7e0b13_base

{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_clear = hs_bindgen_d7dd541ade7e0b13

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init@
foreign import ccall safe "hs_bindgen_42f704075be6bee9" hs_bindgen_42f704075be6bee9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init@
hs_bindgen_42f704075be6bee9 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_42f704075be6bee9 =
  RIP.fromFFIType hs_bindgen_42f704075be6bee9_base

{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_init = hs_bindgen_42f704075be6bee9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_rect@
foreign import ccall safe "hs_bindgen_7f7ea3f44e2743e5" hs_bindgen_7f7ea3f44e2743e5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_rect@
hs_bindgen_7f7ea3f44e2743e5 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_7f7ea3f44e2743e5 =
  RIP.fromFFIType hs_bindgen_7f7ea3f44e2743e5_base

{-| __C declaration:__ @pixman_region32_init_rect@

    __defined at:__ @pixman.h 649:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rect ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_region32_init_rect =
  hs_bindgen_7f7ea3f44e2743e5

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_rects@
foreign import ccall safe "hs_bindgen_545d398b59b3e13b" hs_bindgen_545d398b59b3e13b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_rects@
hs_bindgen_545d398b59b3e13b ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_545d398b59b3e13b =
  RIP.fromFFIType hs_bindgen_545d398b59b3e13b_base

{-| __C declaration:__ @pixman_region32_init_rects@

    __defined at:__ @pixman.h 656:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rects ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box32_t
     -- ^ __C declaration:__ @boxes@
  -> RIP.CInt
     -- ^ __C declaration:__ @count@
  -> IO Pixman_bool_t
pixman_region32_init_rects =
  hs_bindgen_545d398b59b3e13b

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_with_extents@
foreign import ccall safe "hs_bindgen_539fa501d19678fd" hs_bindgen_539fa501d19678fd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_with_extents@
hs_bindgen_539fa501d19678fd ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_539fa501d19678fd =
  RIP.fromFFIType hs_bindgen_539fa501d19678fd_base

{-| __C declaration:__ @pixman_region32_init_with_extents@

    __defined at:__ @pixman.h 661:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_with_extents ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box32_t
     -- ^ __C declaration:__ @extents@
  -> IO ()
pixman_region32_init_with_extents =
  hs_bindgen_539fa501d19678fd

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_from_image@
foreign import ccall safe "hs_bindgen_c7cdf8f9a3e78d98" hs_bindgen_c7cdf8f9a3e78d98_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_init_from_image@
hs_bindgen_c7cdf8f9a3e78d98 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_c7cdf8f9a3e78d98 =
  RIP.fromFFIType hs_bindgen_c7cdf8f9a3e78d98_base

{-| __C declaration:__ @pixman_region32_init_from_image@

    __defined at:__ @pixman.h 665:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_from_image ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO ()
pixman_region32_init_from_image =
  hs_bindgen_c7cdf8f9a3e78d98

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_fini@
foreign import ccall safe "hs_bindgen_2f34474764095737" hs_bindgen_2f34474764095737_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_fini@
hs_bindgen_2f34474764095737 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_2f34474764095737 =
  RIP.fromFFIType hs_bindgen_2f34474764095737_base

{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_fini = hs_bindgen_2f34474764095737

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_translate@
foreign import ccall safe "hs_bindgen_7645261bd07b4122" hs_bindgen_7645261bd07b4122_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_translate@
hs_bindgen_7645261bd07b4122 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_7645261bd07b4122 =
  RIP.fromFFIType hs_bindgen_7645261bd07b4122_base

{-| __C declaration:__ @pixman_region32_translate@

    __defined at:__ @pixman.h 674:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_translate ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> IO ()
pixman_region32_translate =
  hs_bindgen_7645261bd07b4122

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_copy@
foreign import ccall safe "hs_bindgen_4edc3f9d3ab091be" hs_bindgen_4edc3f9d3ab091be_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_copy@
hs_bindgen_4edc3f9d3ab091be ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_4edc3f9d3ab091be =
  RIP.fromFFIType hs_bindgen_4edc3f9d3ab091be_base

{-| __C declaration:__ @pixman_region32_copy@

    __defined at:__ @pixman.h 679:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_copy ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @source@
  -> IO Pixman_bool_t
pixman_region32_copy = hs_bindgen_4edc3f9d3ab091be

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_intersect@
foreign import ccall safe "hs_bindgen_e24b28ee6e73e2b1" hs_bindgen_e24b28ee6e73e2b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_intersect@
hs_bindgen_e24b28ee6e73e2b1 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_e24b28ee6e73e2b1 =
  RIP.fromFFIType hs_bindgen_e24b28ee6e73e2b1_base

{-| __C declaration:__ @pixman_region32_intersect@

    __defined at:__ @pixman.h 683:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg2@
  -> IO Pixman_bool_t
pixman_region32_intersect =
  hs_bindgen_e24b28ee6e73e2b1

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_union@
foreign import ccall safe "hs_bindgen_7e79ae2d804fb5c6" hs_bindgen_7e79ae2d804fb5c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_union@
hs_bindgen_7e79ae2d804fb5c6 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_7e79ae2d804fb5c6 =
  RIP.fromFFIType hs_bindgen_7e79ae2d804fb5c6_base

{-| __C declaration:__ @pixman_region32_union@

    __defined at:__ @pixman.h 688:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg2@
  -> IO Pixman_bool_t
pixman_region32_union = hs_bindgen_7e79ae2d804fb5c6

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_intersect_rect@
foreign import ccall safe "hs_bindgen_29552ed39fa30fbd" hs_bindgen_29552ed39fa30fbd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_intersect_rect@
hs_bindgen_29552ed39fa30fbd ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_29552ed39fa30fbd =
  RIP.fromFFIType hs_bindgen_29552ed39fa30fbd_base

{-| __C declaration:__ @pixman_region32_intersect_rect@

    __defined at:__ @pixman.h 693:16@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect_rect ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @source@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region32_intersect_rect =
  hs_bindgen_29552ed39fa30fbd

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_union_rect@
foreign import ccall safe "hs_bindgen_d5ef971c05f014c7" hs_bindgen_d5ef971c05f014c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_union_rect@
hs_bindgen_d5ef971c05f014c7 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_d5ef971c05f014c7 =
  RIP.fromFFIType hs_bindgen_d5ef971c05f014c7_base

{-| __C declaration:__ @pixman_region32_union_rect@

    __defined at:__ @pixman.h 701:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union_rect ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @source@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region32_union_rect =
  hs_bindgen_d5ef971c05f014c7

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_subtract@
foreign import ccall safe "hs_bindgen_e8575358da2e0b8a" hs_bindgen_e8575358da2e0b8a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_subtract@
hs_bindgen_e8575358da2e0b8a ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_e8575358da2e0b8a =
  RIP.fromFFIType hs_bindgen_e8575358da2e0b8a_base

{-| __C declaration:__ @pixman_region32_subtract@

    __defined at:__ @pixman.h 709:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_subtract ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @reg_d@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg_m@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg_s@
  -> IO Pixman_bool_t
pixman_region32_subtract =
  hs_bindgen_e8575358da2e0b8a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_inverse@
foreign import ccall safe "hs_bindgen_925f2a07800b666d" hs_bindgen_925f2a07800b666d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_inverse@
hs_bindgen_925f2a07800b666d ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_925f2a07800b666d =
  RIP.fromFFIType hs_bindgen_925f2a07800b666d_base

{-| __C declaration:__ @pixman_region32_inverse@

    __defined at:__ @pixman.h 714:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_inverse ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_box32_t
     -- ^ __C declaration:__ @inv_rect@
  -> IO Pixman_bool_t
pixman_region32_inverse = hs_bindgen_925f2a07800b666d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_contains_point@
foreign import ccall safe "hs_bindgen_450d8c7056ee5c6f" hs_bindgen_450d8c7056ee5c6f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_contains_point@
hs_bindgen_450d8c7056ee5c6f ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_450d8c7056ee5c6f =
  RIP.fromFFIType hs_bindgen_450d8c7056ee5c6f_base

{-| __C declaration:__ @pixman_region32_contains_point@

    __defined at:__ @pixman.h 719:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_point ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.Ptr Pixman_box32_t
     -- ^ __C declaration:__ @box@
  -> IO Pixman_bool_t
pixman_region32_contains_point =
  hs_bindgen_450d8c7056ee5c6f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_contains_rectangle@
foreign import ccall safe "hs_bindgen_726e797112f599db" hs_bindgen_726e797112f599db_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_contains_rectangle@
hs_bindgen_726e797112f599db ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_region_overlap_t
hs_bindgen_726e797112f599db =
  RIP.fromFFIType hs_bindgen_726e797112f599db_base

{-| __C declaration:__ @pixman_region32_contains_rectangle@

    __defined at:__ @pixman.h 725:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_rectangle ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box32_t
     -- ^ __C declaration:__ @prect@
  -> IO Pixman_region_overlap_t
pixman_region32_contains_rectangle =
  hs_bindgen_726e797112f599db

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_empty@
foreign import ccall safe "hs_bindgen_e681769ef0486f33" hs_bindgen_e681769ef0486f33_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_empty@
hs_bindgen_e681769ef0486f33 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_e681769ef0486f33 =
  RIP.fromFFIType hs_bindgen_e681769ef0486f33_base

{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_empty = hs_bindgen_e681769ef0486f33

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_not_empty@
foreign import ccall safe "hs_bindgen_92cf10eba34bfad0" hs_bindgen_92cf10eba34bfad0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_not_empty@
hs_bindgen_92cf10eba34bfad0 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_92cf10eba34bfad0 =
  RIP.fromFFIType hs_bindgen_92cf10eba34bfad0_base

{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_not_empty =
  hs_bindgen_92cf10eba34bfad0

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_extents@
foreign import ccall safe "hs_bindgen_3ec7d7efcdee7393" hs_bindgen_3ec7d7efcdee7393_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_extents@
hs_bindgen_3ec7d7efcdee7393 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_3ec7d7efcdee7393 =
  RIP.fromFFIType hs_bindgen_3ec7d7efcdee7393_base

{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_extents = hs_bindgen_3ec7d7efcdee7393

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_n_rects@
foreign import ccall safe "hs_bindgen_355ecdbec5cec96e" hs_bindgen_355ecdbec5cec96e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_n_rects@
hs_bindgen_355ecdbec5cec96e ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO RIP.CInt
hs_bindgen_355ecdbec5cec96e =
  RIP.fromFFIType hs_bindgen_355ecdbec5cec96e_base

{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region32_n_rects = hs_bindgen_355ecdbec5cec96e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_rectangles@
foreign import ccall safe "hs_bindgen_9634246aca44b3d7" hs_bindgen_9634246aca44b3d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_rectangles@
hs_bindgen_9634246aca44b3d7 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_9634246aca44b3d7 =
  RIP.fromFFIType hs_bindgen_9634246aca44b3d7_base

{-| __C declaration:__ @pixman_region32_rectangles@

    __defined at:__ @pixman.h 741:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_rectangles ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr RIP.CInt
     -- ^ __C declaration:__ @n_rects@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_rectangles =
  hs_bindgen_9634246aca44b3d7

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_equal@
foreign import ccall safe "hs_bindgen_79ff80abe138cb7e" hs_bindgen_79ff80abe138cb7e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_equal@
hs_bindgen_79ff80abe138cb7e ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_79ff80abe138cb7e =
  RIP.fromFFIType hs_bindgen_79ff80abe138cb7e_base

{-| __C declaration:__ @pixman_region32_equal@

    __defined at:__ @pixman.h 745:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_equal ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region1@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region2@
  -> IO Pixman_bool_t
pixman_region32_equal = hs_bindgen_79ff80abe138cb7e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_selfcheck@
foreign import ccall safe "hs_bindgen_90c6265c91ca172e" hs_bindgen_90c6265c91ca172e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_selfcheck@
hs_bindgen_90c6265c91ca172e ::
     RIP.Ptr Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_90c6265c91ca172e =
  RIP.fromFFIType hs_bindgen_90c6265c91ca172e_base

{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_selfcheck =
  hs_bindgen_90c6265c91ca172e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_reset@
foreign import ccall safe "hs_bindgen_1c92e9560d4620ba" hs_bindgen_1c92e9560d4620ba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_reset@
hs_bindgen_1c92e9560d4620ba ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_1c92e9560d4620ba =
  RIP.fromFFIType hs_bindgen_1c92e9560d4620ba_base

{-| __C declaration:__ @pixman_region32_reset@

    __defined at:__ @pixman.h 752:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_reset ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box32_t
     -- ^ __C declaration:__ @box@
  -> IO ()
pixman_region32_reset = hs_bindgen_1c92e9560d4620ba

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_clear@
foreign import ccall safe "hs_bindgen_ea37376838d44e57" hs_bindgen_ea37376838d44e57_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region32_clear@
hs_bindgen_ea37376838d44e57 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_ea37376838d44e57 =
  RIP.fromFFIType hs_bindgen_ea37376838d44e57_base

{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_clear = hs_bindgen_ea37376838d44e57

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init@
foreign import ccall safe "hs_bindgen_511f32b01f98254b" hs_bindgen_511f32b01f98254b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init@
hs_bindgen_511f32b01f98254b ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_511f32b01f98254b =
  RIP.fromFFIType hs_bindgen_511f32b01f98254b_base

{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_init = hs_bindgen_511f32b01f98254b

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_rect@
foreign import ccall safe "hs_bindgen_473a6dd8c61f1198" hs_bindgen_473a6dd8c61f1198_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_rect@
hs_bindgen_473a6dd8c61f1198 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_473a6dd8c61f1198 =
  RIP.fromFFIType hs_bindgen_473a6dd8c61f1198_base

{-| __C declaration:__ @pixman_region64f_init_rect@

    __defined at:__ @pixman.h 793:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rect ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_region64f_init_rect =
  hs_bindgen_473a6dd8c61f1198

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_rectf@
foreign import ccall safe "hs_bindgen_91c7d8b4fd83cb29" hs_bindgen_91c7d8b4fd83cb29_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_rectf@
hs_bindgen_91c7d8b4fd83cb29 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_91c7d8b4fd83cb29 =
  RIP.fromFFIType hs_bindgen_91c7d8b4fd83cb29_base

{-| __C declaration:__ @pixman_region64f_init_rectf@

    __defined at:__ @pixman.h 800:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rectf ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.CDouble
     -- ^ __C declaration:__ @x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @y@
  -> RIP.CDouble
     -- ^ __C declaration:__ @width@
  -> RIP.CDouble
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_region64f_init_rectf =
  hs_bindgen_91c7d8b4fd83cb29

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_rects@
foreign import ccall safe "hs_bindgen_07474ee617b630a0" hs_bindgen_07474ee617b630a0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_rects@
hs_bindgen_07474ee617b630a0 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_07474ee617b630a0 =
  RIP.fromFFIType hs_bindgen_07474ee617b630a0_base

{-| __C declaration:__ @pixman_region64f_init_rects@

    __defined at:__ @pixman.h 807:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rects ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box64f_t
     -- ^ __C declaration:__ @boxes@
  -> RIP.CInt
     -- ^ __C declaration:__ @count@
  -> IO Pixman_bool_t
pixman_region64f_init_rects =
  hs_bindgen_07474ee617b630a0

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_with_extents@
foreign import ccall safe "hs_bindgen_9e7a6e0ac55e5c64" hs_bindgen_9e7a6e0ac55e5c64_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_with_extents@
hs_bindgen_9e7a6e0ac55e5c64 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_9e7a6e0ac55e5c64 =
  RIP.fromFFIType hs_bindgen_9e7a6e0ac55e5c64_base

{-| __C declaration:__ @pixman_region64f_init_with_extents@

    __defined at:__ @pixman.h 812:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_with_extents ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box64f_t
     -- ^ __C declaration:__ @extents@
  -> IO ()
pixman_region64f_init_with_extents =
  hs_bindgen_9e7a6e0ac55e5c64

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_from_image@
foreign import ccall safe "hs_bindgen_3fb9fe5dcda81edb" hs_bindgen_3fb9fe5dcda81edb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_init_from_image@
hs_bindgen_3fb9fe5dcda81edb ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_3fb9fe5dcda81edb =
  RIP.fromFFIType hs_bindgen_3fb9fe5dcda81edb_base

{-| __C declaration:__ @pixman_region64f_init_from_image@

    __defined at:__ @pixman.h 816:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_from_image ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO ()
pixman_region64f_init_from_image =
  hs_bindgen_3fb9fe5dcda81edb

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_fini@
foreign import ccall safe "hs_bindgen_dd499b7108fbdb24" hs_bindgen_dd499b7108fbdb24_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_fini@
hs_bindgen_dd499b7108fbdb24 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_dd499b7108fbdb24 =
  RIP.fromFFIType hs_bindgen_dd499b7108fbdb24_base

{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_fini = hs_bindgen_dd499b7108fbdb24

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_translate@
foreign import ccall safe "hs_bindgen_216ccb6ff0ba0bc1" hs_bindgen_216ccb6ff0ba0bc1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_translate@
hs_bindgen_216ccb6ff0ba0bc1 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_216ccb6ff0ba0bc1 =
  RIP.fromFFIType hs_bindgen_216ccb6ff0ba0bc1_base

{-| __C declaration:__ @pixman_region64f_translate@

    __defined at:__ @pixman.h 825:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translate ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> IO ()
pixman_region64f_translate =
  hs_bindgen_216ccb6ff0ba0bc1

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_translatef@
foreign import ccall safe "hs_bindgen_62a1e3989bbc8fd6" hs_bindgen_62a1e3989bbc8fd6_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_translatef@
hs_bindgen_62a1e3989bbc8fd6 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_62a1e3989bbc8fd6 =
  RIP.fromFFIType hs_bindgen_62a1e3989bbc8fd6_base

{-| __C declaration:__ @pixman_region64f_translatef@

    __defined at:__ @pixman.h 830:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translatef ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.CDouble
     -- ^ __C declaration:__ @x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @y@
  -> IO ()
pixman_region64f_translatef =
  hs_bindgen_62a1e3989bbc8fd6

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_copy@
foreign import ccall safe "hs_bindgen_7569e10773b8258d" hs_bindgen_7569e10773b8258d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_copy@
hs_bindgen_7569e10773b8258d ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_7569e10773b8258d =
  RIP.fromFFIType hs_bindgen_7569e10773b8258d_base

{-| __C declaration:__ @pixman_region64f_copy@

    __defined at:__ @pixman.h 835:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_copy ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @source@
  -> IO Pixman_bool_t
pixman_region64f_copy = hs_bindgen_7569e10773b8258d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_intersect@
foreign import ccall safe "hs_bindgen_471c1e401df4037a" hs_bindgen_471c1e401df4037a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_intersect@
hs_bindgen_471c1e401df4037a ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_471c1e401df4037a =
  RIP.fromFFIType hs_bindgen_471c1e401df4037a_base

{-| __C declaration:__ @pixman_region64f_intersect@

    __defined at:__ @pixman.h 839:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg2@
  -> IO Pixman_bool_t
pixman_region64f_intersect =
  hs_bindgen_471c1e401df4037a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_union@
foreign import ccall safe "hs_bindgen_707002dbbd66abde" hs_bindgen_707002dbbd66abde_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_union@
hs_bindgen_707002dbbd66abde ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_707002dbbd66abde =
  RIP.fromFFIType hs_bindgen_707002dbbd66abde_base

{-| __C declaration:__ @pixman_region64f_union@

    __defined at:__ @pixman.h 844:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg2@
  -> IO Pixman_bool_t
pixman_region64f_union = hs_bindgen_707002dbbd66abde

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_intersect_rect@
foreign import ccall safe "hs_bindgen_d0a516d55a3616a5" hs_bindgen_d0a516d55a3616a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_intersect_rect@
hs_bindgen_d0a516d55a3616a5 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_d0a516d55a3616a5 =
  RIP.fromFFIType hs_bindgen_d0a516d55a3616a5_base

{-| __C declaration:__ @pixman_region64f_intersect_rect@

    __defined at:__ @pixman.h 849:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rect ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @source@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region64f_intersect_rect =
  hs_bindgen_d0a516d55a3616a5

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_intersect_rectf@
foreign import ccall safe "hs_bindgen_0385b0f738a73110" hs_bindgen_0385b0f738a73110_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_intersect_rectf@
hs_bindgen_0385b0f738a73110 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_0385b0f738a73110 =
  RIP.fromFFIType hs_bindgen_0385b0f738a73110_base

{-| __C declaration:__ @pixman_region64f_intersect_rectf@

    __defined at:__ @pixman.h 857:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rectf ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @source@
  -> RIP.CDouble
     -- ^ __C declaration:__ @x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @y@
  -> RIP.CDouble
     -- ^ __C declaration:__ @width@
  -> RIP.CDouble
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region64f_intersect_rectf =
  hs_bindgen_0385b0f738a73110

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_union_rect@
foreign import ccall safe "hs_bindgen_abbbb3f2cae556f5" hs_bindgen_abbbb3f2cae556f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_union_rect@
hs_bindgen_abbbb3f2cae556f5 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_abbbb3f2cae556f5 =
  RIP.fromFFIType hs_bindgen_abbbb3f2cae556f5_base

{-| __C declaration:__ @pixman_region64f_union_rect@

    __defined at:__ @pixman.h 865:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rect ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @source@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CUInt
     -- ^ __C declaration:__ @width@
  -> RIP.CUInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region64f_union_rect =
  hs_bindgen_abbbb3f2cae556f5

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_union_rectf@
foreign import ccall safe "hs_bindgen_34558706e8f3e848" hs_bindgen_34558706e8f3e848_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_union_rectf@
hs_bindgen_34558706e8f3e848 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_34558706e8f3e848 =
  RIP.fromFFIType hs_bindgen_34558706e8f3e848_base

{-| __C declaration:__ @pixman_region64f_union_rectf@

    __defined at:__ @pixman.h 873:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rectf ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @source@
  -> RIP.CDouble
     -- ^ __C declaration:__ @x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @y@
  -> RIP.CDouble
     -- ^ __C declaration:__ @width@
  -> RIP.CDouble
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_region64f_union_rectf =
  hs_bindgen_34558706e8f3e848

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_subtract@
foreign import ccall safe "hs_bindgen_2abf35c280fc641f" hs_bindgen_2abf35c280fc641f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_subtract@
hs_bindgen_2abf35c280fc641f ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_2abf35c280fc641f =
  RIP.fromFFIType hs_bindgen_2abf35c280fc641f_base

{-| __C declaration:__ @pixman_region64f_subtract@

    __defined at:__ @pixman.h 881:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_subtract ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @reg_d@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg_m@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg_s@
  -> IO Pixman_bool_t
pixman_region64f_subtract =
  hs_bindgen_2abf35c280fc641f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_inverse@
foreign import ccall safe "hs_bindgen_0cdcfc3a34dc2abf" hs_bindgen_0cdcfc3a34dc2abf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_inverse@
hs_bindgen_0cdcfc3a34dc2abf ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_0cdcfc3a34dc2abf =
  RIP.fromFFIType hs_bindgen_0cdcfc3a34dc2abf_base

{-| __C declaration:__ @pixman_region64f_inverse@

    __defined at:__ @pixman.h 886:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_inverse ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @new_reg@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @reg1@
  -> PtrConst.PtrConst Pixman_box64f_t
     -- ^ __C declaration:__ @inv_rect@
  -> IO Pixman_bool_t
pixman_region64f_inverse =
  hs_bindgen_0cdcfc3a34dc2abf

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_contains_point@
foreign import ccall safe "hs_bindgen_160d0aafb5712d10" hs_bindgen_160d0aafb5712d10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_contains_point@
hs_bindgen_160d0aafb5712d10 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_160d0aafb5712d10 =
  RIP.fromFFIType hs_bindgen_160d0aafb5712d10_base

{-| __C declaration:__ @pixman_region64f_contains_point@

    __defined at:__ @pixman.h 891:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_point ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.Ptr Pixman_box64f_t
     -- ^ __C declaration:__ @box@
  -> IO Pixman_bool_t
pixman_region64f_contains_point =
  hs_bindgen_160d0aafb5712d10

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_contains_pointf@
foreign import ccall safe "hs_bindgen_8795ca1f508d430a" hs_bindgen_8795ca1f508d430a_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_contains_pointf@
hs_bindgen_8795ca1f508d430a ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_8795ca1f508d430a =
  RIP.fromFFIType hs_bindgen_8795ca1f508d430a_base

{-| __C declaration:__ @pixman_region64f_contains_pointf@

    __defined at:__ @pixman.h 897:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_pointf ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.CDouble
     -- ^ __C declaration:__ @x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @y@
  -> RIP.Ptr Pixman_box64f_t
     -- ^ __C declaration:__ @box@
  -> IO Pixman_bool_t
pixman_region64f_contains_pointf =
  hs_bindgen_8795ca1f508d430a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_contains_rectangle@
foreign import ccall safe "hs_bindgen_a10c888100374bc7" hs_bindgen_a10c888100374bc7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_contains_rectangle@
hs_bindgen_a10c888100374bc7 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_region_overlap_t
hs_bindgen_a10c888100374bc7 =
  RIP.fromFFIType hs_bindgen_a10c888100374bc7_base

{-| __C declaration:__ @pixman_region64f_contains_rectangle@

    __defined at:__ @pixman.h 903:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_rectangle ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box64f_t
     -- ^ __C declaration:__ @prect@
  -> IO Pixman_region_overlap_t
pixman_region64f_contains_rectangle =
  hs_bindgen_a10c888100374bc7

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_empty@
foreign import ccall safe "hs_bindgen_cc4951087869baa9" hs_bindgen_cc4951087869baa9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_empty@
hs_bindgen_cc4951087869baa9 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_cc4951087869baa9 =
  RIP.fromFFIType hs_bindgen_cc4951087869baa9_base

{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_empty = hs_bindgen_cc4951087869baa9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_not_empty@
foreign import ccall safe "hs_bindgen_14abea2c162e2d17" hs_bindgen_14abea2c162e2d17_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_not_empty@
hs_bindgen_14abea2c162e2d17 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_14abea2c162e2d17 =
  RIP.fromFFIType hs_bindgen_14abea2c162e2d17_base

{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_not_empty =
  hs_bindgen_14abea2c162e2d17

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_extents@
foreign import ccall safe "hs_bindgen_f0ad09bdd91ed5bf" hs_bindgen_f0ad09bdd91ed5bf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_extents@
hs_bindgen_f0ad09bdd91ed5bf ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_f0ad09bdd91ed5bf =
  RIP.fromFFIType hs_bindgen_f0ad09bdd91ed5bf_base

{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_extents =
  hs_bindgen_f0ad09bdd91ed5bf

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_n_rects@
foreign import ccall safe "hs_bindgen_df7c94af72eb547d" hs_bindgen_df7c94af72eb547d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_n_rects@
hs_bindgen_df7c94af72eb547d ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO RIP.CInt
hs_bindgen_df7c94af72eb547d =
  RIP.fromFFIType hs_bindgen_df7c94af72eb547d_base

{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region64f_n_rects =
  hs_bindgen_df7c94af72eb547d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_rectangles@
foreign import ccall safe "hs_bindgen_b45df5f061f94f25" hs_bindgen_b45df5f061f94f25_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_rectangles@
hs_bindgen_b45df5f061f94f25 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_b45df5f061f94f25 =
  RIP.fromFFIType hs_bindgen_b45df5f061f94f25_base

{-| __C declaration:__ @pixman_region64f_rectangles@

    __defined at:__ @pixman.h 919:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_rectangles ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr RIP.CInt
     -- ^ __C declaration:__ @n_rects@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_rectangles =
  hs_bindgen_b45df5f061f94f25

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_equal@
foreign import ccall safe "hs_bindgen_79f49aaa48a9937d" hs_bindgen_79f49aaa48a9937d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_equal@
hs_bindgen_79f49aaa48a9937d ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_79f49aaa48a9937d =
  RIP.fromFFIType hs_bindgen_79f49aaa48a9937d_base

{-| __C declaration:__ @pixman_region64f_equal@

    __defined at:__ @pixman.h 923:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_equal ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region1@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region2@
  -> IO Pixman_bool_t
pixman_region64f_equal = hs_bindgen_79f49aaa48a9937d

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_selfcheck@
foreign import ccall safe "hs_bindgen_60c6459985ccdada" hs_bindgen_60c6459985ccdada_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_selfcheck@
hs_bindgen_60c6459985ccdada ::
     RIP.Ptr Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_60c6459985ccdada =
  RIP.fromFFIType hs_bindgen_60c6459985ccdada_base

{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_selfcheck =
  hs_bindgen_60c6459985ccdada

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_reset@
foreign import ccall safe "hs_bindgen_3de633b388a7f203" hs_bindgen_3de633b388a7f203_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_reset@
hs_bindgen_3de633b388a7f203 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_3de633b388a7f203 =
  RIP.fromFFIType hs_bindgen_3de633b388a7f203_base

{-| __C declaration:__ @pixman_region64f_reset@

    __defined at:__ @pixman.h 930:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_reset ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> PtrConst.PtrConst Pixman_box64f_t
     -- ^ __C declaration:__ @box@
  -> IO ()
pixman_region64f_reset = hs_bindgen_3de633b388a7f203

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_clear@
foreign import ccall safe "hs_bindgen_70ed9845c8d470aa" hs_bindgen_70ed9845c8d470aa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_region64f_clear@
hs_bindgen_70ed9845c8d470aa ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_70ed9845c8d470aa =
  RIP.fromFFIType hs_bindgen_70ed9845c8d470aa_base

{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_clear = hs_bindgen_70ed9845c8d470aa

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_blt@
foreign import ccall safe "hs_bindgen_79ca56e52f77ef5a" hs_bindgen_79ca56e52f77ef5a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_blt@
hs_bindgen_79ca56e52f77ef5a ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_79ca56e52f77ef5a =
  RIP.fromFFIType hs_bindgen_79ca56e52f77ef5a_base

{-| __C declaration:__ @pixman_blt@

    __defined at:__ @pixman.h 939:15@

    __exported by:__ @pixman.h@
-}
pixman_blt ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @src_bits@
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @dst_bits@
  -> RIP.CInt
     -- ^ __C declaration:__ @src_stride@
  -> RIP.CInt
     -- ^ __C declaration:__ @dst_stride@
  -> RIP.CInt
     -- ^ __C declaration:__ @src_bpp@
  -> RIP.CInt
     -- ^ __C declaration:__ @dst_bpp@
  -> RIP.CInt
     -- ^ __C declaration:__ @src_x@
  -> RIP.CInt
     -- ^ __C declaration:__ @src_y@
  -> RIP.CInt
     -- ^ __C declaration:__ @dest_x@
  -> RIP.CInt
     -- ^ __C declaration:__ @dest_y@
  -> RIP.CInt
     -- ^ __C declaration:__ @width@
  -> RIP.CInt
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_blt = hs_bindgen_79ca56e52f77ef5a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_fill@
foreign import ccall safe "hs_bindgen_8009826436b9f267" hs_bindgen_8009826436b9f267_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_fill@
hs_bindgen_8009826436b9f267 ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> HsBindgen.Runtime.LibC.Word32
  -> IO Pixman_bool_t
hs_bindgen_8009826436b9f267 =
  RIP.fromFFIType hs_bindgen_8009826436b9f267_base

{-| __C declaration:__ @pixman_fill@

    __defined at:__ @pixman.h 953:15@

    __exported by:__ @pixman.h@
-}
pixman_fill ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @bits@
  -> RIP.CInt
     -- ^ __C declaration:__ @stride@
  -> RIP.CInt
     -- ^ __C declaration:__ @bpp@
  -> RIP.CInt
     -- ^ __C declaration:__ @x@
  -> RIP.CInt
     -- ^ __C declaration:__ @y@
  -> RIP.CInt
     -- ^ __C declaration:__ @width@
  -> RIP.CInt
     -- ^ __C declaration:__ @height@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @_xor@
  -> IO Pixman_bool_t
pixman_fill = hs_bindgen_8009826436b9f267

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_version@
foreign import ccall safe "hs_bindgen_efed5d05252619b8" hs_bindgen_efed5d05252619b8_base ::
     IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_version@
hs_bindgen_efed5d05252619b8 :: IO RIP.CInt
hs_bindgen_efed5d05252619b8 =
  RIP.fromFFIType hs_bindgen_efed5d05252619b8_base

{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: IO RIP.CInt
pixman_version = hs_bindgen_efed5d05252619b8

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_version_string@
foreign import ccall safe "hs_bindgen_562f2409b174b947" hs_bindgen_562f2409b174b947_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_version_string@
hs_bindgen_562f2409b174b947 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_562f2409b174b947 =
  RIP.fromFFIType hs_bindgen_562f2409b174b947_base

{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: IO (PtrConst.PtrConst RIP.CChar)
pixman_version_string = hs_bindgen_562f2409b174b947

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_format_supported_destination@
foreign import ccall safe "hs_bindgen_2a48277514fbb740" hs_bindgen_2a48277514fbb740_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_format_supported_destination@
hs_bindgen_2a48277514fbb740 ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_2a48277514fbb740 =
  RIP.fromFFIType hs_bindgen_2a48277514fbb740_base

{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_destination =
  hs_bindgen_2a48277514fbb740

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_format_supported_source@
foreign import ccall safe "hs_bindgen_ca5ca447ed2443fc" hs_bindgen_ca5ca447ed2443fc_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_format_supported_source@
hs_bindgen_ca5ca447ed2443fc ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_ca5ca447ed2443fc =
  RIP.fromFFIType hs_bindgen_ca5ca447ed2443fc_base

{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_source =
  hs_bindgen_ca5ca447ed2443fc

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_solid_fill@
foreign import ccall safe "hs_bindgen_37fd3fe9c39f2286" hs_bindgen_37fd3fe9c39f2286_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_solid_fill@
hs_bindgen_37fd3fe9c39f2286 ::
     PtrConst.PtrConst Pixman_color_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_37fd3fe9c39f2286 =
  RIP.fromFFIType hs_bindgen_37fd3fe9c39f2286_base

{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill ::
     PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_solid_fill =
  hs_bindgen_37fd3fe9c39f2286

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_linear_gradient@
foreign import ccall safe "hs_bindgen_1673d00e31952500" hs_bindgen_1673d00e31952500_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_linear_gradient@
hs_bindgen_1673d00e31952500 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_1673d00e31952500 =
  RIP.fromFFIType hs_bindgen_1673d00e31952500_base

{-| __C declaration:__ @pixman_image_create_linear_gradient@

    __defined at:__ @pixman.h 1148:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_linear_gradient ::
     PtrConst.PtrConst Pixman_point_fixed_t
     -- ^ __C declaration:__ @p1@
  -> PtrConst.PtrConst Pixman_point_fixed_t
     -- ^ __C declaration:__ @p2@
  -> PtrConst.PtrConst Pixman_gradient_stop_t
     -- ^ __C declaration:__ @stops@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_stops@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_linear_gradient =
  hs_bindgen_1673d00e31952500

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_radial_gradient@
foreign import ccall safe "hs_bindgen_88f1ffcf28dbef6e" hs_bindgen_88f1ffcf28dbef6e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_radial_gradient@
hs_bindgen_88f1ffcf28dbef6e ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_88f1ffcf28dbef6e =
  RIP.fromFFIType hs_bindgen_88f1ffcf28dbef6e_base

{-| __C declaration:__ @pixman_image_create_radial_gradient@

    __defined at:__ @pixman.h 1154:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_radial_gradient ::
     PtrConst.PtrConst Pixman_point_fixed_t
     -- ^ __C declaration:__ @inner@
  -> PtrConst.PtrConst Pixman_point_fixed_t
     -- ^ __C declaration:__ @outer@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @inner_radius@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @outer_radius@
  -> PtrConst.PtrConst Pixman_gradient_stop_t
     -- ^ __C declaration:__ @stops@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_stops@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_radial_gradient =
  hs_bindgen_88f1ffcf28dbef6e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_conical_gradient@
foreign import ccall safe "hs_bindgen_f04c1587e8086024" hs_bindgen_f04c1587e8086024_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_conical_gradient@
hs_bindgen_f04c1587e8086024 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_f04c1587e8086024 =
  RIP.fromFFIType hs_bindgen_f04c1587e8086024_base

{-| __C declaration:__ @pixman_image_create_conical_gradient@

    __defined at:__ @pixman.h 1162:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_conical_gradient ::
     PtrConst.PtrConst Pixman_point_fixed_t
     -- ^ __C declaration:__ @center@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @angle@
  -> PtrConst.PtrConst Pixman_gradient_stop_t
     -- ^ __C declaration:__ @stops@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_stops@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_conical_gradient =
  hs_bindgen_f04c1587e8086024

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_bits@
foreign import ccall safe "hs_bindgen_c7091a8f108ccee9" hs_bindgen_c7091a8f108ccee9_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_bits@
hs_bindgen_c7091a8f108ccee9 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_c7091a8f108ccee9 =
  RIP.fromFFIType hs_bindgen_c7091a8f108ccee9_base

{-| __C declaration:__ @pixman_image_create_bits@

    __defined at:__ @pixman.h 1168:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> RIP.CInt
     -- ^ __C declaration:__ @width@
  -> RIP.CInt
     -- ^ __C declaration:__ @height@
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @bits@
  -> RIP.CInt
     -- ^ __C declaration:__ @rowstride_bytes@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_bits =
  hs_bindgen_c7091a8f108ccee9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_bits_no_clear@
foreign import ccall safe "hs_bindgen_2d7eb33bfa918a20" hs_bindgen_2d7eb33bfa918a20_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_create_bits_no_clear@
hs_bindgen_2d7eb33bfa918a20 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_2d7eb33bfa918a20 =
  RIP.fromFFIType hs_bindgen_2d7eb33bfa918a20_base

{-| __C declaration:__ @pixman_image_create_bits_no_clear@

    __defined at:__ @pixman.h 1175:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits_no_clear ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> RIP.CInt
     -- ^ __C declaration:__ @width@
  -> RIP.CInt
     -- ^ __C declaration:__ @height@
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @bits@
  -> RIP.CInt
     -- ^ __C declaration:__ @rowstride_bytes@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_bits_no_clear =
  hs_bindgen_2d7eb33bfa918a20

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_ref@
foreign import ccall safe "hs_bindgen_2a10505a62570b9a" hs_bindgen_2a10505a62570b9a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_ref@
hs_bindgen_2a10505a62570b9a ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_2a10505a62570b9a =
  RIP.fromFFIType hs_bindgen_2a10505a62570b9a_base

{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_ref = hs_bindgen_2a10505a62570b9a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_unref@
foreign import ccall safe "hs_bindgen_d073de95fa9d05fa" hs_bindgen_d073de95fa9d05fa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_unref@
hs_bindgen_d073de95fa9d05fa ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_d073de95fa9d05fa =
  RIP.fromFFIType hs_bindgen_d073de95fa9d05fa_base

{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_unref = hs_bindgen_d073de95fa9d05fa

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_destroy_function@
foreign import ccall safe "hs_bindgen_cdf2a943f558337a" hs_bindgen_cdf2a943f558337a_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_destroy_function@
hs_bindgen_cdf2a943f558337a ::
     RIP.Ptr Pixman_image_t
  -> Pixman_image_destroy_func_t
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cdf2a943f558337a =
  RIP.fromFFIType hs_bindgen_cdf2a943f558337a_base

{-| __C declaration:__ @pixman_image_set_destroy_function@

    __defined at:__ @pixman.h 1190:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_destroy_function ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_image_destroy_func_t
     -- ^ __C declaration:__ @function@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO ()
pixman_image_set_destroy_function =
  hs_bindgen_cdf2a943f558337a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_destroy_data@
foreign import ccall safe "hs_bindgen_70341b862091f90e" hs_bindgen_70341b862091f90e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_destroy_data@
hs_bindgen_70341b862091f90e ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_70341b862091f90e =
  RIP.fromFFIType hs_bindgen_70341b862091f90e_base

{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr RIP.Void)
pixman_image_get_destroy_data =
  hs_bindgen_70341b862091f90e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_clip_region@
foreign import ccall safe "hs_bindgen_2438e74935286b20" hs_bindgen_2438e74935286b20_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_clip_region@
hs_bindgen_2438e74935286b20 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_2438e74935286b20 =
  RIP.fromFFIType hs_bindgen_2438e74935286b20_base

{-| __C declaration:__ @pixman_image_set_clip_region@

    __defined at:__ @pixman.h 1199:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_image_set_clip_region =
  hs_bindgen_2438e74935286b20

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_clip_region32@
foreign import ccall safe "hs_bindgen_5f36d4fca8052355" hs_bindgen_5f36d4fca8052355_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_clip_region32@
hs_bindgen_5f36d4fca8052355 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_5f36d4fca8052355 =
  RIP.fromFFIType hs_bindgen_5f36d4fca8052355_base

{-| __C declaration:__ @pixman_image_set_clip_region32@

    __defined at:__ @pixman.h 1203:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region32 ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_image_set_clip_region32 =
  hs_bindgen_5f36d4fca8052355

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_clip_region64f@
foreign import ccall safe "hs_bindgen_66fbc630e61bbc2a" hs_bindgen_66fbc630e61bbc2a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_clip_region64f@
hs_bindgen_66fbc630e61bbc2a ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_66fbc630e61bbc2a =
  RIP.fromFFIType hs_bindgen_66fbc630e61bbc2a_base

{-| __C declaration:__ @pixman_image_set_clip_region64f@

    __defined at:__ @pixman.h 1207:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region64f ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_image_set_clip_region64f =
  hs_bindgen_66fbc630e61bbc2a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_has_client_clip@
foreign import ccall safe "hs_bindgen_7c9f2d0566f6d73a" hs_bindgen_7c9f2d0566f6d73a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_has_client_clip@
hs_bindgen_7c9f2d0566f6d73a ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_7c9f2d0566f6d73a =
  RIP.fromFFIType hs_bindgen_7c9f2d0566f6d73a_base

{-| __C declaration:__ @pixman_image_set_has_client_clip@

    __defined at:__ @pixman.h 1211:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_has_client_clip ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_bool_t
     -- ^ __C declaration:__ @clien_clip@
  -> IO ()
pixman_image_set_has_client_clip =
  hs_bindgen_7c9f2d0566f6d73a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_transform@
foreign import ccall safe "hs_bindgen_8580eabb0c139f70" hs_bindgen_8580eabb0c139f70_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_transform@
hs_bindgen_8580eabb0c139f70 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_transform_t
  -> IO Pixman_bool_t
hs_bindgen_8580eabb0c139f70 =
  RIP.fromFFIType hs_bindgen_8580eabb0c139f70_base

{-| __C declaration:__ @pixman_image_set_transform@

    __defined at:__ @pixman.h 1215:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_transform ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_transform_t
     -- ^ __C declaration:__ @transform@
  -> IO Pixman_bool_t
pixman_image_set_transform =
  hs_bindgen_8580eabb0c139f70

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_repeat@
foreign import ccall safe "hs_bindgen_036238ae3333c5b0" hs_bindgen_036238ae3333c5b0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_repeat@
hs_bindgen_036238ae3333c5b0 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_repeat_t
  -> IO ()
hs_bindgen_036238ae3333c5b0 =
  RIP.fromFFIType hs_bindgen_036238ae3333c5b0_base

{-| __C declaration:__ @pixman_image_set_repeat@

    __defined at:__ @pixman.h 1219:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_repeat ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_repeat_t
     -- ^ __C declaration:__ @repeat@
  -> IO ()
pixman_image_set_repeat = hs_bindgen_036238ae3333c5b0

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_dither@
foreign import ccall safe "hs_bindgen_a7f5e4370c7a3378" hs_bindgen_a7f5e4370c7a3378_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_dither@
hs_bindgen_a7f5e4370c7a3378 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_dither_t
  -> IO ()
hs_bindgen_a7f5e4370c7a3378 =
  RIP.fromFFIType hs_bindgen_a7f5e4370c7a3378_base

{-| __C declaration:__ @pixman_image_set_dither@

    __defined at:__ @pixman.h 1223:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_dither_t
     -- ^ __C declaration:__ @dither@
  -> IO ()
pixman_image_set_dither = hs_bindgen_a7f5e4370c7a3378

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_dither_offset@
foreign import ccall safe "hs_bindgen_26320f45b0f254d5" hs_bindgen_26320f45b0f254d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_dither_offset@
hs_bindgen_26320f45b0f254d5 ::
     RIP.Ptr Pixman_image_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_26320f45b0f254d5 =
  RIP.fromFFIType hs_bindgen_26320f45b0f254d5_base

{-| __C declaration:__ @pixman_image_set_dither_offset@

    __defined at:__ @pixman.h 1227:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither_offset ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> RIP.CInt
     -- ^ __C declaration:__ @offset_x@
  -> RIP.CInt
     -- ^ __C declaration:__ @offset_y@
  -> IO ()
pixman_image_set_dither_offset =
  hs_bindgen_26320f45b0f254d5

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_filter@
foreign import ccall safe "hs_bindgen_703b53566075fe62" hs_bindgen_703b53566075fe62_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_filter@
hs_bindgen_703b53566075fe62 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_filter_t
  -> PtrConst.PtrConst Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_703b53566075fe62 =
  RIP.fromFFIType hs_bindgen_703b53566075fe62_base

{-| __C declaration:__ @pixman_image_set_filter@

    __defined at:__ @pixman.h 1232:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_filter ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_filter_t
     -- ^ __C declaration:__ @filter@
  -> PtrConst.PtrConst Pixman_fixed_t
     -- ^ __C declaration:__ @filter_params@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_filter_params@
  -> IO Pixman_bool_t
pixman_image_set_filter = hs_bindgen_703b53566075fe62

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_source_clipping@
foreign import ccall safe "hs_bindgen_c1acb4c511bb6b8b" hs_bindgen_c1acb4c511bb6b8b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_source_clipping@
hs_bindgen_c1acb4c511bb6b8b ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_c1acb4c511bb6b8b =
  RIP.fromFFIType hs_bindgen_c1acb4c511bb6b8b_base

{-| __C declaration:__ @pixman_image_set_source_clipping@

    __defined at:__ @pixman.h 1238:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_source_clipping ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_bool_t
     -- ^ __C declaration:__ @source_clipping@
  -> IO ()
pixman_image_set_source_clipping =
  hs_bindgen_c1acb4c511bb6b8b

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_alpha_map@
foreign import ccall safe "hs_bindgen_0bff0e5cbd12853e" hs_bindgen_0bff0e5cbd12853e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_alpha_map@
hs_bindgen_0bff0e5cbd12853e ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> IO ()
hs_bindgen_0bff0e5cbd12853e =
  RIP.fromFFIType hs_bindgen_0bff0e5cbd12853e_base

{-| __C declaration:__ @pixman_image_set_alpha_map@

    __defined at:__ @pixman.h 1242:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_alpha_map ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @alpha_map@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @y@
  -> IO ()
pixman_image_set_alpha_map =
  hs_bindgen_0bff0e5cbd12853e

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_component_alpha@
foreign import ccall safe "hs_bindgen_97107daa80824765" hs_bindgen_97107daa80824765_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_component_alpha@
hs_bindgen_97107daa80824765 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_97107daa80824765 =
  RIP.fromFFIType hs_bindgen_97107daa80824765_base

{-| __C declaration:__ @pixman_image_set_component_alpha@

    __defined at:__ @pixman.h 1248:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_bool_t
     -- ^ __C declaration:__ @component_alpha@
  -> IO ()
pixman_image_set_component_alpha =
  hs_bindgen_97107daa80824765

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_component_alpha@
foreign import ccall safe "hs_bindgen_83f505afe102e361" hs_bindgen_83f505afe102e361_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_component_alpha@
hs_bindgen_83f505afe102e361 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_83f505afe102e361 =
  RIP.fromFFIType hs_bindgen_83f505afe102e361_base

{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_get_component_alpha =
  hs_bindgen_83f505afe102e361

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_accessors@
foreign import ccall safe "hs_bindgen_04b5993b91e58750" hs_bindgen_04b5993b91e58750_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_accessors@
hs_bindgen_04b5993b91e58750 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_read_memory_func_t
  -> Pixman_write_memory_func_t
  -> IO ()
hs_bindgen_04b5993b91e58750 =
  RIP.fromFFIType hs_bindgen_04b5993b91e58750_base

{-| __C declaration:__ @pixman_image_set_accessors@

    __defined at:__ @pixman.h 1255:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_accessors ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> Pixman_read_memory_func_t
     -- ^ __C declaration:__ @read_func@
  -> Pixman_write_memory_func_t
     -- ^ __C declaration:__ @write_func@
  -> IO ()
pixman_image_set_accessors =
  hs_bindgen_04b5993b91e58750

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_indexed@
foreign import ccall safe "hs_bindgen_797b4a00cc1515c9" hs_bindgen_797b4a00cc1515c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_set_indexed@
hs_bindgen_797b4a00cc1515c9 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_indexed_t
  -> IO ()
hs_bindgen_797b4a00cc1515c9 =
  RIP.fromFFIType hs_bindgen_797b4a00cc1515c9_base

{-| __C declaration:__ @pixman_image_set_indexed@

    __defined at:__ @pixman.h 1260:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_indexed ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_indexed_t
     -- ^ __C declaration:__ @indexed@
  -> IO ()
pixman_image_set_indexed =
  hs_bindgen_797b4a00cc1515c9

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_data@
foreign import ccall safe "hs_bindgen_0122e9c74bc8cc5f" hs_bindgen_0122e9c74bc8cc5f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_data@
hs_bindgen_0122e9c74bc8cc5f ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
hs_bindgen_0122e9c74bc8cc5f =
  RIP.fromFFIType hs_bindgen_0122e9c74bc8cc5f_base

{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
pixman_image_get_data = hs_bindgen_0122e9c74bc8cc5f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_width@
foreign import ccall safe "hs_bindgen_f7100d70ff323678" hs_bindgen_f7100d70ff323678_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_width@
hs_bindgen_f7100d70ff323678 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_f7100d70ff323678 =
  RIP.fromFFIType hs_bindgen_f7100d70ff323678_base

{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_width = hs_bindgen_f7100d70ff323678

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_height@
foreign import ccall safe "hs_bindgen_8b2e53e1b1362bcd" hs_bindgen_8b2e53e1b1362bcd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_height@
hs_bindgen_8b2e53e1b1362bcd ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_8b2e53e1b1362bcd =
  RIP.fromFFIType hs_bindgen_8b2e53e1b1362bcd_base

{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_height = hs_bindgen_8b2e53e1b1362bcd

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_stride@
foreign import ccall safe "hs_bindgen_afdc3350400b4990" hs_bindgen_afdc3350400b4990_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_stride@
hs_bindgen_afdc3350400b4990 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_afdc3350400b4990 =
  RIP.fromFFIType hs_bindgen_afdc3350400b4990_base

{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_stride = hs_bindgen_afdc3350400b4990

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_depth@
foreign import ccall safe "hs_bindgen_1c48d581e765a140" hs_bindgen_1c48d581e765a140_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_depth@
hs_bindgen_1c48d581e765a140 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_1c48d581e765a140 =
  RIP.fromFFIType hs_bindgen_1c48d581e765a140_base

{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_depth = hs_bindgen_1c48d581e765a140

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_format@
foreign import ccall safe "hs_bindgen_3e7d20be0f67a7ad" hs_bindgen_3e7d20be0f67a7ad_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_get_format@
hs_bindgen_3e7d20be0f67a7ad ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_format_code_t
hs_bindgen_3e7d20be0f67a7ad =
  RIP.fromFFIType hs_bindgen_3e7d20be0f67a7ad_base

{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_format_code_t
pixman_image_get_format = hs_bindgen_3e7d20be0f67a7ad

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_filter_create_separable_convolution@
foreign import ccall safe "hs_bindgen_0e136ade51383926" hs_bindgen_0e136ade51383926_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_filter_create_separable_convolution@
hs_bindgen_0e136ade51383926 ::
     RIP.Ptr RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_kernel_t
  -> Pixman_kernel_t
  -> Pixman_kernel_t
  -> Pixman_kernel_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_fixed_t)
hs_bindgen_0e136ade51383926 =
  RIP.fromFFIType hs_bindgen_0e136ade51383926_base

{-| __C declaration:__ @pixman_filter_create_separable_convolution@

    __defined at:__ @pixman.h 1298:1@

    __exported by:__ @pixman.h@
-}
pixman_filter_create_separable_convolution ::
     RIP.Ptr RIP.CInt
     -- ^ __C declaration:__ @n_values@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @scale_x@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @scale_y@
  -> Pixman_kernel_t
     -- ^ __C declaration:__ @reconstruct_x@
  -> Pixman_kernel_t
     -- ^ __C declaration:__ @reconstruct_y@
  -> Pixman_kernel_t
     -- ^ __C declaration:__ @sample_x@
  -> Pixman_kernel_t
     -- ^ __C declaration:__ @sample_y@
  -> RIP.CInt
     -- ^ __C declaration:__ @subsample_bits_x@
  -> RIP.CInt
     -- ^ __C declaration:__ @subsample_bits_y@
  -> IO (RIP.Ptr Pixman_fixed_t)
pixman_filter_create_separable_convolution =
  hs_bindgen_0e136ade51383926

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_fill_rectangles@
foreign import ccall safe "hs_bindgen_1402a265caaeb03c" hs_bindgen_1402a265caaeb03c_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_fill_rectangles@
hs_bindgen_1402a265caaeb03c ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_rectangle16_t
  -> IO Pixman_bool_t
hs_bindgen_1402a265caaeb03c =
  RIP.fromFFIType hs_bindgen_1402a265caaeb03c_base

{-| __C declaration:__ @pixman_image_fill_rectangles@

    __defined at:__ @pixman.h 1310:15@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_rectangles ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_rects@
  -> PtrConst.PtrConst Pixman_rectangle16_t
     -- ^ __C declaration:__ @rects@
  -> IO Pixman_bool_t
pixman_image_fill_rectangles =
  hs_bindgen_1402a265caaeb03c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_fill_boxes@
foreign import ccall safe "hs_bindgen_9a2460070c412f68" hs_bindgen_9a2460070c412f68_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_fill_boxes@
hs_bindgen_9a2460070c412f68 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_9a2460070c412f68 =
  RIP.fromFFIType hs_bindgen_9a2460070c412f68_base

{-| __C declaration:__ @pixman_image_fill_boxes@

    __defined at:__ @pixman.h 1317:17@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_boxes ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest@
  -> PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_boxes@
  -> PtrConst.PtrConst Pixman_box32_t
     -- ^ __C declaration:__ @boxes@
  -> IO Pixman_bool_t
pixman_image_fill_boxes = hs_bindgen_9a2460070c412f68

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_compute_composite_region@
foreign import ccall safe "hs_bindgen_dd96d81c6261cda8" hs_bindgen_dd96d81c6261cda8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Word16
  -> RIP.Word16
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_compute_composite_region@
hs_bindgen_dd96d81c6261cda8 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Word16
  -> HsBindgen.Runtime.LibC.Word16
  -> IO Pixman_bool_t
hs_bindgen_dd96d81c6261cda8 =
  RIP.fromFFIType hs_bindgen_dd96d81c6261cda8_base

{-| __C declaration:__ @pixman_compute_composite_region@

    __defined at:__ @pixman.h 1325:15@

    __exported by:__ @pixman.h@
-}
pixman_compute_composite_region ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src_image@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @mask_image@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest_image@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @src_x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @src_y@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @mask_x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @mask_y@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @dest_x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @dest_y@
  -> HsBindgen.Runtime.LibC.Word16
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Word16
     -- ^ __C declaration:__ @height@
  -> IO Pixman_bool_t
pixman_compute_composite_region =
  hs_bindgen_dd96d81c6261cda8

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_composite@
foreign import ccall safe "hs_bindgen_f495205079327c13" hs_bindgen_f495205079327c13_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Word16
  -> RIP.Word16
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_composite@
hs_bindgen_f495205079327c13 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Word16
  -> HsBindgen.Runtime.LibC.Word16
  -> IO ()
hs_bindgen_f495205079327c13 =
  RIP.fromFFIType hs_bindgen_f495205079327c13_base

{-| __C declaration:__ @pixman_image_composite@

    __defined at:__ @pixman.h 1339:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @mask@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @src_x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @src_y@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @mask_x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @mask_y@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @dest_x@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @dest_y@
  -> HsBindgen.Runtime.LibC.Word16
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Word16
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_image_composite = hs_bindgen_f495205079327c13

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_composite32@
foreign import ccall safe "hs_bindgen_1d4d54c39e247d5c" hs_bindgen_1d4d54c39e247d5c_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_composite32@
hs_bindgen_1d4d54c39e247d5c ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_1d4d54c39e247d5c =
  RIP.fromFFIType hs_bindgen_1d4d54c39e247d5c_base

{-| __C declaration:__ @pixman_image_composite32@

    __defined at:__ @pixman.h 1353:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite32 ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @mask@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @src_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @src_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @mask_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @mask_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @dest_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @dest_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_image_composite32 =
  hs_bindgen_1d4d54c39e247d5c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_composite64f@
foreign import ccall safe "hs_bindgen_fe1ca476d35858db" hs_bindgen_fe1ca476d35858db_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_image_composite64f@
hs_bindgen_fe1ca476d35858db ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_fe1ca476d35858db =
  RIP.fromFFIType hs_bindgen_fe1ca476d35858db_base

{-| __C declaration:__ @pixman_image_composite64f@

    __defined at:__ @pixman.h 1367:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite64f ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @mask@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest@
  -> RIP.CDouble
     -- ^ __C declaration:__ @src_x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @src_y@
  -> RIP.CDouble
     -- ^ __C declaration:__ @mask_x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @mask_y@
  -> RIP.CDouble
     -- ^ __C declaration:__ @dest_x@
  -> RIP.CDouble
     -- ^ __C declaration:__ @dest_y@
  -> RIP.CDouble
     -- ^ __C declaration:__ @width@
  -> RIP.CDouble
     -- ^ __C declaration:__ @height@
  -> IO ()
pixman_image_composite64f =
  hs_bindgen_fe1ca476d35858db

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_disable_out_of_bounds_workaround@
foreign import ccall safe "hs_bindgen_e52e60fba09559b8" hs_bindgen_e52e60fba09559b8_base ::
     IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_disable_out_of_bounds_workaround@
hs_bindgen_e52e60fba09559b8 :: IO ()
hs_bindgen_e52e60fba09559b8 =
  RIP.fromFFIType hs_bindgen_e52e60fba09559b8_base

{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: IO ()
pixman_disable_out_of_bounds_workaround =
  hs_bindgen_e52e60fba09559b8

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_create@
foreign import ccall safe "hs_bindgen_3cae46612658eaa6" hs_bindgen_3cae46612658eaa6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_create@
hs_bindgen_3cae46612658eaa6 :: IO (RIP.Ptr Pixman_glyph_cache_t)
hs_bindgen_3cae46612658eaa6 =
  RIP.fromFFIType hs_bindgen_3cae46612658eaa6_base

{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: IO (RIP.Ptr Pixman_glyph_cache_t)
pixman_glyph_cache_create =
  hs_bindgen_3cae46612658eaa6

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_destroy@
foreign import ccall safe "hs_bindgen_cfb0fdb93598c1bf" hs_bindgen_cfb0fdb93598c1bf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_destroy@
hs_bindgen_cfb0fdb93598c1bf ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_cfb0fdb93598c1bf =
  RIP.fromFFIType hs_bindgen_cfb0fdb93598c1bf_base

{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_destroy =
  hs_bindgen_cfb0fdb93598c1bf

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_freeze@
foreign import ccall safe "hs_bindgen_85c1a4a9d6bd0e9c" hs_bindgen_85c1a4a9d6bd0e9c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_freeze@
hs_bindgen_85c1a4a9d6bd0e9c ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_85c1a4a9d6bd0e9c =
  RIP.fromFFIType hs_bindgen_85c1a4a9d6bd0e9c_base

{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_freeze =
  hs_bindgen_85c1a4a9d6bd0e9c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_thaw@
foreign import ccall safe "hs_bindgen_f4f946a0ac687684" hs_bindgen_f4f946a0ac687684_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_thaw@
hs_bindgen_f4f946a0ac687684 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_f4f946a0ac687684 =
  RIP.fromFFIType hs_bindgen_f4f946a0ac687684_base

{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_thaw = hs_bindgen_f4f946a0ac687684

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_lookup@
foreign import ccall safe "hs_bindgen_b5b64e11e34ec9e1" hs_bindgen_b5b64e11e34ec9e1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_lookup@
hs_bindgen_b5b64e11e34ec9e1 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_b5b64e11e34ec9e1 =
  RIP.fromFFIType hs_bindgen_b5b64e11e34ec9e1_base

{-| __C declaration:__ @pixman_glyph_cache_lookup@

    __defined at:__ @pixman.h 1424:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_lookup ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @font_key@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @glyph_key@
  -> IO (PtrConst.PtrConst RIP.Void)
pixman_glyph_cache_lookup =
  hs_bindgen_b5b64e11e34ec9e1

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_insert@
foreign import ccall safe "hs_bindgen_3071a83790236258" hs_bindgen_3071a83790236258_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_insert@
hs_bindgen_3071a83790236258 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_image_t
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_3071a83790236258 =
  RIP.fromFFIType hs_bindgen_3071a83790236258_base

{-| __C declaration:__ @pixman_glyph_cache_insert@

    __defined at:__ @pixman.h 1429:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_insert ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @font_key@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @glyph_key@
  -> RIP.CInt
     -- ^ __C declaration:__ @origin_x@
  -> RIP.CInt
     -- ^ __C declaration:__ @origin_y@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @glyph_image@
  -> IO (PtrConst.PtrConst RIP.Void)
pixman_glyph_cache_insert =
  hs_bindgen_3071a83790236258

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_remove@
foreign import ccall safe "hs_bindgen_ece79085d67816b8" hs_bindgen_ece79085d67816b8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_cache_remove@
hs_bindgen_ece79085d67816b8 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ece79085d67816b8 =
  RIP.fromFFIType hs_bindgen_ece79085d67816b8_base

{-| __C declaration:__ @pixman_glyph_cache_remove@

    __defined at:__ @pixman.h 1437:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_remove ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @font_key@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @glyph_key@
  -> IO ()
pixman_glyph_cache_remove =
  hs_bindgen_ece79085d67816b8

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_get_extents@
foreign import ccall safe "hs_bindgen_eff6ccd3dc3c86b5" hs_bindgen_eff6ccd3dc3c86b5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_get_extents@
hs_bindgen_eff6ccd3dc3c86b5 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> RIP.Ptr Pixman_glyph_t
  -> RIP.Ptr Pixman_box32_t
  -> IO ()
hs_bindgen_eff6ccd3dc3c86b5 =
  RIP.fromFFIType hs_bindgen_eff6ccd3dc3c86b5_base

{-| __C declaration:__ @pixman_glyph_get_extents@

    __defined at:__ @pixman.h 1442:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_extents ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_glyphs@
  -> RIP.Ptr Pixman_glyph_t
     -- ^ __C declaration:__ @glyphs@
  -> RIP.Ptr Pixman_box32_t
     -- ^ __C declaration:__ @extents@
  -> IO ()
pixman_glyph_get_extents =
  hs_bindgen_eff6ccd3dc3c86b5

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_get_mask_format@
foreign import ccall safe "hs_bindgen_d7fb618122cf6ef0" hs_bindgen_d7fb618122cf6ef0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_glyph_get_mask_format@
hs_bindgen_d7fb618122cf6ef0 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO Pixman_format_code_t
hs_bindgen_d7fb618122cf6ef0 =
  RIP.fromFFIType hs_bindgen_d7fb618122cf6ef0_base

{-| __C declaration:__ @pixman_glyph_get_mask_format@

    __defined at:__ @pixman.h 1448:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_mask_format ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_glyphs@
  -> PtrConst.PtrConst Pixman_glyph_t
     -- ^ __C declaration:__ @glyphs@
  -> IO Pixman_format_code_t
pixman_glyph_get_mask_format =
  hs_bindgen_d7fb618122cf6ef0

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_glyphs@
foreign import ccall safe "hs_bindgen_8e48ff00df92554a" hs_bindgen_8e48ff00df92554a_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_glyphs@
hs_bindgen_8e48ff00df92554a ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> Pixman_format_code_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO ()
hs_bindgen_8e48ff00df92554a =
  RIP.fromFFIType hs_bindgen_8e48ff00df92554a_base

{-| __C declaration:__ @pixman_composite_glyphs@

    __defined at:__ @pixman.h 1453:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest@
  -> Pixman_format_code_t
     -- ^ __C declaration:__ @mask_format@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @src_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @src_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @mask_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @mask_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @dest_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @dest_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_glyphs@
  -> PtrConst.PtrConst Pixman_glyph_t
     -- ^ __C declaration:__ @glyphs@
  -> IO ()
pixman_composite_glyphs = hs_bindgen_8e48ff00df92554a

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_glyphs_no_mask@
foreign import ccall safe "hs_bindgen_7bfe5f34f1cd2361" hs_bindgen_7bfe5f34f1cd2361_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_glyphs_no_mask@
hs_bindgen_7bfe5f34f1cd2361 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO ()
hs_bindgen_7bfe5f34f1cd2361 =
  RIP.fromFFIType hs_bindgen_7bfe5f34f1cd2361_base

{-| __C declaration:__ @pixman_composite_glyphs_no_mask@

    __defined at:__ @pixman.h 1470:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs_no_mask ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @src_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @src_y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @dest_x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @dest_y@
  -> RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_glyphs@
  -> PtrConst.PtrConst Pixman_glyph_t
     -- ^ __C declaration:__ @glyphs@
  -> IO ()
pixman_composite_glyphs_no_mask =
  hs_bindgen_7bfe5f34f1cd2361

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_sample_ceil_y@
foreign import ccall safe "hs_bindgen_9119dbe6c14f5549" hs_bindgen_9119dbe6c14f5549_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_sample_ceil_y@
hs_bindgen_9119dbe6c14f5549 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_9119dbe6c14f5549 =
  RIP.fromFFIType hs_bindgen_9119dbe6c14f5549_base

{-| __C declaration:__ @pixman_sample_ceil_y@

    __defined at:__ @pixman.h 1538:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_ceil_y ::
     Pixman_fixed_t
     -- ^ __C declaration:__ @y@
  -> RIP.CInt
     -- ^ __C declaration:__ @bpp@
  -> IO Pixman_fixed_t
pixman_sample_ceil_y = hs_bindgen_9119dbe6c14f5549

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_sample_floor_y@
foreign import ccall safe "hs_bindgen_fa829951649898c8" hs_bindgen_fa829951649898c8_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_sample_floor_y@
hs_bindgen_fa829951649898c8 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_fa829951649898c8 =
  RIP.fromFFIType hs_bindgen_fa829951649898c8_base

{-| __C declaration:__ @pixman_sample_floor_y@

    __defined at:__ @pixman.h 1542:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_floor_y ::
     Pixman_fixed_t
     -- ^ __C declaration:__ @y@
  -> RIP.CInt
     -- ^ __C declaration:__ @bpp@
  -> IO Pixman_fixed_t
pixman_sample_floor_y = hs_bindgen_fa829951649898c8

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_edge_step@
foreign import ccall safe "hs_bindgen_cd222e3abfbdd24f" hs_bindgen_cd222e3abfbdd24f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_edge_step@
hs_bindgen_cd222e3abfbdd24f ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> IO ()
hs_bindgen_cd222e3abfbdd24f =
  RIP.fromFFIType hs_bindgen_cd222e3abfbdd24f_base

{-| __C declaration:__ @pixman_edge_step@

    __defined at:__ @pixman.h 1546:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_step ::
     RIP.Ptr Pixman_edge_t
     -- ^ __C declaration:__ @e@
  -> RIP.CInt
     -- ^ __C declaration:__ @n@
  -> IO ()
pixman_edge_step = hs_bindgen_cd222e3abfbdd24f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_edge_init@
foreign import ccall safe "hs_bindgen_4b75dca2a7e9ec7c" hs_bindgen_4b75dca2a7e9ec7c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_edge_init@
hs_bindgen_4b75dca2a7e9ec7c ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_4b75dca2a7e9ec7c =
  RIP.fromFFIType hs_bindgen_4b75dca2a7e9ec7c_base

{-| __C declaration:__ @pixman_edge_init@

    __defined at:__ @pixman.h 1550:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_init ::
     RIP.Ptr Pixman_edge_t
     -- ^ __C declaration:__ @e@
  -> RIP.CInt
     -- ^ __C declaration:__ @bpp@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @y_start@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @x_top@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @y_top@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @x_bot@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @y_bot@
  -> IO ()
pixman_edge_init = hs_bindgen_4b75dca2a7e9ec7c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_line_fixed_edge_init@
foreign import ccall safe "hs_bindgen_11918d424f77b97c" hs_bindgen_11918d424f77b97c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_line_fixed_edge_init@
hs_bindgen_11918d424f77b97c ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_line_fixed_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_11918d424f77b97c =
  RIP.fromFFIType hs_bindgen_11918d424f77b97c_base

{-| __C declaration:__ @pixman_line_fixed_edge_init@

    __defined at:__ @pixman.h 1559:16@

    __exported by:__ @pixman.h@
-}
pixman_line_fixed_edge_init ::
     RIP.Ptr Pixman_edge_t
     -- ^ __C declaration:__ @e@
  -> RIP.CInt
     -- ^ __C declaration:__ @bpp@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @y@
  -> PtrConst.PtrConst Pixman_line_fixed_t
     -- ^ __C declaration:__ @line@
  -> RIP.CInt
     -- ^ __C declaration:__ @x_off@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_off@
  -> IO ()
pixman_line_fixed_edge_init =
  hs_bindgen_11918d424f77b97c

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_rasterize_edges@
foreign import ccall safe "hs_bindgen_ec55f6bbad99e05f" hs_bindgen_ec55f6bbad99e05f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_rasterize_edges@
hs_bindgen_ec55f6bbad99e05f ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_edge_t
  -> RIP.Ptr Pixman_edge_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_ec55f6bbad99e05f =
  RIP.fromFFIType hs_bindgen_ec55f6bbad99e05f_base

{-| __C declaration:__ @pixman_rasterize_edges@

    __defined at:__ @pixman.h 1567:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_edges ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> RIP.Ptr Pixman_edge_t
     -- ^ __C declaration:__ @l@
  -> RIP.Ptr Pixman_edge_t
     -- ^ __C declaration:__ @r@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @t@
  -> Pixman_fixed_t
     -- ^ __C declaration:__ @b@
  -> IO ()
pixman_rasterize_edges = hs_bindgen_ec55f6bbad99e05f

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_add_traps@
foreign import ccall safe "hs_bindgen_af19c6acbcbcdf20" hs_bindgen_af19c6acbcbcdf20_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_add_traps@
hs_bindgen_af19c6acbcbcdf20 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trap_t
  -> IO ()
hs_bindgen_af19c6acbcbcdf20 =
  RIP.fromFFIType hs_bindgen_af19c6acbcbcdf20_base

{-| __C declaration:__ @pixman_add_traps@

    __defined at:__ @pixman.h 1574:16@

    __exported by:__ @pixman.h@
-}
pixman_add_traps ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @x_off@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @y_off@
  -> RIP.CInt
     -- ^ __C declaration:__ @ntrap@
  -> PtrConst.PtrConst Pixman_trap_t
     -- ^ __C declaration:__ @traps@
  -> IO ()
pixman_add_traps = hs_bindgen_af19c6acbcbcdf20

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_add_trapezoids@
foreign import ccall safe "hs_bindgen_89409f82f9915626" hs_bindgen_89409f82f9915626_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_add_trapezoids@
hs_bindgen_89409f82f9915626 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_89409f82f9915626 =
  RIP.fromFFIType hs_bindgen_89409f82f9915626_base

{-| __C declaration:__ @pixman_add_trapezoids@

    __defined at:__ @pixman.h 1581:16@

    __exported by:__ @pixman.h@
-}
pixman_add_trapezoids ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> HsBindgen.Runtime.LibC.Int16
     -- ^ __C declaration:__ @x_off@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_off@
  -> RIP.CInt
     -- ^ __C declaration:__ @ntraps@
  -> PtrConst.PtrConst Pixman_trapezoid_t
     -- ^ __C declaration:__ @traps@
  -> IO ()
pixman_add_trapezoids = hs_bindgen_89409f82f9915626

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_rasterize_trapezoid@
foreign import ccall safe "hs_bindgen_eefb370a07bc7603" hs_bindgen_eefb370a07bc7603_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_rasterize_trapezoid@
hs_bindgen_eefb370a07bc7603 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_eefb370a07bc7603 =
  RIP.fromFFIType hs_bindgen_eefb370a07bc7603_base

{-| __C declaration:__ @pixman_rasterize_trapezoid@

    __defined at:__ @pixman.h 1588:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_trapezoid ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> PtrConst.PtrConst Pixman_trapezoid_t
     -- ^ __C declaration:__ @trap@
  -> RIP.CInt
     -- ^ __C declaration:__ @x_off@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_off@
  -> IO ()
pixman_rasterize_trapezoid =
  hs_bindgen_eefb370a07bc7603

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_trapezoids@
foreign import ccall safe "hs_bindgen_522baca645879bac" hs_bindgen_522baca645879bac_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_trapezoids@
hs_bindgen_522baca645879bac ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_522baca645879bac =
  RIP.fromFFIType hs_bindgen_522baca645879bac_base

{-| __C declaration:__ @pixman_composite_trapezoids@

    __defined at:__ @pixman.h 1594:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_trapezoids ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dst@
  -> Pixman_format_code_t
     -- ^ __C declaration:__ @mask_format@
  -> RIP.CInt
     -- ^ __C declaration:__ @x_src@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_src@
  -> RIP.CInt
     -- ^ __C declaration:__ @x_dst@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_dst@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_traps@
  -> PtrConst.PtrConst Pixman_trapezoid_t
     -- ^ __C declaration:__ @traps@
  -> IO ()
pixman_composite_trapezoids =
  hs_bindgen_522baca645879bac

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_triangles@
foreign import ccall safe "hs_bindgen_e73572320611e5f7" hs_bindgen_e73572320611e5f7_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_composite_triangles@
hs_bindgen_e73572320611e5f7 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_e73572320611e5f7 =
  RIP.fromFFIType hs_bindgen_e73572320611e5f7_base

{-| __C declaration:__ @pixman_composite_triangles@

    __defined at:__ @pixman.h 1606:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_triangles ::
     Pixman_op_t
     -- ^ __C declaration:__ @op@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @src@
  -> RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @dst@
  -> Pixman_format_code_t
     -- ^ __C declaration:__ @mask_format@
  -> RIP.CInt
     -- ^ __C declaration:__ @x_src@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_src@
  -> RIP.CInt
     -- ^ __C declaration:__ @x_dst@
  -> RIP.CInt
     -- ^ __C declaration:__ @y_dst@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_tris@
  -> PtrConst.PtrConst Pixman_triangle_t
     -- ^ __C declaration:__ @tris@
  -> IO ()
pixman_composite_triangles =
  hs_bindgen_e73572320611e5f7

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_add_triangles@
foreign import ccall safe "hs_bindgen_ebf14c03d5b9fc57" hs_bindgen_ebf14c03d5b9fc57_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Safe_pixman_add_triangles@
hs_bindgen_ebf14c03d5b9fc57 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_ebf14c03d5b9fc57 =
  RIP.fromFFIType hs_bindgen_ebf14c03d5b9fc57_base

{-| __C declaration:__ @pixman_add_triangles@

    __defined at:__ @pixman.h 1618:12@

    __exported by:__ @pixman.h@
-}
pixman_add_triangles ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x_off@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y_off@
  -> RIP.CInt
     -- ^ __C declaration:__ @n_tris@
  -> PtrConst.PtrConst Pixman_triangle_t
     -- ^ __C declaration:__ @tris@
  -> IO ()
pixman_add_triangles = hs_bindgen_ebf14c03d5b9fc57
