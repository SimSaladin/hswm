{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Pixman.Unsafe
    ( Generated.Pixman.Unsafe.pixman_transform_init_identity
    , Generated.Pixman.Unsafe.pixman_transform_point_3d
    , Generated.Pixman.Unsafe.pixman_transform_point
    , Generated.Pixman.Unsafe.pixman_transform_multiply
    , Generated.Pixman.Unsafe.pixman_transform_init_scale
    , Generated.Pixman.Unsafe.pixman_transform_scale
    , Generated.Pixman.Unsafe.pixman_transform_init_rotate
    , Generated.Pixman.Unsafe.pixman_transform_rotate
    , Generated.Pixman.Unsafe.pixman_transform_init_translate
    , Generated.Pixman.Unsafe.pixman_transform_translate
    , Generated.Pixman.Unsafe.pixman_transform_bounds
    , Generated.Pixman.Unsafe.pixman_transform_invert
    , Generated.Pixman.Unsafe.pixman_transform_is_identity
    , Generated.Pixman.Unsafe.pixman_transform_is_scale
    , Generated.Pixman.Unsafe.pixman_transform_is_int_translate
    , Generated.Pixman.Unsafe.pixman_transform_is_inverse
    , Generated.Pixman.Unsafe.pixman_transform_from_pixman_f_transform
    , Generated.Pixman.Unsafe.pixman_f_transform_from_pixman_transform
    , Generated.Pixman.Unsafe.pixman_f_transform_invert
    , Generated.Pixman.Unsafe.pixman_f_transform_point
    , Generated.Pixman.Unsafe.pixman_f_transform_point_3d
    , Generated.Pixman.Unsafe.pixman_f_transform_multiply
    , Generated.Pixman.Unsafe.pixman_f_transform_init_scale
    , Generated.Pixman.Unsafe.pixman_f_transform_scale
    , Generated.Pixman.Unsafe.pixman_f_transform_init_rotate
    , Generated.Pixman.Unsafe.pixman_f_transform_rotate
    , Generated.Pixman.Unsafe.pixman_f_transform_init_translate
    , Generated.Pixman.Unsafe.pixman_f_transform_translate
    , Generated.Pixman.Unsafe.pixman_f_transform_bounds
    , Generated.Pixman.Unsafe.pixman_f_transform_init_identity
    , Generated.Pixman.Unsafe.pixman_region_set_static_pointers
    , Generated.Pixman.Unsafe.pixman_region_init
    , Generated.Pixman.Unsafe.pixman_region_init_rect
    , Generated.Pixman.Unsafe.pixman_region_init_rects
    , Generated.Pixman.Unsafe.pixman_region_init_with_extents
    , Generated.Pixman.Unsafe.pixman_region_init_from_image
    , Generated.Pixman.Unsafe.pixman_region_fini
    , Generated.Pixman.Unsafe.pixman_region_translate
    , Generated.Pixman.Unsafe.pixman_region_copy
    , Generated.Pixman.Unsafe.pixman_region_intersect
    , Generated.Pixman.Unsafe.pixman_region_union
    , Generated.Pixman.Unsafe.pixman_region_union_rect
    , Generated.Pixman.Unsafe.pixman_region_intersect_rect
    , Generated.Pixman.Unsafe.pixman_region_subtract
    , Generated.Pixman.Unsafe.pixman_region_inverse
    , Generated.Pixman.Unsafe.pixman_region_contains_point
    , Generated.Pixman.Unsafe.pixman_region_contains_rectangle
    , Generated.Pixman.Unsafe.pixman_region_empty
    , Generated.Pixman.Unsafe.pixman_region_not_empty
    , Generated.Pixman.Unsafe.pixman_region_extents
    , Generated.Pixman.Unsafe.pixman_region_n_rects
    , Generated.Pixman.Unsafe.pixman_region_rectangles
    , Generated.Pixman.Unsafe.pixman_region_equal
    , Generated.Pixman.Unsafe.pixman_region_selfcheck
    , Generated.Pixman.Unsafe.pixman_region_reset
    , Generated.Pixman.Unsafe.pixman_region_clear
    , Generated.Pixman.Unsafe.pixman_region32_init
    , Generated.Pixman.Unsafe.pixman_region32_init_rect
    , Generated.Pixman.Unsafe.pixman_region32_init_rects
    , Generated.Pixman.Unsafe.pixman_region32_init_with_extents
    , Generated.Pixman.Unsafe.pixman_region32_init_from_image
    , Generated.Pixman.Unsafe.pixman_region32_fini
    , Generated.Pixman.Unsafe.pixman_region32_translate
    , Generated.Pixman.Unsafe.pixman_region32_copy
    , Generated.Pixman.Unsafe.pixman_region32_intersect
    , Generated.Pixman.Unsafe.pixman_region32_union
    , Generated.Pixman.Unsafe.pixman_region32_intersect_rect
    , Generated.Pixman.Unsafe.pixman_region32_union_rect
    , Generated.Pixman.Unsafe.pixman_region32_subtract
    , Generated.Pixman.Unsafe.pixman_region32_inverse
    , Generated.Pixman.Unsafe.pixman_region32_contains_point
    , Generated.Pixman.Unsafe.pixman_region32_contains_rectangle
    , Generated.Pixman.Unsafe.pixman_region32_empty
    , Generated.Pixman.Unsafe.pixman_region32_not_empty
    , Generated.Pixman.Unsafe.pixman_region32_extents
    , Generated.Pixman.Unsafe.pixman_region32_n_rects
    , Generated.Pixman.Unsafe.pixman_region32_rectangles
    , Generated.Pixman.Unsafe.pixman_region32_equal
    , Generated.Pixman.Unsafe.pixman_region32_selfcheck
    , Generated.Pixman.Unsafe.pixman_region32_reset
    , Generated.Pixman.Unsafe.pixman_region32_clear
    , Generated.Pixman.Unsafe.pixman_region64f_init
    , Generated.Pixman.Unsafe.pixman_region64f_init_rect
    , Generated.Pixman.Unsafe.pixman_region64f_init_rectf
    , Generated.Pixman.Unsafe.pixman_region64f_init_rects
    , Generated.Pixman.Unsafe.pixman_region64f_init_with_extents
    , Generated.Pixman.Unsafe.pixman_region64f_init_from_image
    , Generated.Pixman.Unsafe.pixman_region64f_fini
    , Generated.Pixman.Unsafe.pixman_region64f_translate
    , Generated.Pixman.Unsafe.pixman_region64f_translatef
    , Generated.Pixman.Unsafe.pixman_region64f_copy
    , Generated.Pixman.Unsafe.pixman_region64f_intersect
    , Generated.Pixman.Unsafe.pixman_region64f_union
    , Generated.Pixman.Unsafe.pixman_region64f_intersect_rect
    , Generated.Pixman.Unsafe.pixman_region64f_intersect_rectf
    , Generated.Pixman.Unsafe.pixman_region64f_union_rect
    , Generated.Pixman.Unsafe.pixman_region64f_union_rectf
    , Generated.Pixman.Unsafe.pixman_region64f_subtract
    , Generated.Pixman.Unsafe.pixman_region64f_inverse
    , Generated.Pixman.Unsafe.pixman_region64f_contains_point
    , Generated.Pixman.Unsafe.pixman_region64f_contains_pointf
    , Generated.Pixman.Unsafe.pixman_region64f_contains_rectangle
    , Generated.Pixman.Unsafe.pixman_region64f_empty
    , Generated.Pixman.Unsafe.pixman_region64f_not_empty
    , Generated.Pixman.Unsafe.pixman_region64f_extents
    , Generated.Pixman.Unsafe.pixman_region64f_n_rects
    , Generated.Pixman.Unsafe.pixman_region64f_rectangles
    , Generated.Pixman.Unsafe.pixman_region64f_equal
    , Generated.Pixman.Unsafe.pixman_region64f_selfcheck
    , Generated.Pixman.Unsafe.pixman_region64f_reset
    , Generated.Pixman.Unsafe.pixman_region64f_clear
    , Generated.Pixman.Unsafe.pixman_blt
    , Generated.Pixman.Unsafe.pixman_fill
    , Generated.Pixman.Unsafe.pixman_version
    , Generated.Pixman.Unsafe.pixman_version_string
    , Generated.Pixman.Unsafe.pixman_format_supported_destination
    , Generated.Pixman.Unsafe.pixman_format_supported_source
    , Generated.Pixman.Unsafe.pixman_image_create_solid_fill
    , Generated.Pixman.Unsafe.pixman_image_create_linear_gradient
    , Generated.Pixman.Unsafe.pixman_image_create_radial_gradient
    , Generated.Pixman.Unsafe.pixman_image_create_conical_gradient
    , Generated.Pixman.Unsafe.pixman_image_create_bits
    , Generated.Pixman.Unsafe.pixman_image_create_bits_no_clear
    , Generated.Pixman.Unsafe.pixman_image_ref
    , Generated.Pixman.Unsafe.pixman_image_unref
    , Generated.Pixman.Unsafe.pixman_image_set_destroy_function
    , Generated.Pixman.Unsafe.pixman_image_get_destroy_data
    , Generated.Pixman.Unsafe.pixman_image_set_clip_region
    , Generated.Pixman.Unsafe.pixman_image_set_clip_region32
    , Generated.Pixman.Unsafe.pixman_image_set_clip_region64f
    , Generated.Pixman.Unsafe.pixman_image_set_has_client_clip
    , Generated.Pixman.Unsafe.pixman_image_set_transform
    , Generated.Pixman.Unsafe.pixman_image_set_repeat
    , Generated.Pixman.Unsafe.pixman_image_set_dither
    , Generated.Pixman.Unsafe.pixman_image_set_dither_offset
    , Generated.Pixman.Unsafe.pixman_image_set_filter
    , Generated.Pixman.Unsafe.pixman_image_set_source_clipping
    , Generated.Pixman.Unsafe.pixman_image_set_alpha_map
    , Generated.Pixman.Unsafe.pixman_image_set_component_alpha
    , Generated.Pixman.Unsafe.pixman_image_get_component_alpha
    , Generated.Pixman.Unsafe.pixman_image_set_accessors
    , Generated.Pixman.Unsafe.pixman_image_set_indexed
    , Generated.Pixman.Unsafe.pixman_image_get_data
    , Generated.Pixman.Unsafe.pixman_image_get_width
    , Generated.Pixman.Unsafe.pixman_image_get_height
    , Generated.Pixman.Unsafe.pixman_image_get_stride
    , Generated.Pixman.Unsafe.pixman_image_get_depth
    , Generated.Pixman.Unsafe.pixman_image_get_format
    , Generated.Pixman.Unsafe.pixman_filter_create_separable_convolution
    , Generated.Pixman.Unsafe.pixman_image_fill_rectangles
    , Generated.Pixman.Unsafe.pixman_image_fill_boxes
    , Generated.Pixman.Unsafe.pixman_compute_composite_region
    , Generated.Pixman.Unsafe.pixman_image_composite
    , Generated.Pixman.Unsafe.pixman_image_composite32
    , Generated.Pixman.Unsafe.pixman_image_composite64f
    , Generated.Pixman.Unsafe.pixman_disable_out_of_bounds_workaround
    , Generated.Pixman.Unsafe.pixman_glyph_cache_create
    , Generated.Pixman.Unsafe.pixman_glyph_cache_destroy
    , Generated.Pixman.Unsafe.pixman_glyph_cache_freeze
    , Generated.Pixman.Unsafe.pixman_glyph_cache_thaw
    , Generated.Pixman.Unsafe.pixman_glyph_cache_lookup
    , Generated.Pixman.Unsafe.pixman_glyph_cache_insert
    , Generated.Pixman.Unsafe.pixman_glyph_cache_remove
    , Generated.Pixman.Unsafe.pixman_glyph_get_extents
    , Generated.Pixman.Unsafe.pixman_glyph_get_mask_format
    , Generated.Pixman.Unsafe.pixman_composite_glyphs
    , Generated.Pixman.Unsafe.pixman_composite_glyphs_no_mask
    , Generated.Pixman.Unsafe.pixman_sample_ceil_y
    , Generated.Pixman.Unsafe.pixman_sample_floor_y
    , Generated.Pixman.Unsafe.pixman_edge_step
    , Generated.Pixman.Unsafe.pixman_edge_init
    , Generated.Pixman.Unsafe.pixman_line_fixed_edge_init
    , Generated.Pixman.Unsafe.pixman_rasterize_edges
    , Generated.Pixman.Unsafe.pixman_add_traps
    , Generated.Pixman.Unsafe.pixman_add_trapezoids
    , Generated.Pixman.Unsafe.pixman_rasterize_trapezoid
    , Generated.Pixman.Unsafe.pixman_composite_trapezoids
    , Generated.Pixman.Unsafe.pixman_composite_triangles
    , Generated.Pixman.Unsafe.pixman_add_triangles
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Pixman

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <pixman.h>"
  , "void hs_bindgen_878d5128f2a0be62 ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_transform_init_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_890cf9db67871160 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point_3d)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_62caf4d2289f0f21 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_232d7453a9725475 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return (pixman_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_10f65985c6515903 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_df5259518e7ab268 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_fe6e52d2ff6dd823 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1b1b2ac2289b6389 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_8a2c09cfd39fc895 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_e5929dacf406ae69 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_a81396446a108361 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_bounds)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_c99bfba7a6746b82 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_ce0b695e741d64c4 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_ef009136fca64fb3 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_scale)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_742f516501099076 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_int_translate)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_2dfd9f766961092b ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_is_inverse)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_38a18464488dbcfe ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_from_pixman_f_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d8bc6de5c85bedd4 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_from_pixman_transform)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_85c223749bfa8cf9 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_8268cb5d7c16db5d ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_point)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_28af8d6d8e3d5f13 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_point_3d)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d241cdcb579603cf ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3ba84576ebcf5dc3 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_b162af62025d0289 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_e797154800123def ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1fdae049299eaee9 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_6d519a7d89139434 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_67009ffa103975bf ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_261e7b654a5de799 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_bounds)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d39c0dd56bf9c536 ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_identity)(arg1);"
  , "}"
  , "void hs_bindgen_4355fc98f54e6906 ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  (pixman_region_set_static_pointers)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_042b8aaf5d7141b9 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_init)(arg1);"
  , "}"
  , "void hs_bindgen_d3c28aa827941d15 ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_112bdf6afa386bdf ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e4b50d45a5a38db2 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ff0103db54bc4ced ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c62cd7b4b30f3b7c ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_fini)(arg1);"
  , "}"
  , "void hs_bindgen_b66c887faf15d167 ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_cbeaab8e82c7ff44 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9742698ea76785f9 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_dcc4af5f70965275 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_5f52c0f5ae0c301c ("
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
  , "pixman_bool_t hs_bindgen_74b58096bb825925 ("
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
  , "pixman_bool_t hs_bindgen_40f75d77940660cc ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_0f5693c4bb5e6e32 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_905abaea04d8193b ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_ddbb0395313ed899 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e9deaa5ff1dc5e42 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_a29ae57a527c4bcb ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_not_empty)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_3f2b6a8cc531990b ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_2594e2b38d45e6cc ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_n_rects)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_921370cc431780ce ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_3ffe1ee137fc23b3 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_376e8feb79785d3f ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_6e41f921293565b1 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_017deaffd5f18b69 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_clear)(arg1);"
  , "}"
  , "void hs_bindgen_395b441ca4627c59 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_init)(arg1);"
  , "}"
  , "void hs_bindgen_c0388988a7560f01 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region32_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_08a30a78588886ca ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b8d4bba4b678ebd5 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e29bbe0414cbc5e2 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3e0bc579c9fd0069 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_fini)(arg1);"
  , "}"
  , "void hs_bindgen_0135f5d41eba665e ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region32_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_b2e9e06a1682e74e ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_534290e86efa3765 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_518cefa0fe3f3319 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_28293951e27fe925 ("
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
  , "pixman_bool_t hs_bindgen_1e8aebf1f08eb98a ("
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
  , "pixman_bool_t hs_bindgen_f0de93f4d3eedbda ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_b638e9aa6a39ec7a ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_4620083b0ee306ad ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_c5cfb28262f3316e ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_243afb82fd73c28f ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_f49ee552aa8874e7 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_not_empty)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_3a8a8fb108507479 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_f86d7ff60b7507cc ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_n_rects)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_5099e00e62af7925 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_34de19d19ca41cdc ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_22624daca8f947fa ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_36eb34446c169701 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ae522b467acb9d04 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_clear)(arg1);"
  , "}"
  , "void hs_bindgen_96fcfcc61625ed08 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_init)(arg1);"
  , "}"
  , "void hs_bindgen_99b8845e7f8aef43 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_07f89d985da0e240 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rectf)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_04b153af48d2446f ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_da9adc4b3c213bec ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_359107990b31bace ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a82a85c765fd9c61 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_fini)(arg1);"
  , "}"
  , "void hs_bindgen_5cfea7b0d4e893fb ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translate)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4a3560c6b7188f26 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translatef)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_6d4eb081bd406877 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_38a00b657e625fb9 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_32bc41799bade25a ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_72010aad20a9c966 ("
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
  , "pixman_bool_t hs_bindgen_a8a59a7318991190 ("
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
  , "pixman_bool_t hs_bindgen_df37c276c1b413be ("
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
  , "pixman_bool_t hs_bindgen_40489095129eb27f ("
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
  , "pixman_bool_t hs_bindgen_2d29f0d81cc5a3a2 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_53da501d34c48fcd ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9eb052a832518dc6 ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_b4fe94a4c780e609 ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_pointf)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_e7ef67125bd7f978 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9eaf8321d13361be ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_f063c7790a53fc15 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_not_empty)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_d464601cd1ee781d ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_95bba0ea4d568f04 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_n_rects)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_3fc1366fcdd9b6db ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_8ff69d45ae3ef683 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_245517a6ecec47fb ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_7dc4086cf24e0ae1 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_85f828b1a33eafb6 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_clear)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_c881c37a35cada1d ("
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
  , "pixman_bool_t hs_bindgen_f3a069e24a0b0b89 ("
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
  , "signed int hs_bindgen_efc14aa9fe0b7c16 (void)"
  , "{"
  , "  return (pixman_version)();"
  , "}"
  , "char const *hs_bindgen_5906567f3039c907 (void)"
  , "{"
  , "  return (pixman_version_string)();"
  , "}"
  , "pixman_bool_t hs_bindgen_a9bf9abb7365d10c ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_destination)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_8bf1199470eb96c8 ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_source)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_c10fa33663c01ec2 ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_create_solid_fill)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_dec9bd07234977da ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_linear_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_679d489f0511e2f7 ("
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
  , "pixman_image_t *hs_bindgen_cc526f5cc7e82ae9 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_conical_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_ffc11405cf3cefbd ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_0f3bd2ba05760d01 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits_no_clear)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_0d03171e23458d28 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_ref)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_f5934f2ac2d32dcf ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_unref)(arg1);"
  , "}"
  , "void hs_bindgen_1e83f8605dc0e81e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_destroy_function)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_35a73dd7e8d8c436 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_destroy_data)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_db17bdac31e782d9 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9632229886b12824 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region32)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_07f39ea92139f0c8 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region64f)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_303f99112af7f6b3 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_has_client_clip)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_fba068762b94071d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_884bb546ff9d17e8 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_repeat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c397907a8f437294 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_dither)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6381d1cafebb3ee8 ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_dither_offset)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_a370c239682ecb8d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_set_filter)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_6752fa38fac0e9d9 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_source_clipping)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_99202468b2011640 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  (pixman_image_set_alpha_map)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_ceeb0ce3f747f515 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_component_alpha)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f83d3c6a1721dfb5 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_component_alpha)(arg1);"
  , "}"
  , "void hs_bindgen_98cac4965b8c6ec4 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_accessors)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_fcbf3b9387283172 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_indexed)(arg1, arg2);"
  , "}"
  , "uint32_t *hs_bindgen_cde8041a063fb6eb ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_data)(arg1);"
  , "}"
  , "signed int hs_bindgen_e6f0245a956b819a ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_width)(arg1);"
  , "}"
  , "signed int hs_bindgen_e5626eeeb7e0b641 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_height)(arg1);"
  , "}"
  , "signed int hs_bindgen_c3a263f7a32459cf ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_stride)(arg1);"
  , "}"
  , "signed int hs_bindgen_16f892ebbd834eb6 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_depth)(arg1);"
  , "}"
  , "pixman_format_code_t hs_bindgen_b10fccd09f1d6247 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_format)(arg1);"
  , "}"
  , "pixman_fixed_t *hs_bindgen_6da5d222f6712881 ("
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
  , "pixman_bool_t hs_bindgen_0e10e9a3c2035dd1 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_rectangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_5cebf2696199527e ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_boxes)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_6421607e1b6fda46 ("
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
  , "void hs_bindgen_99d079a32e53b40e ("
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
  , "void hs_bindgen_03f96826c9d4b52a ("
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
  , "void hs_bindgen_50e16b1db12d3bc8 ("
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
  , "void hs_bindgen_2fff28dc4b784d1c (void)"
  , "{"
  , "  (pixman_disable_out_of_bounds_workaround)();"
  , "}"
  , "pixman_glyph_cache_t *hs_bindgen_2dce4f507c1d47df (void)"
  , "{"
  , "  return (pixman_glyph_cache_create)();"
  , "}"
  , "void hs_bindgen_7f9573ebd54b4a19 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_fc7ee0b277c5755c ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_freeze)(arg1);"
  , "}"
  , "void hs_bindgen_d5d51a2f00b47a95 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_thaw)(arg1);"
  , "}"
  , "void const *hs_bindgen_0217b38d4eb03388 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_lookup)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_0a87abbfd1d3e0c4 ("
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
  , "void hs_bindgen_7a659c2f69b27f6e ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_remove)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4c90190896bc8553 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  (pixman_glyph_get_extents)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_format_code_t hs_bindgen_f6fc98fcaf0468e8 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_get_mask_format)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0bb92ac792bff335 ("
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
  , "void hs_bindgen_1907fab783d486f9 ("
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
  , "pixman_fixed_t hs_bindgen_0a1a8e682d4cfe46 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_ceil_y)(arg1, arg2);"
  , "}"
  , "pixman_fixed_t hs_bindgen_966521a3a5aa84cb ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_floor_y)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b6d98dc13da8d4b9 ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  (pixman_edge_step)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_75a72677daafb021 ("
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
  , "void hs_bindgen_aa38d71ecd05ae29 ("
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
  , "void hs_bindgen_43bd0fa4b153be0d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  (pixman_rasterize_edges)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_e0dcd63311d581c4 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_traps)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_afcabd1726f7451f ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_trapezoids)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_848649e084d482f9 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  (pixman_rasterize_trapezoid)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_2b99869d5aca1de5 ("
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
  , "void hs_bindgen_cadaa8e444792f33 ("
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
  , "void hs_bindgen_bbf26aabf36bccf5 ("
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_878d5128f2a0be62" hs_bindgen_878d5128f2a0be62_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_identity@
hs_bindgen_878d5128f2a0be62 ::
     RIP.Ptr Pixman_transform
  -> IO ()
hs_bindgen_878d5128f2a0be62 =
  RIP.fromFFIType hs_bindgen_878d5128f2a0be62_base

{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> IO ()
pixman_transform_init_identity =
  hs_bindgen_878d5128f2a0be62

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_890cf9db67871160" hs_bindgen_890cf9db67871160_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_point_3d@
hs_bindgen_890cf9db67871160 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_890cf9db67871160 =
  RIP.fromFFIType hs_bindgen_890cf9db67871160_base

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
  hs_bindgen_890cf9db67871160

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_point@
foreign import ccall unsafe "hs_bindgen_62caf4d2289f0f21" hs_bindgen_62caf4d2289f0f21_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_point@
hs_bindgen_62caf4d2289f0f21 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_62caf4d2289f0f21 =
  RIP.fromFFIType hs_bindgen_62caf4d2289f0f21_base

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
pixman_transform_point = hs_bindgen_62caf4d2289f0f21

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_multiply@
foreign import ccall unsafe "hs_bindgen_232d7453a9725475" hs_bindgen_232d7453a9725475_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_multiply@
hs_bindgen_232d7453a9725475 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_232d7453a9725475 =
  RIP.fromFFIType hs_bindgen_232d7453a9725475_base

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
  hs_bindgen_232d7453a9725475

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_10f65985c6515903" hs_bindgen_10f65985c6515903_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_scale@
hs_bindgen_10f65985c6515903 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_10f65985c6515903 =
  RIP.fromFFIType hs_bindgen_10f65985c6515903_base

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
  hs_bindgen_10f65985c6515903

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_scale@
foreign import ccall unsafe "hs_bindgen_df5259518e7ab268" hs_bindgen_df5259518e7ab268_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_scale@
hs_bindgen_df5259518e7ab268 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_df5259518e7ab268 =
  RIP.fromFFIType hs_bindgen_df5259518e7ab268_base

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
pixman_transform_scale = hs_bindgen_df5259518e7ab268

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_fe6e52d2ff6dd823" hs_bindgen_fe6e52d2ff6dd823_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_rotate@
hs_bindgen_fe6e52d2ff6dd823 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_fe6e52d2ff6dd823 =
  RIP.fromFFIType hs_bindgen_fe6e52d2ff6dd823_base

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
  hs_bindgen_fe6e52d2ff6dd823

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_rotate@
foreign import ccall unsafe "hs_bindgen_1b1b2ac2289b6389" hs_bindgen_1b1b2ac2289b6389_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_rotate@
hs_bindgen_1b1b2ac2289b6389 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_1b1b2ac2289b6389 =
  RIP.fromFFIType hs_bindgen_1b1b2ac2289b6389_base

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
pixman_transform_rotate = hs_bindgen_1b1b2ac2289b6389

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_8a2c09cfd39fc895" hs_bindgen_8a2c09cfd39fc895_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_init_translate@
hs_bindgen_8a2c09cfd39fc895 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_8a2c09cfd39fc895 =
  RIP.fromFFIType hs_bindgen_8a2c09cfd39fc895_base

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
  hs_bindgen_8a2c09cfd39fc895

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_translate@
foreign import ccall unsafe "hs_bindgen_e5929dacf406ae69" hs_bindgen_e5929dacf406ae69_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_translate@
hs_bindgen_e5929dacf406ae69 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_e5929dacf406ae69 =
  RIP.fromFFIType hs_bindgen_e5929dacf406ae69_base

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
  hs_bindgen_e5929dacf406ae69

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_bounds@
foreign import ccall unsafe "hs_bindgen_a81396446a108361" hs_bindgen_a81396446a108361_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_bounds@
hs_bindgen_a81396446a108361 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_a81396446a108361 =
  RIP.fromFFIType hs_bindgen_a81396446a108361_base

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
pixman_transform_bounds = hs_bindgen_a81396446a108361

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_invert@
foreign import ccall unsafe "hs_bindgen_c99bfba7a6746b82" hs_bindgen_c99bfba7a6746b82_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_invert@
hs_bindgen_c99bfba7a6746b82 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_c99bfba7a6746b82 =
  RIP.fromFFIType hs_bindgen_c99bfba7a6746b82_base

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
pixman_transform_invert = hs_bindgen_c99bfba7a6746b82

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_identity@
foreign import ccall unsafe "hs_bindgen_ce0b695e741d64c4" hs_bindgen_ce0b695e741d64c4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_identity@
hs_bindgen_ce0b695e741d64c4 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_ce0b695e741d64c4 =
  RIP.fromFFIType hs_bindgen_ce0b695e741d64c4_base

{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_identity =
  hs_bindgen_ce0b695e741d64c4

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_scale@
foreign import ccall unsafe "hs_bindgen_ef009136fca64fb3" hs_bindgen_ef009136fca64fb3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_scale@
hs_bindgen_ef009136fca64fb3 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_ef009136fca64fb3 =
  RIP.fromFFIType hs_bindgen_ef009136fca64fb3_base

{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_scale =
  hs_bindgen_ef009136fca64fb3

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_int_translate@
foreign import ccall unsafe "hs_bindgen_742f516501099076" hs_bindgen_742f516501099076_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_int_translate@
hs_bindgen_742f516501099076 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_742f516501099076 =
  RIP.fromFFIType hs_bindgen_742f516501099076_base

{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_int_translate =
  hs_bindgen_742f516501099076

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_inverse@
foreign import ccall unsafe "hs_bindgen_2dfd9f766961092b" hs_bindgen_2dfd9f766961092b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_is_inverse@
hs_bindgen_2dfd9f766961092b ::
     PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_2dfd9f766961092b =
  RIP.fromFFIType hs_bindgen_2dfd9f766961092b_base

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
  hs_bindgen_2dfd9f766961092b

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_from_pixman_f_transform@
foreign import ccall unsafe "hs_bindgen_38a18464488dbcfe" hs_bindgen_38a18464488dbcfe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_transform_from_pixman_f_transform@
hs_bindgen_38a18464488dbcfe ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_38a18464488dbcfe =
  RIP.fromFFIType hs_bindgen_38a18464488dbcfe_base

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
  hs_bindgen_38a18464488dbcfe

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_from_pixman_transform@
foreign import ccall unsafe "hs_bindgen_d8bc6de5c85bedd4" hs_bindgen_d8bc6de5c85bedd4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_from_pixman_transform@
hs_bindgen_d8bc6de5c85bedd4 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO ()
hs_bindgen_d8bc6de5c85bedd4 =
  RIP.fromFFIType hs_bindgen_d8bc6de5c85bedd4_base

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
  hs_bindgen_d8bc6de5c85bedd4

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_invert@
foreign import ccall unsafe "hs_bindgen_85c223749bfa8cf9" hs_bindgen_85c223749bfa8cf9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_invert@
hs_bindgen_85c223749bfa8cf9 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_85c223749bfa8cf9 =
  RIP.fromFFIType hs_bindgen_85c223749bfa8cf9_base

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
  hs_bindgen_85c223749bfa8cf9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_point@
foreign import ccall unsafe "hs_bindgen_8268cb5d7c16db5d" hs_bindgen_8268cb5d7c16db5d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_point@
hs_bindgen_8268cb5d7c16db5d ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO Pixman_bool_t
hs_bindgen_8268cb5d7c16db5d =
  RIP.fromFFIType hs_bindgen_8268cb5d7c16db5d_base

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
  hs_bindgen_8268cb5d7c16db5d

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_28af8d6d8e3d5f13" hs_bindgen_28af8d6d8e3d5f13_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_point_3d@
hs_bindgen_28af8d6d8e3d5f13 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO ()
hs_bindgen_28af8d6d8e3d5f13 =
  RIP.fromFFIType hs_bindgen_28af8d6d8e3d5f13_base

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
  hs_bindgen_28af8d6d8e3d5f13

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_multiply@
foreign import ccall unsafe "hs_bindgen_d241cdcb579603cf" hs_bindgen_d241cdcb579603cf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_multiply@
hs_bindgen_d241cdcb579603cf ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO ()
hs_bindgen_d241cdcb579603cf =
  RIP.fromFFIType hs_bindgen_d241cdcb579603cf_base

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
  hs_bindgen_d241cdcb579603cf

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_3ba84576ebcf5dc3" hs_bindgen_3ba84576ebcf5dc3_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_scale@
hs_bindgen_3ba84576ebcf5dc3 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_3ba84576ebcf5dc3 =
  RIP.fromFFIType hs_bindgen_3ba84576ebcf5dc3_base

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
  hs_bindgen_3ba84576ebcf5dc3

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_scale@
foreign import ccall unsafe "hs_bindgen_b162af62025d0289" hs_bindgen_b162af62025d0289_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_scale@
hs_bindgen_b162af62025d0289 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_b162af62025d0289 =
  RIP.fromFFIType hs_bindgen_b162af62025d0289_base

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
  hs_bindgen_b162af62025d0289

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_e797154800123def" hs_bindgen_e797154800123def_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_rotate@
hs_bindgen_e797154800123def ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_e797154800123def =
  RIP.fromFFIType hs_bindgen_e797154800123def_base

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
  hs_bindgen_e797154800123def

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_rotate@
foreign import ccall unsafe "hs_bindgen_1fdae049299eaee9" hs_bindgen_1fdae049299eaee9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_rotate@
hs_bindgen_1fdae049299eaee9 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_1fdae049299eaee9 =
  RIP.fromFFIType hs_bindgen_1fdae049299eaee9_base

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
  hs_bindgen_1fdae049299eaee9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_6d519a7d89139434" hs_bindgen_6d519a7d89139434_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_translate@
hs_bindgen_6d519a7d89139434 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_6d519a7d89139434 =
  RIP.fromFFIType hs_bindgen_6d519a7d89139434_base

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
  hs_bindgen_6d519a7d89139434

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_translate@
foreign import ccall unsafe "hs_bindgen_67009ffa103975bf" hs_bindgen_67009ffa103975bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_translate@
hs_bindgen_67009ffa103975bf ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_67009ffa103975bf =
  RIP.fromFFIType hs_bindgen_67009ffa103975bf_base

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
  hs_bindgen_67009ffa103975bf

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_bounds@
foreign import ccall unsafe "hs_bindgen_261e7b654a5de799" hs_bindgen_261e7b654a5de799_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_bounds@
hs_bindgen_261e7b654a5de799 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_261e7b654a5de799 =
  RIP.fromFFIType hs_bindgen_261e7b654a5de799_base

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
  hs_bindgen_261e7b654a5de799

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_d39c0dd56bf9c536" hs_bindgen_d39c0dd56bf9c536_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_f_transform_init_identity@
hs_bindgen_d39c0dd56bf9c536 ::
     RIP.Ptr Pixman_f_transform
  -> IO ()
hs_bindgen_d39c0dd56bf9c536 =
  RIP.fromFFIType hs_bindgen_d39c0dd56bf9c536_base

{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_init_identity =
  hs_bindgen_d39c0dd56bf9c536

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_set_static_pointers@
foreign import ccall unsafe "hs_bindgen_4355fc98f54e6906" hs_bindgen_4355fc98f54e6906_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_set_static_pointers@
hs_bindgen_4355fc98f54e6906 ::
     RIP.Ptr Pixman_box16_t
  -> RIP.Ptr Pixman_region16_data_t
  -> RIP.Ptr Pixman_region16_data_t
  -> IO ()
hs_bindgen_4355fc98f54e6906 =
  RIP.fromFFIType hs_bindgen_4355fc98f54e6906_base

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
  hs_bindgen_4355fc98f54e6906

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init@
foreign import ccall unsafe "hs_bindgen_042b8aaf5d7141b9" hs_bindgen_042b8aaf5d7141b9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init@
hs_bindgen_042b8aaf5d7141b9 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_042b8aaf5d7141b9 =
  RIP.fromFFIType hs_bindgen_042b8aaf5d7141b9_base

{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_init = hs_bindgen_042b8aaf5d7141b9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_rect@
foreign import ccall unsafe "hs_bindgen_d3c28aa827941d15" hs_bindgen_d3c28aa827941d15_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_rect@
hs_bindgen_d3c28aa827941d15 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_d3c28aa827941d15 =
  RIP.fromFFIType hs_bindgen_d3c28aa827941d15_base

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
pixman_region_init_rect = hs_bindgen_d3c28aa827941d15

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_rects@
foreign import ccall unsafe "hs_bindgen_112bdf6afa386bdf" hs_bindgen_112bdf6afa386bdf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_rects@
hs_bindgen_112bdf6afa386bdf ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_112bdf6afa386bdf =
  RIP.fromFFIType hs_bindgen_112bdf6afa386bdf_base

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
  hs_bindgen_112bdf6afa386bdf

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_with_extents@
foreign import ccall unsafe "hs_bindgen_e4b50d45a5a38db2" hs_bindgen_e4b50d45a5a38db2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_with_extents@
hs_bindgen_e4b50d45a5a38db2 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_e4b50d45a5a38db2 =
  RIP.fromFFIType hs_bindgen_e4b50d45a5a38db2_base

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
  hs_bindgen_e4b50d45a5a38db2

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_from_image@
foreign import ccall unsafe "hs_bindgen_ff0103db54bc4ced" hs_bindgen_ff0103db54bc4ced_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_init_from_image@
hs_bindgen_ff0103db54bc4ced ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_ff0103db54bc4ced =
  RIP.fromFFIType hs_bindgen_ff0103db54bc4ced_base

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
  hs_bindgen_ff0103db54bc4ced

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_fini@
foreign import ccall unsafe "hs_bindgen_c62cd7b4b30f3b7c" hs_bindgen_c62cd7b4b30f3b7c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_fini@
hs_bindgen_c62cd7b4b30f3b7c ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_c62cd7b4b30f3b7c =
  RIP.fromFFIType hs_bindgen_c62cd7b4b30f3b7c_base

{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_fini = hs_bindgen_c62cd7b4b30f3b7c

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_translate@
foreign import ccall unsafe "hs_bindgen_b66c887faf15d167" hs_bindgen_b66c887faf15d167_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_translate@
hs_bindgen_b66c887faf15d167 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_b66c887faf15d167 =
  RIP.fromFFIType hs_bindgen_b66c887faf15d167_base

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
pixman_region_translate = hs_bindgen_b66c887faf15d167

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_copy@
foreign import ccall unsafe "hs_bindgen_cbeaab8e82c7ff44" hs_bindgen_cbeaab8e82c7ff44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_copy@
hs_bindgen_cbeaab8e82c7ff44 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_cbeaab8e82c7ff44 =
  RIP.fromFFIType hs_bindgen_cbeaab8e82c7ff44_base

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
pixman_region_copy = hs_bindgen_cbeaab8e82c7ff44

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_intersect@
foreign import ccall unsafe "hs_bindgen_9742698ea76785f9" hs_bindgen_9742698ea76785f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_intersect@
hs_bindgen_9742698ea76785f9 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_9742698ea76785f9 =
  RIP.fromFFIType hs_bindgen_9742698ea76785f9_base

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
pixman_region_intersect = hs_bindgen_9742698ea76785f9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_union@
foreign import ccall unsafe "hs_bindgen_dcc4af5f70965275" hs_bindgen_dcc4af5f70965275_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_union@
hs_bindgen_dcc4af5f70965275 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_dcc4af5f70965275 =
  RIP.fromFFIType hs_bindgen_dcc4af5f70965275_base

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
pixman_region_union = hs_bindgen_dcc4af5f70965275

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_union_rect@
foreign import ccall unsafe "hs_bindgen_5f52c0f5ae0c301c" hs_bindgen_5f52c0f5ae0c301c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_union_rect@
hs_bindgen_5f52c0f5ae0c301c ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_5f52c0f5ae0c301c =
  RIP.fromFFIType hs_bindgen_5f52c0f5ae0c301c_base

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
  hs_bindgen_5f52c0f5ae0c301c

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_intersect_rect@
foreign import ccall unsafe "hs_bindgen_74b58096bb825925" hs_bindgen_74b58096bb825925_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_intersect_rect@
hs_bindgen_74b58096bb825925 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_74b58096bb825925 =
  RIP.fromFFIType hs_bindgen_74b58096bb825925_base

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
  hs_bindgen_74b58096bb825925

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_subtract@
foreign import ccall unsafe "hs_bindgen_40f75d77940660cc" hs_bindgen_40f75d77940660cc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_subtract@
hs_bindgen_40f75d77940660cc ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_40f75d77940660cc =
  RIP.fromFFIType hs_bindgen_40f75d77940660cc_base

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
pixman_region_subtract = hs_bindgen_40f75d77940660cc

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_inverse@
foreign import ccall unsafe "hs_bindgen_0f5693c4bb5e6e32" hs_bindgen_0f5693c4bb5e6e32_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_inverse@
hs_bindgen_0f5693c4bb5e6e32 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_0f5693c4bb5e6e32 =
  RIP.fromFFIType hs_bindgen_0f5693c4bb5e6e32_base

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
pixman_region_inverse = hs_bindgen_0f5693c4bb5e6e32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_contains_point@
foreign import ccall unsafe "hs_bindgen_905abaea04d8193b" hs_bindgen_905abaea04d8193b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_contains_point@
hs_bindgen_905abaea04d8193b ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_905abaea04d8193b =
  RIP.fromFFIType hs_bindgen_905abaea04d8193b_base

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
  hs_bindgen_905abaea04d8193b

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_ddbb0395313ed899" hs_bindgen_ddbb0395313ed899_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_contains_rectangle@
hs_bindgen_ddbb0395313ed899 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_region_overlap_t
hs_bindgen_ddbb0395313ed899 =
  RIP.fromFFIType hs_bindgen_ddbb0395313ed899_base

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
  hs_bindgen_ddbb0395313ed899

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_empty@
foreign import ccall unsafe "hs_bindgen_e9deaa5ff1dc5e42" hs_bindgen_e9deaa5ff1dc5e42_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_empty@
hs_bindgen_e9deaa5ff1dc5e42 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_e9deaa5ff1dc5e42 =
  RIP.fromFFIType hs_bindgen_e9deaa5ff1dc5e42_base

{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_empty = hs_bindgen_e9deaa5ff1dc5e42

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_not_empty@
foreign import ccall unsafe "hs_bindgen_a29ae57a527c4bcb" hs_bindgen_a29ae57a527c4bcb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_not_empty@
hs_bindgen_a29ae57a527c4bcb ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_a29ae57a527c4bcb =
  RIP.fromFFIType hs_bindgen_a29ae57a527c4bcb_base

{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_not_empty = hs_bindgen_a29ae57a527c4bcb

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_extents@
foreign import ccall unsafe "hs_bindgen_3f2b6a8cc531990b" hs_bindgen_3f2b6a8cc531990b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_extents@
hs_bindgen_3f2b6a8cc531990b ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_3f2b6a8cc531990b =
  RIP.fromFFIType hs_bindgen_3f2b6a8cc531990b_base

{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_extents = hs_bindgen_3f2b6a8cc531990b

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_n_rects@
foreign import ccall unsafe "hs_bindgen_2594e2b38d45e6cc" hs_bindgen_2594e2b38d45e6cc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_n_rects@
hs_bindgen_2594e2b38d45e6cc ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO RIP.CInt
hs_bindgen_2594e2b38d45e6cc =
  RIP.fromFFIType hs_bindgen_2594e2b38d45e6cc_base

{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region_n_rects = hs_bindgen_2594e2b38d45e6cc

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_rectangles@
foreign import ccall unsafe "hs_bindgen_921370cc431780ce" hs_bindgen_921370cc431780ce_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_rectangles@
hs_bindgen_921370cc431780ce ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_921370cc431780ce =
  RIP.fromFFIType hs_bindgen_921370cc431780ce_base

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
  hs_bindgen_921370cc431780ce

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_equal@
foreign import ccall unsafe "hs_bindgen_3ffe1ee137fc23b3" hs_bindgen_3ffe1ee137fc23b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_equal@
hs_bindgen_3ffe1ee137fc23b3 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_3ffe1ee137fc23b3 =
  RIP.fromFFIType hs_bindgen_3ffe1ee137fc23b3_base

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
pixman_region_equal = hs_bindgen_3ffe1ee137fc23b3

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_selfcheck@
foreign import ccall unsafe "hs_bindgen_376e8feb79785d3f" hs_bindgen_376e8feb79785d3f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_selfcheck@
hs_bindgen_376e8feb79785d3f ::
     RIP.Ptr Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_376e8feb79785d3f =
  RIP.fromFFIType hs_bindgen_376e8feb79785d3f_base

{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_selfcheck = hs_bindgen_376e8feb79785d3f

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_reset@
foreign import ccall unsafe "hs_bindgen_6e41f921293565b1" hs_bindgen_6e41f921293565b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_reset@
hs_bindgen_6e41f921293565b1 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_6e41f921293565b1 =
  RIP.fromFFIType hs_bindgen_6e41f921293565b1_base

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
pixman_region_reset = hs_bindgen_6e41f921293565b1

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_clear@
foreign import ccall unsafe "hs_bindgen_017deaffd5f18b69" hs_bindgen_017deaffd5f18b69_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region_clear@
hs_bindgen_017deaffd5f18b69 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_017deaffd5f18b69 =
  RIP.fromFFIType hs_bindgen_017deaffd5f18b69_base

{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_clear = hs_bindgen_017deaffd5f18b69

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init@
foreign import ccall unsafe "hs_bindgen_395b441ca4627c59" hs_bindgen_395b441ca4627c59_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init@
hs_bindgen_395b441ca4627c59 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_395b441ca4627c59 =
  RIP.fromFFIType hs_bindgen_395b441ca4627c59_base

{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_init = hs_bindgen_395b441ca4627c59

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_rect@
foreign import ccall unsafe "hs_bindgen_c0388988a7560f01" hs_bindgen_c0388988a7560f01_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_rect@
hs_bindgen_c0388988a7560f01 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_c0388988a7560f01 =
  RIP.fromFFIType hs_bindgen_c0388988a7560f01_base

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
  hs_bindgen_c0388988a7560f01

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_rects@
foreign import ccall unsafe "hs_bindgen_08a30a78588886ca" hs_bindgen_08a30a78588886ca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_rects@
hs_bindgen_08a30a78588886ca ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_08a30a78588886ca =
  RIP.fromFFIType hs_bindgen_08a30a78588886ca_base

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
  hs_bindgen_08a30a78588886ca

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_with_extents@
foreign import ccall unsafe "hs_bindgen_b8d4bba4b678ebd5" hs_bindgen_b8d4bba4b678ebd5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_with_extents@
hs_bindgen_b8d4bba4b678ebd5 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_b8d4bba4b678ebd5 =
  RIP.fromFFIType hs_bindgen_b8d4bba4b678ebd5_base

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
  hs_bindgen_b8d4bba4b678ebd5

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_from_image@
foreign import ccall unsafe "hs_bindgen_e29bbe0414cbc5e2" hs_bindgen_e29bbe0414cbc5e2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_init_from_image@
hs_bindgen_e29bbe0414cbc5e2 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_e29bbe0414cbc5e2 =
  RIP.fromFFIType hs_bindgen_e29bbe0414cbc5e2_base

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
  hs_bindgen_e29bbe0414cbc5e2

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_fini@
foreign import ccall unsafe "hs_bindgen_3e0bc579c9fd0069" hs_bindgen_3e0bc579c9fd0069_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_fini@
hs_bindgen_3e0bc579c9fd0069 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_3e0bc579c9fd0069 =
  RIP.fromFFIType hs_bindgen_3e0bc579c9fd0069_base

{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_fini = hs_bindgen_3e0bc579c9fd0069

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_translate@
foreign import ccall unsafe "hs_bindgen_0135f5d41eba665e" hs_bindgen_0135f5d41eba665e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_translate@
hs_bindgen_0135f5d41eba665e ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_0135f5d41eba665e =
  RIP.fromFFIType hs_bindgen_0135f5d41eba665e_base

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
  hs_bindgen_0135f5d41eba665e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_copy@
foreign import ccall unsafe "hs_bindgen_b2e9e06a1682e74e" hs_bindgen_b2e9e06a1682e74e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_copy@
hs_bindgen_b2e9e06a1682e74e ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_b2e9e06a1682e74e =
  RIP.fromFFIType hs_bindgen_b2e9e06a1682e74e_base

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
pixman_region32_copy = hs_bindgen_b2e9e06a1682e74e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_intersect@
foreign import ccall unsafe "hs_bindgen_534290e86efa3765" hs_bindgen_534290e86efa3765_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_intersect@
hs_bindgen_534290e86efa3765 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_534290e86efa3765 =
  RIP.fromFFIType hs_bindgen_534290e86efa3765_base

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
  hs_bindgen_534290e86efa3765

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_union@
foreign import ccall unsafe "hs_bindgen_518cefa0fe3f3319" hs_bindgen_518cefa0fe3f3319_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_union@
hs_bindgen_518cefa0fe3f3319 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_518cefa0fe3f3319 =
  RIP.fromFFIType hs_bindgen_518cefa0fe3f3319_base

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
pixman_region32_union = hs_bindgen_518cefa0fe3f3319

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_intersect_rect@
foreign import ccall unsafe "hs_bindgen_28293951e27fe925" hs_bindgen_28293951e27fe925_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_intersect_rect@
hs_bindgen_28293951e27fe925 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_28293951e27fe925 =
  RIP.fromFFIType hs_bindgen_28293951e27fe925_base

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
  hs_bindgen_28293951e27fe925

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_union_rect@
foreign import ccall unsafe "hs_bindgen_1e8aebf1f08eb98a" hs_bindgen_1e8aebf1f08eb98a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_union_rect@
hs_bindgen_1e8aebf1f08eb98a ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_1e8aebf1f08eb98a =
  RIP.fromFFIType hs_bindgen_1e8aebf1f08eb98a_base

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
  hs_bindgen_1e8aebf1f08eb98a

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_subtract@
foreign import ccall unsafe "hs_bindgen_f0de93f4d3eedbda" hs_bindgen_f0de93f4d3eedbda_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_subtract@
hs_bindgen_f0de93f4d3eedbda ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_f0de93f4d3eedbda =
  RIP.fromFFIType hs_bindgen_f0de93f4d3eedbda_base

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
  hs_bindgen_f0de93f4d3eedbda

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_inverse@
foreign import ccall unsafe "hs_bindgen_b638e9aa6a39ec7a" hs_bindgen_b638e9aa6a39ec7a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_inverse@
hs_bindgen_b638e9aa6a39ec7a ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_b638e9aa6a39ec7a =
  RIP.fromFFIType hs_bindgen_b638e9aa6a39ec7a_base

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
pixman_region32_inverse = hs_bindgen_b638e9aa6a39ec7a

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_contains_point@
foreign import ccall unsafe "hs_bindgen_4620083b0ee306ad" hs_bindgen_4620083b0ee306ad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_contains_point@
hs_bindgen_4620083b0ee306ad ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_4620083b0ee306ad =
  RIP.fromFFIType hs_bindgen_4620083b0ee306ad_base

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
  hs_bindgen_4620083b0ee306ad

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_c5cfb28262f3316e" hs_bindgen_c5cfb28262f3316e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_contains_rectangle@
hs_bindgen_c5cfb28262f3316e ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_region_overlap_t
hs_bindgen_c5cfb28262f3316e =
  RIP.fromFFIType hs_bindgen_c5cfb28262f3316e_base

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
  hs_bindgen_c5cfb28262f3316e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_empty@
foreign import ccall unsafe "hs_bindgen_243afb82fd73c28f" hs_bindgen_243afb82fd73c28f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_empty@
hs_bindgen_243afb82fd73c28f ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_243afb82fd73c28f =
  RIP.fromFFIType hs_bindgen_243afb82fd73c28f_base

{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_empty = hs_bindgen_243afb82fd73c28f

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_not_empty@
foreign import ccall unsafe "hs_bindgen_f49ee552aa8874e7" hs_bindgen_f49ee552aa8874e7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_not_empty@
hs_bindgen_f49ee552aa8874e7 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_f49ee552aa8874e7 =
  RIP.fromFFIType hs_bindgen_f49ee552aa8874e7_base

{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_not_empty =
  hs_bindgen_f49ee552aa8874e7

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_extents@
foreign import ccall unsafe "hs_bindgen_3a8a8fb108507479" hs_bindgen_3a8a8fb108507479_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_extents@
hs_bindgen_3a8a8fb108507479 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_3a8a8fb108507479 =
  RIP.fromFFIType hs_bindgen_3a8a8fb108507479_base

{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_extents = hs_bindgen_3a8a8fb108507479

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_n_rects@
foreign import ccall unsafe "hs_bindgen_f86d7ff60b7507cc" hs_bindgen_f86d7ff60b7507cc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_n_rects@
hs_bindgen_f86d7ff60b7507cc ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO RIP.CInt
hs_bindgen_f86d7ff60b7507cc =
  RIP.fromFFIType hs_bindgen_f86d7ff60b7507cc_base

{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region32_n_rects = hs_bindgen_f86d7ff60b7507cc

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_rectangles@
foreign import ccall unsafe "hs_bindgen_5099e00e62af7925" hs_bindgen_5099e00e62af7925_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_rectangles@
hs_bindgen_5099e00e62af7925 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_5099e00e62af7925 =
  RIP.fromFFIType hs_bindgen_5099e00e62af7925_base

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
  hs_bindgen_5099e00e62af7925

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_equal@
foreign import ccall unsafe "hs_bindgen_34de19d19ca41cdc" hs_bindgen_34de19d19ca41cdc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_equal@
hs_bindgen_34de19d19ca41cdc ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_34de19d19ca41cdc =
  RIP.fromFFIType hs_bindgen_34de19d19ca41cdc_base

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
pixman_region32_equal = hs_bindgen_34de19d19ca41cdc

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_selfcheck@
foreign import ccall unsafe "hs_bindgen_22624daca8f947fa" hs_bindgen_22624daca8f947fa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_selfcheck@
hs_bindgen_22624daca8f947fa ::
     RIP.Ptr Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_22624daca8f947fa =
  RIP.fromFFIType hs_bindgen_22624daca8f947fa_base

{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_selfcheck =
  hs_bindgen_22624daca8f947fa

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_reset@
foreign import ccall unsafe "hs_bindgen_36eb34446c169701" hs_bindgen_36eb34446c169701_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_reset@
hs_bindgen_36eb34446c169701 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_36eb34446c169701 =
  RIP.fromFFIType hs_bindgen_36eb34446c169701_base

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
pixman_region32_reset = hs_bindgen_36eb34446c169701

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_clear@
foreign import ccall unsafe "hs_bindgen_ae522b467acb9d04" hs_bindgen_ae522b467acb9d04_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region32_clear@
hs_bindgen_ae522b467acb9d04 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_ae522b467acb9d04 =
  RIP.fromFFIType hs_bindgen_ae522b467acb9d04_base

{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_clear = hs_bindgen_ae522b467acb9d04

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init@
foreign import ccall unsafe "hs_bindgen_96fcfcc61625ed08" hs_bindgen_96fcfcc61625ed08_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init@
hs_bindgen_96fcfcc61625ed08 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_96fcfcc61625ed08 =
  RIP.fromFFIType hs_bindgen_96fcfcc61625ed08_base

{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_init = hs_bindgen_96fcfcc61625ed08

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_rect@
foreign import ccall unsafe "hs_bindgen_99b8845e7f8aef43" hs_bindgen_99b8845e7f8aef43_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_rect@
hs_bindgen_99b8845e7f8aef43 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_99b8845e7f8aef43 =
  RIP.fromFFIType hs_bindgen_99b8845e7f8aef43_base

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
  hs_bindgen_99b8845e7f8aef43

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_rectf@
foreign import ccall unsafe "hs_bindgen_07f89d985da0e240" hs_bindgen_07f89d985da0e240_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_rectf@
hs_bindgen_07f89d985da0e240 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_07f89d985da0e240 =
  RIP.fromFFIType hs_bindgen_07f89d985da0e240_base

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
  hs_bindgen_07f89d985da0e240

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_rects@
foreign import ccall unsafe "hs_bindgen_04b153af48d2446f" hs_bindgen_04b153af48d2446f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_rects@
hs_bindgen_04b153af48d2446f ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_04b153af48d2446f =
  RIP.fromFFIType hs_bindgen_04b153af48d2446f_base

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
  hs_bindgen_04b153af48d2446f

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_with_extents@
foreign import ccall unsafe "hs_bindgen_da9adc4b3c213bec" hs_bindgen_da9adc4b3c213bec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_with_extents@
hs_bindgen_da9adc4b3c213bec ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_da9adc4b3c213bec =
  RIP.fromFFIType hs_bindgen_da9adc4b3c213bec_base

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
  hs_bindgen_da9adc4b3c213bec

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_from_image@
foreign import ccall unsafe "hs_bindgen_359107990b31bace" hs_bindgen_359107990b31bace_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_init_from_image@
hs_bindgen_359107990b31bace ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_359107990b31bace =
  RIP.fromFFIType hs_bindgen_359107990b31bace_base

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
  hs_bindgen_359107990b31bace

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_fini@
foreign import ccall unsafe "hs_bindgen_a82a85c765fd9c61" hs_bindgen_a82a85c765fd9c61_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_fini@
hs_bindgen_a82a85c765fd9c61 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_a82a85c765fd9c61 =
  RIP.fromFFIType hs_bindgen_a82a85c765fd9c61_base

{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_fini = hs_bindgen_a82a85c765fd9c61

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_translate@
foreign import ccall unsafe "hs_bindgen_5cfea7b0d4e893fb" hs_bindgen_5cfea7b0d4e893fb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_translate@
hs_bindgen_5cfea7b0d4e893fb ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_5cfea7b0d4e893fb =
  RIP.fromFFIType hs_bindgen_5cfea7b0d4e893fb_base

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
  hs_bindgen_5cfea7b0d4e893fb

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_translatef@
foreign import ccall unsafe "hs_bindgen_4a3560c6b7188f26" hs_bindgen_4a3560c6b7188f26_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_translatef@
hs_bindgen_4a3560c6b7188f26 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_4a3560c6b7188f26 =
  RIP.fromFFIType hs_bindgen_4a3560c6b7188f26_base

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
  hs_bindgen_4a3560c6b7188f26

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_copy@
foreign import ccall unsafe "hs_bindgen_6d4eb081bd406877" hs_bindgen_6d4eb081bd406877_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_copy@
hs_bindgen_6d4eb081bd406877 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_6d4eb081bd406877 =
  RIP.fromFFIType hs_bindgen_6d4eb081bd406877_base

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
pixman_region64f_copy = hs_bindgen_6d4eb081bd406877

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_intersect@
foreign import ccall unsafe "hs_bindgen_38a00b657e625fb9" hs_bindgen_38a00b657e625fb9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_intersect@
hs_bindgen_38a00b657e625fb9 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_38a00b657e625fb9 =
  RIP.fromFFIType hs_bindgen_38a00b657e625fb9_base

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
  hs_bindgen_38a00b657e625fb9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_union@
foreign import ccall unsafe "hs_bindgen_32bc41799bade25a" hs_bindgen_32bc41799bade25a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_union@
hs_bindgen_32bc41799bade25a ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_32bc41799bade25a =
  RIP.fromFFIType hs_bindgen_32bc41799bade25a_base

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
pixman_region64f_union = hs_bindgen_32bc41799bade25a

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_intersect_rect@
foreign import ccall unsafe "hs_bindgen_72010aad20a9c966" hs_bindgen_72010aad20a9c966_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_intersect_rect@
hs_bindgen_72010aad20a9c966 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_72010aad20a9c966 =
  RIP.fromFFIType hs_bindgen_72010aad20a9c966_base

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
  hs_bindgen_72010aad20a9c966

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_intersect_rectf@
foreign import ccall unsafe "hs_bindgen_a8a59a7318991190" hs_bindgen_a8a59a7318991190_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_intersect_rectf@
hs_bindgen_a8a59a7318991190 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_a8a59a7318991190 =
  RIP.fromFFIType hs_bindgen_a8a59a7318991190_base

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
  hs_bindgen_a8a59a7318991190

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_union_rect@
foreign import ccall unsafe "hs_bindgen_df37c276c1b413be" hs_bindgen_df37c276c1b413be_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_union_rect@
hs_bindgen_df37c276c1b413be ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_df37c276c1b413be =
  RIP.fromFFIType hs_bindgen_df37c276c1b413be_base

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
  hs_bindgen_df37c276c1b413be

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_union_rectf@
foreign import ccall unsafe "hs_bindgen_40489095129eb27f" hs_bindgen_40489095129eb27f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_union_rectf@
hs_bindgen_40489095129eb27f ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_40489095129eb27f =
  RIP.fromFFIType hs_bindgen_40489095129eb27f_base

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
  hs_bindgen_40489095129eb27f

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_subtract@
foreign import ccall unsafe "hs_bindgen_2d29f0d81cc5a3a2" hs_bindgen_2d29f0d81cc5a3a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_subtract@
hs_bindgen_2d29f0d81cc5a3a2 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_2d29f0d81cc5a3a2 =
  RIP.fromFFIType hs_bindgen_2d29f0d81cc5a3a2_base

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
  hs_bindgen_2d29f0d81cc5a3a2

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_inverse@
foreign import ccall unsafe "hs_bindgen_53da501d34c48fcd" hs_bindgen_53da501d34c48fcd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_inverse@
hs_bindgen_53da501d34c48fcd ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_53da501d34c48fcd =
  RIP.fromFFIType hs_bindgen_53da501d34c48fcd_base

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
  hs_bindgen_53da501d34c48fcd

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_contains_point@
foreign import ccall unsafe "hs_bindgen_9eb052a832518dc6" hs_bindgen_9eb052a832518dc6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_contains_point@
hs_bindgen_9eb052a832518dc6 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_9eb052a832518dc6 =
  RIP.fromFFIType hs_bindgen_9eb052a832518dc6_base

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
  hs_bindgen_9eb052a832518dc6

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_contains_pointf@
foreign import ccall unsafe "hs_bindgen_b4fe94a4c780e609" hs_bindgen_b4fe94a4c780e609_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_contains_pointf@
hs_bindgen_b4fe94a4c780e609 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_b4fe94a4c780e609 =
  RIP.fromFFIType hs_bindgen_b4fe94a4c780e609_base

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
  hs_bindgen_b4fe94a4c780e609

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_e7ef67125bd7f978" hs_bindgen_e7ef67125bd7f978_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_contains_rectangle@
hs_bindgen_e7ef67125bd7f978 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_region_overlap_t
hs_bindgen_e7ef67125bd7f978 =
  RIP.fromFFIType hs_bindgen_e7ef67125bd7f978_base

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
  hs_bindgen_e7ef67125bd7f978

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_empty@
foreign import ccall unsafe "hs_bindgen_9eaf8321d13361be" hs_bindgen_9eaf8321d13361be_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_empty@
hs_bindgen_9eaf8321d13361be ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_9eaf8321d13361be =
  RIP.fromFFIType hs_bindgen_9eaf8321d13361be_base

{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_empty = hs_bindgen_9eaf8321d13361be

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_not_empty@
foreign import ccall unsafe "hs_bindgen_f063c7790a53fc15" hs_bindgen_f063c7790a53fc15_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_not_empty@
hs_bindgen_f063c7790a53fc15 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_f063c7790a53fc15 =
  RIP.fromFFIType hs_bindgen_f063c7790a53fc15_base

{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_not_empty =
  hs_bindgen_f063c7790a53fc15

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_extents@
foreign import ccall unsafe "hs_bindgen_d464601cd1ee781d" hs_bindgen_d464601cd1ee781d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_extents@
hs_bindgen_d464601cd1ee781d ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_d464601cd1ee781d =
  RIP.fromFFIType hs_bindgen_d464601cd1ee781d_base

{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_extents =
  hs_bindgen_d464601cd1ee781d

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_n_rects@
foreign import ccall unsafe "hs_bindgen_95bba0ea4d568f04" hs_bindgen_95bba0ea4d568f04_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_n_rects@
hs_bindgen_95bba0ea4d568f04 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO RIP.CInt
hs_bindgen_95bba0ea4d568f04 =
  RIP.fromFFIType hs_bindgen_95bba0ea4d568f04_base

{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region64f_n_rects =
  hs_bindgen_95bba0ea4d568f04

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_rectangles@
foreign import ccall unsafe "hs_bindgen_3fc1366fcdd9b6db" hs_bindgen_3fc1366fcdd9b6db_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_rectangles@
hs_bindgen_3fc1366fcdd9b6db ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_3fc1366fcdd9b6db =
  RIP.fromFFIType hs_bindgen_3fc1366fcdd9b6db_base

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
  hs_bindgen_3fc1366fcdd9b6db

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_equal@
foreign import ccall unsafe "hs_bindgen_8ff69d45ae3ef683" hs_bindgen_8ff69d45ae3ef683_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_equal@
hs_bindgen_8ff69d45ae3ef683 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_8ff69d45ae3ef683 =
  RIP.fromFFIType hs_bindgen_8ff69d45ae3ef683_base

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
pixman_region64f_equal = hs_bindgen_8ff69d45ae3ef683

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_selfcheck@
foreign import ccall unsafe "hs_bindgen_245517a6ecec47fb" hs_bindgen_245517a6ecec47fb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_selfcheck@
hs_bindgen_245517a6ecec47fb ::
     RIP.Ptr Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_245517a6ecec47fb =
  RIP.fromFFIType hs_bindgen_245517a6ecec47fb_base

{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_selfcheck =
  hs_bindgen_245517a6ecec47fb

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_reset@
foreign import ccall unsafe "hs_bindgen_7dc4086cf24e0ae1" hs_bindgen_7dc4086cf24e0ae1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_reset@
hs_bindgen_7dc4086cf24e0ae1 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_7dc4086cf24e0ae1 =
  RIP.fromFFIType hs_bindgen_7dc4086cf24e0ae1_base

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
pixman_region64f_reset = hs_bindgen_7dc4086cf24e0ae1

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_clear@
foreign import ccall unsafe "hs_bindgen_85f828b1a33eafb6" hs_bindgen_85f828b1a33eafb6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_region64f_clear@
hs_bindgen_85f828b1a33eafb6 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_85f828b1a33eafb6 =
  RIP.fromFFIType hs_bindgen_85f828b1a33eafb6_base

{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_clear = hs_bindgen_85f828b1a33eafb6

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_blt@
foreign import ccall unsafe "hs_bindgen_c881c37a35cada1d" hs_bindgen_c881c37a35cada1d_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_blt@
hs_bindgen_c881c37a35cada1d ::
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
hs_bindgen_c881c37a35cada1d =
  RIP.fromFFIType hs_bindgen_c881c37a35cada1d_base

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
pixman_blt = hs_bindgen_c881c37a35cada1d

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_fill@
foreign import ccall unsafe "hs_bindgen_f3a069e24a0b0b89" hs_bindgen_f3a069e24a0b0b89_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_fill@
hs_bindgen_f3a069e24a0b0b89 ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> HsBindgen.Runtime.LibC.Word32
  -> IO Pixman_bool_t
hs_bindgen_f3a069e24a0b0b89 =
  RIP.fromFFIType hs_bindgen_f3a069e24a0b0b89_base

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
pixman_fill = hs_bindgen_f3a069e24a0b0b89

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_version@
foreign import ccall unsafe "hs_bindgen_efc14aa9fe0b7c16" hs_bindgen_efc14aa9fe0b7c16_base ::
     IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_version@
hs_bindgen_efc14aa9fe0b7c16 :: IO RIP.CInt
hs_bindgen_efc14aa9fe0b7c16 =
  RIP.fromFFIType hs_bindgen_efc14aa9fe0b7c16_base

{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: IO RIP.CInt
pixman_version = hs_bindgen_efc14aa9fe0b7c16

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_version_string@
foreign import ccall unsafe "hs_bindgen_5906567f3039c907" hs_bindgen_5906567f3039c907_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_version_string@
hs_bindgen_5906567f3039c907 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_5906567f3039c907 =
  RIP.fromFFIType hs_bindgen_5906567f3039c907_base

{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: IO (PtrConst.PtrConst RIP.CChar)
pixman_version_string = hs_bindgen_5906567f3039c907

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_format_supported_destination@
foreign import ccall unsafe "hs_bindgen_a9bf9abb7365d10c" hs_bindgen_a9bf9abb7365d10c_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_format_supported_destination@
hs_bindgen_a9bf9abb7365d10c ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_a9bf9abb7365d10c =
  RIP.fromFFIType hs_bindgen_a9bf9abb7365d10c_base

{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_destination =
  hs_bindgen_a9bf9abb7365d10c

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_format_supported_source@
foreign import ccall unsafe "hs_bindgen_8bf1199470eb96c8" hs_bindgen_8bf1199470eb96c8_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_format_supported_source@
hs_bindgen_8bf1199470eb96c8 ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_8bf1199470eb96c8 =
  RIP.fromFFIType hs_bindgen_8bf1199470eb96c8_base

{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_source =
  hs_bindgen_8bf1199470eb96c8

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_solid_fill@
foreign import ccall unsafe "hs_bindgen_c10fa33663c01ec2" hs_bindgen_c10fa33663c01ec2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_solid_fill@
hs_bindgen_c10fa33663c01ec2 ::
     PtrConst.PtrConst Pixman_color_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_c10fa33663c01ec2 =
  RIP.fromFFIType hs_bindgen_c10fa33663c01ec2_base

{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill ::
     PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_solid_fill =
  hs_bindgen_c10fa33663c01ec2

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_linear_gradient@
foreign import ccall unsafe "hs_bindgen_dec9bd07234977da" hs_bindgen_dec9bd07234977da_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_linear_gradient@
hs_bindgen_dec9bd07234977da ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_dec9bd07234977da =
  RIP.fromFFIType hs_bindgen_dec9bd07234977da_base

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
  hs_bindgen_dec9bd07234977da

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_radial_gradient@
foreign import ccall unsafe "hs_bindgen_679d489f0511e2f7" hs_bindgen_679d489f0511e2f7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_radial_gradient@
hs_bindgen_679d489f0511e2f7 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_679d489f0511e2f7 =
  RIP.fromFFIType hs_bindgen_679d489f0511e2f7_base

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
  hs_bindgen_679d489f0511e2f7

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_conical_gradient@
foreign import ccall unsafe "hs_bindgen_cc526f5cc7e82ae9" hs_bindgen_cc526f5cc7e82ae9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_conical_gradient@
hs_bindgen_cc526f5cc7e82ae9 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_cc526f5cc7e82ae9 =
  RIP.fromFFIType hs_bindgen_cc526f5cc7e82ae9_base

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
  hs_bindgen_cc526f5cc7e82ae9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_bits@
foreign import ccall unsafe "hs_bindgen_ffc11405cf3cefbd" hs_bindgen_ffc11405cf3cefbd_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_bits@
hs_bindgen_ffc11405cf3cefbd ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_ffc11405cf3cefbd =
  RIP.fromFFIType hs_bindgen_ffc11405cf3cefbd_base

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
  hs_bindgen_ffc11405cf3cefbd

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_bits_no_clear@
foreign import ccall unsafe "hs_bindgen_0f3bd2ba05760d01" hs_bindgen_0f3bd2ba05760d01_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_create_bits_no_clear@
hs_bindgen_0f3bd2ba05760d01 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_0f3bd2ba05760d01 =
  RIP.fromFFIType hs_bindgen_0f3bd2ba05760d01_base

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
  hs_bindgen_0f3bd2ba05760d01

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_ref@
foreign import ccall unsafe "hs_bindgen_0d03171e23458d28" hs_bindgen_0d03171e23458d28_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_ref@
hs_bindgen_0d03171e23458d28 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_0d03171e23458d28 =
  RIP.fromFFIType hs_bindgen_0d03171e23458d28_base

{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_ref = hs_bindgen_0d03171e23458d28

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_unref@
foreign import ccall unsafe "hs_bindgen_f5934f2ac2d32dcf" hs_bindgen_f5934f2ac2d32dcf_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_unref@
hs_bindgen_f5934f2ac2d32dcf ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_f5934f2ac2d32dcf =
  RIP.fromFFIType hs_bindgen_f5934f2ac2d32dcf_base

{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_unref = hs_bindgen_f5934f2ac2d32dcf

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_destroy_function@
foreign import ccall unsafe "hs_bindgen_1e83f8605dc0e81e" hs_bindgen_1e83f8605dc0e81e_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_destroy_function@
hs_bindgen_1e83f8605dc0e81e ::
     RIP.Ptr Pixman_image_t
  -> Pixman_image_destroy_func_t
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1e83f8605dc0e81e =
  RIP.fromFFIType hs_bindgen_1e83f8605dc0e81e_base

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
  hs_bindgen_1e83f8605dc0e81e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_destroy_data@
foreign import ccall unsafe "hs_bindgen_35a73dd7e8d8c436" hs_bindgen_35a73dd7e8d8c436_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_destroy_data@
hs_bindgen_35a73dd7e8d8c436 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_35a73dd7e8d8c436 =
  RIP.fromFFIType hs_bindgen_35a73dd7e8d8c436_base

{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr RIP.Void)
pixman_image_get_destroy_data =
  hs_bindgen_35a73dd7e8d8c436

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_clip_region@
foreign import ccall unsafe "hs_bindgen_db17bdac31e782d9" hs_bindgen_db17bdac31e782d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_clip_region@
hs_bindgen_db17bdac31e782d9 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_db17bdac31e782d9 =
  RIP.fromFFIType hs_bindgen_db17bdac31e782d9_base

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
  hs_bindgen_db17bdac31e782d9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_clip_region32@
foreign import ccall unsafe "hs_bindgen_9632229886b12824" hs_bindgen_9632229886b12824_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_clip_region32@
hs_bindgen_9632229886b12824 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_9632229886b12824 =
  RIP.fromFFIType hs_bindgen_9632229886b12824_base

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
  hs_bindgen_9632229886b12824

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_clip_region64f@
foreign import ccall unsafe "hs_bindgen_07f39ea92139f0c8" hs_bindgen_07f39ea92139f0c8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_clip_region64f@
hs_bindgen_07f39ea92139f0c8 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_07f39ea92139f0c8 =
  RIP.fromFFIType hs_bindgen_07f39ea92139f0c8_base

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
  hs_bindgen_07f39ea92139f0c8

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_has_client_clip@
foreign import ccall unsafe "hs_bindgen_303f99112af7f6b3" hs_bindgen_303f99112af7f6b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_has_client_clip@
hs_bindgen_303f99112af7f6b3 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_303f99112af7f6b3 =
  RIP.fromFFIType hs_bindgen_303f99112af7f6b3_base

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
  hs_bindgen_303f99112af7f6b3

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_transform@
foreign import ccall unsafe "hs_bindgen_fba068762b94071d" hs_bindgen_fba068762b94071d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_transform@
hs_bindgen_fba068762b94071d ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_transform_t
  -> IO Pixman_bool_t
hs_bindgen_fba068762b94071d =
  RIP.fromFFIType hs_bindgen_fba068762b94071d_base

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
  hs_bindgen_fba068762b94071d

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_repeat@
foreign import ccall unsafe "hs_bindgen_884bb546ff9d17e8" hs_bindgen_884bb546ff9d17e8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_repeat@
hs_bindgen_884bb546ff9d17e8 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_repeat_t
  -> IO ()
hs_bindgen_884bb546ff9d17e8 =
  RIP.fromFFIType hs_bindgen_884bb546ff9d17e8_base

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
pixman_image_set_repeat = hs_bindgen_884bb546ff9d17e8

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_dither@
foreign import ccall unsafe "hs_bindgen_c397907a8f437294" hs_bindgen_c397907a8f437294_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_dither@
hs_bindgen_c397907a8f437294 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_dither_t
  -> IO ()
hs_bindgen_c397907a8f437294 =
  RIP.fromFFIType hs_bindgen_c397907a8f437294_base

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
pixman_image_set_dither = hs_bindgen_c397907a8f437294

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_dither_offset@
foreign import ccall unsafe "hs_bindgen_6381d1cafebb3ee8" hs_bindgen_6381d1cafebb3ee8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_dither_offset@
hs_bindgen_6381d1cafebb3ee8 ::
     RIP.Ptr Pixman_image_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_6381d1cafebb3ee8 =
  RIP.fromFFIType hs_bindgen_6381d1cafebb3ee8_base

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
  hs_bindgen_6381d1cafebb3ee8

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_filter@
foreign import ccall unsafe "hs_bindgen_a370c239682ecb8d" hs_bindgen_a370c239682ecb8d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_filter@
hs_bindgen_a370c239682ecb8d ::
     RIP.Ptr Pixman_image_t
  -> Pixman_filter_t
  -> PtrConst.PtrConst Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_a370c239682ecb8d =
  RIP.fromFFIType hs_bindgen_a370c239682ecb8d_base

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
pixman_image_set_filter = hs_bindgen_a370c239682ecb8d

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_source_clipping@
foreign import ccall unsafe "hs_bindgen_6752fa38fac0e9d9" hs_bindgen_6752fa38fac0e9d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_source_clipping@
hs_bindgen_6752fa38fac0e9d9 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_6752fa38fac0e9d9 =
  RIP.fromFFIType hs_bindgen_6752fa38fac0e9d9_base

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
  hs_bindgen_6752fa38fac0e9d9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_alpha_map@
foreign import ccall unsafe "hs_bindgen_99202468b2011640" hs_bindgen_99202468b2011640_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_alpha_map@
hs_bindgen_99202468b2011640 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> IO ()
hs_bindgen_99202468b2011640 =
  RIP.fromFFIType hs_bindgen_99202468b2011640_base

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
  hs_bindgen_99202468b2011640

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_component_alpha@
foreign import ccall unsafe "hs_bindgen_ceeb0ce3f747f515" hs_bindgen_ceeb0ce3f747f515_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_component_alpha@
hs_bindgen_ceeb0ce3f747f515 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_ceeb0ce3f747f515 =
  RIP.fromFFIType hs_bindgen_ceeb0ce3f747f515_base

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
  hs_bindgen_ceeb0ce3f747f515

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_component_alpha@
foreign import ccall unsafe "hs_bindgen_f83d3c6a1721dfb5" hs_bindgen_f83d3c6a1721dfb5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_component_alpha@
hs_bindgen_f83d3c6a1721dfb5 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_f83d3c6a1721dfb5 =
  RIP.fromFFIType hs_bindgen_f83d3c6a1721dfb5_base

{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_get_component_alpha =
  hs_bindgen_f83d3c6a1721dfb5

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_accessors@
foreign import ccall unsafe "hs_bindgen_98cac4965b8c6ec4" hs_bindgen_98cac4965b8c6ec4_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_accessors@
hs_bindgen_98cac4965b8c6ec4 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_read_memory_func_t
  -> Pixman_write_memory_func_t
  -> IO ()
hs_bindgen_98cac4965b8c6ec4 =
  RIP.fromFFIType hs_bindgen_98cac4965b8c6ec4_base

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
  hs_bindgen_98cac4965b8c6ec4

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_indexed@
foreign import ccall unsafe "hs_bindgen_fcbf3b9387283172" hs_bindgen_fcbf3b9387283172_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_set_indexed@
hs_bindgen_fcbf3b9387283172 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_indexed_t
  -> IO ()
hs_bindgen_fcbf3b9387283172 =
  RIP.fromFFIType hs_bindgen_fcbf3b9387283172_base

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
  hs_bindgen_fcbf3b9387283172

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_data@
foreign import ccall unsafe "hs_bindgen_cde8041a063fb6eb" hs_bindgen_cde8041a063fb6eb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_data@
hs_bindgen_cde8041a063fb6eb ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
hs_bindgen_cde8041a063fb6eb =
  RIP.fromFFIType hs_bindgen_cde8041a063fb6eb_base

{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
pixman_image_get_data = hs_bindgen_cde8041a063fb6eb

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_width@
foreign import ccall unsafe "hs_bindgen_e6f0245a956b819a" hs_bindgen_e6f0245a956b819a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_width@
hs_bindgen_e6f0245a956b819a ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_e6f0245a956b819a =
  RIP.fromFFIType hs_bindgen_e6f0245a956b819a_base

{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_width = hs_bindgen_e6f0245a956b819a

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_height@
foreign import ccall unsafe "hs_bindgen_e5626eeeb7e0b641" hs_bindgen_e5626eeeb7e0b641_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_height@
hs_bindgen_e5626eeeb7e0b641 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_e5626eeeb7e0b641 =
  RIP.fromFFIType hs_bindgen_e5626eeeb7e0b641_base

{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_height = hs_bindgen_e5626eeeb7e0b641

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_stride@
foreign import ccall unsafe "hs_bindgen_c3a263f7a32459cf" hs_bindgen_c3a263f7a32459cf_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_stride@
hs_bindgen_c3a263f7a32459cf ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_c3a263f7a32459cf =
  RIP.fromFFIType hs_bindgen_c3a263f7a32459cf_base

{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_stride = hs_bindgen_c3a263f7a32459cf

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_depth@
foreign import ccall unsafe "hs_bindgen_16f892ebbd834eb6" hs_bindgen_16f892ebbd834eb6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_depth@
hs_bindgen_16f892ebbd834eb6 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_16f892ebbd834eb6 =
  RIP.fromFFIType hs_bindgen_16f892ebbd834eb6_base

{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_depth = hs_bindgen_16f892ebbd834eb6

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_format@
foreign import ccall unsafe "hs_bindgen_b10fccd09f1d6247" hs_bindgen_b10fccd09f1d6247_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_get_format@
hs_bindgen_b10fccd09f1d6247 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_format_code_t
hs_bindgen_b10fccd09f1d6247 =
  RIP.fromFFIType hs_bindgen_b10fccd09f1d6247_base

{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_format_code_t
pixman_image_get_format = hs_bindgen_b10fccd09f1d6247

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_filter_create_separable_convolution@
foreign import ccall unsafe "hs_bindgen_6da5d222f6712881" hs_bindgen_6da5d222f6712881_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_filter_create_separable_convolution@
hs_bindgen_6da5d222f6712881 ::
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
hs_bindgen_6da5d222f6712881 =
  RIP.fromFFIType hs_bindgen_6da5d222f6712881_base

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
  hs_bindgen_6da5d222f6712881

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_fill_rectangles@
foreign import ccall unsafe "hs_bindgen_0e10e9a3c2035dd1" hs_bindgen_0e10e9a3c2035dd1_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_fill_rectangles@
hs_bindgen_0e10e9a3c2035dd1 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_rectangle16_t
  -> IO Pixman_bool_t
hs_bindgen_0e10e9a3c2035dd1 =
  RIP.fromFFIType hs_bindgen_0e10e9a3c2035dd1_base

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
  hs_bindgen_0e10e9a3c2035dd1

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_fill_boxes@
foreign import ccall unsafe "hs_bindgen_5cebf2696199527e" hs_bindgen_5cebf2696199527e_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_fill_boxes@
hs_bindgen_5cebf2696199527e ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_5cebf2696199527e =
  RIP.fromFFIType hs_bindgen_5cebf2696199527e_base

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
pixman_image_fill_boxes = hs_bindgen_5cebf2696199527e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_compute_composite_region@
foreign import ccall unsafe "hs_bindgen_6421607e1b6fda46" hs_bindgen_6421607e1b6fda46_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_compute_composite_region@
hs_bindgen_6421607e1b6fda46 ::
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
hs_bindgen_6421607e1b6fda46 =
  RIP.fromFFIType hs_bindgen_6421607e1b6fda46_base

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
  hs_bindgen_6421607e1b6fda46

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_composite@
foreign import ccall unsafe "hs_bindgen_99d079a32e53b40e" hs_bindgen_99d079a32e53b40e_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_composite@
hs_bindgen_99d079a32e53b40e ::
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
hs_bindgen_99d079a32e53b40e =
  RIP.fromFFIType hs_bindgen_99d079a32e53b40e_base

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
pixman_image_composite = hs_bindgen_99d079a32e53b40e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_composite32@
foreign import ccall unsafe "hs_bindgen_03f96826c9d4b52a" hs_bindgen_03f96826c9d4b52a_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_composite32@
hs_bindgen_03f96826c9d4b52a ::
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
hs_bindgen_03f96826c9d4b52a =
  RIP.fromFFIType hs_bindgen_03f96826c9d4b52a_base

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
  hs_bindgen_03f96826c9d4b52a

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_composite64f@
foreign import ccall unsafe "hs_bindgen_50e16b1db12d3bc8" hs_bindgen_50e16b1db12d3bc8_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_image_composite64f@
hs_bindgen_50e16b1db12d3bc8 ::
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
hs_bindgen_50e16b1db12d3bc8 =
  RIP.fromFFIType hs_bindgen_50e16b1db12d3bc8_base

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
  hs_bindgen_50e16b1db12d3bc8

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_disable_out_of_bounds_workaround@
foreign import ccall unsafe "hs_bindgen_2fff28dc4b784d1c" hs_bindgen_2fff28dc4b784d1c_base ::
     IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_disable_out_of_bounds_workaround@
hs_bindgen_2fff28dc4b784d1c :: IO ()
hs_bindgen_2fff28dc4b784d1c =
  RIP.fromFFIType hs_bindgen_2fff28dc4b784d1c_base

{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: IO ()
pixman_disable_out_of_bounds_workaround =
  hs_bindgen_2fff28dc4b784d1c

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_create@
foreign import ccall unsafe "hs_bindgen_2dce4f507c1d47df" hs_bindgen_2dce4f507c1d47df_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_create@
hs_bindgen_2dce4f507c1d47df :: IO (RIP.Ptr Pixman_glyph_cache_t)
hs_bindgen_2dce4f507c1d47df =
  RIP.fromFFIType hs_bindgen_2dce4f507c1d47df_base

{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: IO (RIP.Ptr Pixman_glyph_cache_t)
pixman_glyph_cache_create =
  hs_bindgen_2dce4f507c1d47df

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_destroy@
foreign import ccall unsafe "hs_bindgen_7f9573ebd54b4a19" hs_bindgen_7f9573ebd54b4a19_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_destroy@
hs_bindgen_7f9573ebd54b4a19 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_7f9573ebd54b4a19 =
  RIP.fromFFIType hs_bindgen_7f9573ebd54b4a19_base

{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_destroy =
  hs_bindgen_7f9573ebd54b4a19

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_freeze@
foreign import ccall unsafe "hs_bindgen_fc7ee0b277c5755c" hs_bindgen_fc7ee0b277c5755c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_freeze@
hs_bindgen_fc7ee0b277c5755c ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_fc7ee0b277c5755c =
  RIP.fromFFIType hs_bindgen_fc7ee0b277c5755c_base

{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_freeze =
  hs_bindgen_fc7ee0b277c5755c

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_thaw@
foreign import ccall unsafe "hs_bindgen_d5d51a2f00b47a95" hs_bindgen_d5d51a2f00b47a95_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_thaw@
hs_bindgen_d5d51a2f00b47a95 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_d5d51a2f00b47a95 =
  RIP.fromFFIType hs_bindgen_d5d51a2f00b47a95_base

{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_thaw = hs_bindgen_d5d51a2f00b47a95

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_lookup@
foreign import ccall unsafe "hs_bindgen_0217b38d4eb03388" hs_bindgen_0217b38d4eb03388_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_lookup@
hs_bindgen_0217b38d4eb03388 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_0217b38d4eb03388 =
  RIP.fromFFIType hs_bindgen_0217b38d4eb03388_base

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
  hs_bindgen_0217b38d4eb03388

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_insert@
foreign import ccall unsafe "hs_bindgen_0a87abbfd1d3e0c4" hs_bindgen_0a87abbfd1d3e0c4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_insert@
hs_bindgen_0a87abbfd1d3e0c4 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_image_t
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_0a87abbfd1d3e0c4 =
  RIP.fromFFIType hs_bindgen_0a87abbfd1d3e0c4_base

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
  hs_bindgen_0a87abbfd1d3e0c4

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_remove@
foreign import ccall unsafe "hs_bindgen_7a659c2f69b27f6e" hs_bindgen_7a659c2f69b27f6e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_cache_remove@
hs_bindgen_7a659c2f69b27f6e ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7a659c2f69b27f6e =
  RIP.fromFFIType hs_bindgen_7a659c2f69b27f6e_base

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
  hs_bindgen_7a659c2f69b27f6e

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_get_extents@
foreign import ccall unsafe "hs_bindgen_4c90190896bc8553" hs_bindgen_4c90190896bc8553_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_get_extents@
hs_bindgen_4c90190896bc8553 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> RIP.Ptr Pixman_glyph_t
  -> RIP.Ptr Pixman_box32_t
  -> IO ()
hs_bindgen_4c90190896bc8553 =
  RIP.fromFFIType hs_bindgen_4c90190896bc8553_base

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
  hs_bindgen_4c90190896bc8553

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_get_mask_format@
foreign import ccall unsafe "hs_bindgen_f6fc98fcaf0468e8" hs_bindgen_f6fc98fcaf0468e8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_glyph_get_mask_format@
hs_bindgen_f6fc98fcaf0468e8 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO Pixman_format_code_t
hs_bindgen_f6fc98fcaf0468e8 =
  RIP.fromFFIType hs_bindgen_f6fc98fcaf0468e8_base

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
  hs_bindgen_f6fc98fcaf0468e8

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_glyphs@
foreign import ccall unsafe "hs_bindgen_0bb92ac792bff335" hs_bindgen_0bb92ac792bff335_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_glyphs@
hs_bindgen_0bb92ac792bff335 ::
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
hs_bindgen_0bb92ac792bff335 =
  RIP.fromFFIType hs_bindgen_0bb92ac792bff335_base

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
pixman_composite_glyphs = hs_bindgen_0bb92ac792bff335

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_glyphs_no_mask@
foreign import ccall unsafe "hs_bindgen_1907fab783d486f9" hs_bindgen_1907fab783d486f9_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_glyphs_no_mask@
hs_bindgen_1907fab783d486f9 ::
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
hs_bindgen_1907fab783d486f9 =
  RIP.fromFFIType hs_bindgen_1907fab783d486f9_base

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
  hs_bindgen_1907fab783d486f9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_sample_ceil_y@
foreign import ccall unsafe "hs_bindgen_0a1a8e682d4cfe46" hs_bindgen_0a1a8e682d4cfe46_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_sample_ceil_y@
hs_bindgen_0a1a8e682d4cfe46 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_0a1a8e682d4cfe46 =
  RIP.fromFFIType hs_bindgen_0a1a8e682d4cfe46_base

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
pixman_sample_ceil_y = hs_bindgen_0a1a8e682d4cfe46

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_sample_floor_y@
foreign import ccall unsafe "hs_bindgen_966521a3a5aa84cb" hs_bindgen_966521a3a5aa84cb_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_sample_floor_y@
hs_bindgen_966521a3a5aa84cb ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_966521a3a5aa84cb =
  RIP.fromFFIType hs_bindgen_966521a3a5aa84cb_base

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
pixman_sample_floor_y = hs_bindgen_966521a3a5aa84cb

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_edge_step@
foreign import ccall unsafe "hs_bindgen_b6d98dc13da8d4b9" hs_bindgen_b6d98dc13da8d4b9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_edge_step@
hs_bindgen_b6d98dc13da8d4b9 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> IO ()
hs_bindgen_b6d98dc13da8d4b9 =
  RIP.fromFFIType hs_bindgen_b6d98dc13da8d4b9_base

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
pixman_edge_step = hs_bindgen_b6d98dc13da8d4b9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_edge_init@
foreign import ccall unsafe "hs_bindgen_75a72677daafb021" hs_bindgen_75a72677daafb021_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_edge_init@
hs_bindgen_75a72677daafb021 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_75a72677daafb021 =
  RIP.fromFFIType hs_bindgen_75a72677daafb021_base

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
pixman_edge_init = hs_bindgen_75a72677daafb021

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_line_fixed_edge_init@
foreign import ccall unsafe "hs_bindgen_aa38d71ecd05ae29" hs_bindgen_aa38d71ecd05ae29_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_line_fixed_edge_init@
hs_bindgen_aa38d71ecd05ae29 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_line_fixed_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_aa38d71ecd05ae29 =
  RIP.fromFFIType hs_bindgen_aa38d71ecd05ae29_base

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
  hs_bindgen_aa38d71ecd05ae29

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_rasterize_edges@
foreign import ccall unsafe "hs_bindgen_43bd0fa4b153be0d" hs_bindgen_43bd0fa4b153be0d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_rasterize_edges@
hs_bindgen_43bd0fa4b153be0d ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_edge_t
  -> RIP.Ptr Pixman_edge_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_43bd0fa4b153be0d =
  RIP.fromFFIType hs_bindgen_43bd0fa4b153be0d_base

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
pixman_rasterize_edges = hs_bindgen_43bd0fa4b153be0d

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_add_traps@
foreign import ccall unsafe "hs_bindgen_e0dcd63311d581c4" hs_bindgen_e0dcd63311d581c4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_add_traps@
hs_bindgen_e0dcd63311d581c4 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trap_t
  -> IO ()
hs_bindgen_e0dcd63311d581c4 =
  RIP.fromFFIType hs_bindgen_e0dcd63311d581c4_base

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
pixman_add_traps = hs_bindgen_e0dcd63311d581c4

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_add_trapezoids@
foreign import ccall unsafe "hs_bindgen_afcabd1726f7451f" hs_bindgen_afcabd1726f7451f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_add_trapezoids@
hs_bindgen_afcabd1726f7451f ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_afcabd1726f7451f =
  RIP.fromFFIType hs_bindgen_afcabd1726f7451f_base

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
pixman_add_trapezoids = hs_bindgen_afcabd1726f7451f

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_rasterize_trapezoid@
foreign import ccall unsafe "hs_bindgen_848649e084d482f9" hs_bindgen_848649e084d482f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_rasterize_trapezoid@
hs_bindgen_848649e084d482f9 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_848649e084d482f9 =
  RIP.fromFFIType hs_bindgen_848649e084d482f9_base

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
  hs_bindgen_848649e084d482f9

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_trapezoids@
foreign import ccall unsafe "hs_bindgen_2b99869d5aca1de5" hs_bindgen_2b99869d5aca1de5_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_trapezoids@
hs_bindgen_2b99869d5aca1de5 ::
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
hs_bindgen_2b99869d5aca1de5 =
  RIP.fromFFIType hs_bindgen_2b99869d5aca1de5_base

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
  hs_bindgen_2b99869d5aca1de5

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_triangles@
foreign import ccall unsafe "hs_bindgen_cadaa8e444792f33" hs_bindgen_cadaa8e444792f33_base ::
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

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_composite_triangles@
hs_bindgen_cadaa8e444792f33 ::
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
hs_bindgen_cadaa8e444792f33 =
  RIP.fromFFIType hs_bindgen_cadaa8e444792f33_base

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
  hs_bindgen_cadaa8e444792f33

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_add_triangles@
foreign import ccall unsafe "hs_bindgen_bbf26aabf36bccf5" hs_bindgen_bbf26aabf36bccf5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Generated.Pixman_Unsafe_pixman_add_triangles@
hs_bindgen_bbf26aabf36bccf5 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_bbf26aabf36bccf5 =
  RIP.fromFFIType hs_bindgen_bbf26aabf36bccf5_base

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
pixman_add_triangles = hs_bindgen_bbf26aabf36bccf5
