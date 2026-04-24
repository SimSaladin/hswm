{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Pixman.Generated.Safe
    ( Bindings.Pixman.Generated.Safe.pixman_transform_init_identity
    , Bindings.Pixman.Generated.Safe.pixman_transform_point_3d
    , Bindings.Pixman.Generated.Safe.pixman_transform_point
    , Bindings.Pixman.Generated.Safe.pixman_transform_multiply
    , Bindings.Pixman.Generated.Safe.pixman_transform_init_scale
    , Bindings.Pixman.Generated.Safe.pixman_transform_scale
    , Bindings.Pixman.Generated.Safe.pixman_transform_init_rotate
    , Bindings.Pixman.Generated.Safe.pixman_transform_rotate
    , Bindings.Pixman.Generated.Safe.pixman_transform_init_translate
    , Bindings.Pixman.Generated.Safe.pixman_transform_translate
    , Bindings.Pixman.Generated.Safe.pixman_transform_bounds
    , Bindings.Pixman.Generated.Safe.pixman_transform_invert
    , Bindings.Pixman.Generated.Safe.pixman_transform_is_identity
    , Bindings.Pixman.Generated.Safe.pixman_transform_is_scale
    , Bindings.Pixman.Generated.Safe.pixman_transform_is_int_translate
    , Bindings.Pixman.Generated.Safe.pixman_transform_is_inverse
    , Bindings.Pixman.Generated.Safe.pixman_transform_from_pixman_f_transform
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_from_pixman_transform
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_invert
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_point
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_point_3d
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_multiply
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_init_scale
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_scale
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_init_rotate
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_rotate
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_init_translate
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_translate
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_bounds
    , Bindings.Pixman.Generated.Safe.pixman_f_transform_init_identity
    , Bindings.Pixman.Generated.Safe.pixman_region_set_static_pointers
    , Bindings.Pixman.Generated.Safe.pixman_region_init
    , Bindings.Pixman.Generated.Safe.pixman_region_init_rect
    , Bindings.Pixman.Generated.Safe.pixman_region_init_rects
    , Bindings.Pixman.Generated.Safe.pixman_region_init_with_extents
    , Bindings.Pixman.Generated.Safe.pixman_region_init_from_image
    , Bindings.Pixman.Generated.Safe.pixman_region_fini
    , Bindings.Pixman.Generated.Safe.pixman_region_translate
    , Bindings.Pixman.Generated.Safe.pixman_region_copy
    , Bindings.Pixman.Generated.Safe.pixman_region_intersect
    , Bindings.Pixman.Generated.Safe.pixman_region_union
    , Bindings.Pixman.Generated.Safe.pixman_region_union_rect
    , Bindings.Pixman.Generated.Safe.pixman_region_intersect_rect
    , Bindings.Pixman.Generated.Safe.pixman_region_subtract
    , Bindings.Pixman.Generated.Safe.pixman_region_inverse
    , Bindings.Pixman.Generated.Safe.pixman_region_contains_point
    , Bindings.Pixman.Generated.Safe.pixman_region_contains_rectangle
    , Bindings.Pixman.Generated.Safe.pixman_region_empty
    , Bindings.Pixman.Generated.Safe.pixman_region_not_empty
    , Bindings.Pixman.Generated.Safe.pixman_region_extents
    , Bindings.Pixman.Generated.Safe.pixman_region_n_rects
    , Bindings.Pixman.Generated.Safe.pixman_region_rectangles
    , Bindings.Pixman.Generated.Safe.pixman_region_equal
    , Bindings.Pixman.Generated.Safe.pixman_region_selfcheck
    , Bindings.Pixman.Generated.Safe.pixman_region_reset
    , Bindings.Pixman.Generated.Safe.pixman_region_clear
    , Bindings.Pixman.Generated.Safe.pixman_region32_init
    , Bindings.Pixman.Generated.Safe.pixman_region32_init_rect
    , Bindings.Pixman.Generated.Safe.pixman_region32_init_rects
    , Bindings.Pixman.Generated.Safe.pixman_region32_init_with_extents
    , Bindings.Pixman.Generated.Safe.pixman_region32_init_from_image
    , Bindings.Pixman.Generated.Safe.pixman_region32_fini
    , Bindings.Pixman.Generated.Safe.pixman_region32_translate
    , Bindings.Pixman.Generated.Safe.pixman_region32_copy
    , Bindings.Pixman.Generated.Safe.pixman_region32_intersect
    , Bindings.Pixman.Generated.Safe.pixman_region32_union
    , Bindings.Pixman.Generated.Safe.pixman_region32_intersect_rect
    , Bindings.Pixman.Generated.Safe.pixman_region32_union_rect
    , Bindings.Pixman.Generated.Safe.pixman_region32_subtract
    , Bindings.Pixman.Generated.Safe.pixman_region32_inverse
    , Bindings.Pixman.Generated.Safe.pixman_region32_contains_point
    , Bindings.Pixman.Generated.Safe.pixman_region32_contains_rectangle
    , Bindings.Pixman.Generated.Safe.pixman_region32_empty
    , Bindings.Pixman.Generated.Safe.pixman_region32_not_empty
    , Bindings.Pixman.Generated.Safe.pixman_region32_extents
    , Bindings.Pixman.Generated.Safe.pixman_region32_n_rects
    , Bindings.Pixman.Generated.Safe.pixman_region32_rectangles
    , Bindings.Pixman.Generated.Safe.pixman_region32_equal
    , Bindings.Pixman.Generated.Safe.pixman_region32_selfcheck
    , Bindings.Pixman.Generated.Safe.pixman_region32_reset
    , Bindings.Pixman.Generated.Safe.pixman_region32_clear
    , Bindings.Pixman.Generated.Safe.pixman_region64f_init
    , Bindings.Pixman.Generated.Safe.pixman_region64f_init_rect
    , Bindings.Pixman.Generated.Safe.pixman_region64f_init_rectf
    , Bindings.Pixman.Generated.Safe.pixman_region64f_init_rects
    , Bindings.Pixman.Generated.Safe.pixman_region64f_init_with_extents
    , Bindings.Pixman.Generated.Safe.pixman_region64f_init_from_image
    , Bindings.Pixman.Generated.Safe.pixman_region64f_fini
    , Bindings.Pixman.Generated.Safe.pixman_region64f_translate
    , Bindings.Pixman.Generated.Safe.pixman_region64f_translatef
    , Bindings.Pixman.Generated.Safe.pixman_region64f_copy
    , Bindings.Pixman.Generated.Safe.pixman_region64f_intersect
    , Bindings.Pixman.Generated.Safe.pixman_region64f_union
    , Bindings.Pixman.Generated.Safe.pixman_region64f_intersect_rect
    , Bindings.Pixman.Generated.Safe.pixman_region64f_intersect_rectf
    , Bindings.Pixman.Generated.Safe.pixman_region64f_union_rect
    , Bindings.Pixman.Generated.Safe.pixman_region64f_union_rectf
    , Bindings.Pixman.Generated.Safe.pixman_region64f_subtract
    , Bindings.Pixman.Generated.Safe.pixman_region64f_inverse
    , Bindings.Pixman.Generated.Safe.pixman_region64f_contains_point
    , Bindings.Pixman.Generated.Safe.pixman_region64f_contains_pointf
    , Bindings.Pixman.Generated.Safe.pixman_region64f_contains_rectangle
    , Bindings.Pixman.Generated.Safe.pixman_region64f_empty
    , Bindings.Pixman.Generated.Safe.pixman_region64f_not_empty
    , Bindings.Pixman.Generated.Safe.pixman_region64f_extents
    , Bindings.Pixman.Generated.Safe.pixman_region64f_n_rects
    , Bindings.Pixman.Generated.Safe.pixman_region64f_rectangles
    , Bindings.Pixman.Generated.Safe.pixman_region64f_equal
    , Bindings.Pixman.Generated.Safe.pixman_region64f_selfcheck
    , Bindings.Pixman.Generated.Safe.pixman_region64f_reset
    , Bindings.Pixman.Generated.Safe.pixman_region64f_clear
    , Bindings.Pixman.Generated.Safe.pixman_blt
    , Bindings.Pixman.Generated.Safe.pixman_fill
    , Bindings.Pixman.Generated.Safe.pixman_version
    , Bindings.Pixman.Generated.Safe.pixman_version_string
    , Bindings.Pixman.Generated.Safe.pixman_format_supported_destination
    , Bindings.Pixman.Generated.Safe.pixman_format_supported_source
    , Bindings.Pixman.Generated.Safe.pixman_image_create_solid_fill
    , Bindings.Pixman.Generated.Safe.pixman_image_create_linear_gradient
    , Bindings.Pixman.Generated.Safe.pixman_image_create_radial_gradient
    , Bindings.Pixman.Generated.Safe.pixman_image_create_conical_gradient
    , Bindings.Pixman.Generated.Safe.pixman_image_create_bits
    , Bindings.Pixman.Generated.Safe.pixman_image_create_bits_no_clear
    , Bindings.Pixman.Generated.Safe.pixman_image_ref
    , Bindings.Pixman.Generated.Safe.pixman_image_unref
    , Bindings.Pixman.Generated.Safe.pixman_image_set_destroy_function
    , Bindings.Pixman.Generated.Safe.pixman_image_get_destroy_data
    , Bindings.Pixman.Generated.Safe.pixman_image_set_clip_region
    , Bindings.Pixman.Generated.Safe.pixman_image_set_clip_region32
    , Bindings.Pixman.Generated.Safe.pixman_image_set_clip_region64f
    , Bindings.Pixman.Generated.Safe.pixman_image_set_has_client_clip
    , Bindings.Pixman.Generated.Safe.pixman_image_set_transform
    , Bindings.Pixman.Generated.Safe.pixman_image_set_repeat
    , Bindings.Pixman.Generated.Safe.pixman_image_set_dither
    , Bindings.Pixman.Generated.Safe.pixman_image_set_dither_offset
    , Bindings.Pixman.Generated.Safe.pixman_image_set_filter
    , Bindings.Pixman.Generated.Safe.pixman_image_set_source_clipping
    , Bindings.Pixman.Generated.Safe.pixman_image_set_alpha_map
    , Bindings.Pixman.Generated.Safe.pixman_image_set_component_alpha
    , Bindings.Pixman.Generated.Safe.pixman_image_get_component_alpha
    , Bindings.Pixman.Generated.Safe.pixman_image_set_accessors
    , Bindings.Pixman.Generated.Safe.pixman_image_set_indexed
    , Bindings.Pixman.Generated.Safe.pixman_image_get_data
    , Bindings.Pixman.Generated.Safe.pixman_image_get_width
    , Bindings.Pixman.Generated.Safe.pixman_image_get_height
    , Bindings.Pixman.Generated.Safe.pixman_image_get_stride
    , Bindings.Pixman.Generated.Safe.pixman_image_get_depth
    , Bindings.Pixman.Generated.Safe.pixman_image_get_format
    , Bindings.Pixman.Generated.Safe.pixman_filter_create_separable_convolution
    , Bindings.Pixman.Generated.Safe.pixman_image_fill_rectangles
    , Bindings.Pixman.Generated.Safe.pixman_image_fill_boxes
    , Bindings.Pixman.Generated.Safe.pixman_compute_composite_region
    , Bindings.Pixman.Generated.Safe.pixman_image_composite
    , Bindings.Pixman.Generated.Safe.pixman_image_composite32
    , Bindings.Pixman.Generated.Safe.pixman_image_composite64f
    , Bindings.Pixman.Generated.Safe.pixman_disable_out_of_bounds_workaround
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_create
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_destroy
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_freeze
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_thaw
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_lookup
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_insert
    , Bindings.Pixman.Generated.Safe.pixman_glyph_cache_remove
    , Bindings.Pixman.Generated.Safe.pixman_glyph_get_extents
    , Bindings.Pixman.Generated.Safe.pixman_glyph_get_mask_format
    , Bindings.Pixman.Generated.Safe.pixman_composite_glyphs
    , Bindings.Pixman.Generated.Safe.pixman_composite_glyphs_no_mask
    , Bindings.Pixman.Generated.Safe.pixman_sample_ceil_y
    , Bindings.Pixman.Generated.Safe.pixman_sample_floor_y
    , Bindings.Pixman.Generated.Safe.pixman_edge_step
    , Bindings.Pixman.Generated.Safe.pixman_edge_init
    , Bindings.Pixman.Generated.Safe.pixman_line_fixed_edge_init
    , Bindings.Pixman.Generated.Safe.pixman_rasterize_edges
    , Bindings.Pixman.Generated.Safe.pixman_add_traps
    , Bindings.Pixman.Generated.Safe.pixman_add_trapezoids
    , Bindings.Pixman.Generated.Safe.pixman_rasterize_trapezoid
    , Bindings.Pixman.Generated.Safe.pixman_composite_trapezoids
    , Bindings.Pixman.Generated.Safe.pixman_composite_triangles
    , Bindings.Pixman.Generated.Safe.pixman_add_triangles
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Pixman.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <pixman.h>"
  , "void hs_bindgen_d283ca2da0636662 ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_transform_init_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_356409e19f47e0b5 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point_3d)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_88885a0270bba45e ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_a0d3554c83a6ea48 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return (pixman_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9c249053abba4265 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_52085e11cc34a4f2 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c95f164ab7d06c9a ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_78090ca21dbe1d7d ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_46b171c1a8d32be0 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_b35147fa552c6290 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_7fb768d8dc456d43 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_bounds)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_54fffb93af6b1db4 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_d8708d5172946e71 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_09e1b67cd339d60a ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_scale)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_732e1f3bb99f00a7 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_int_translate)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_09153e5dec3b7b3a ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_is_inverse)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_75eb1c94a957c267 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_from_pixman_f_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_8eebd3ff06bf854b ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_from_pixman_transform)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_6498954da0ad774d ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e66dee5afa0e5eac ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_point)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6a326b56a3990d40 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_point_3d)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_efdbd8921a39fd84 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_519b3d057e0f4801 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_027ba5005899389e ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_2dcdd47026e0a2f7 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1d96abd8562844bb ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_fdfd23f54ceece44 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_584764d6595f5524 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_6b8f97d5fe03594e ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_bounds)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1f5a1f98fa10dff3 ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_identity)(arg1);"
  , "}"
  , "void hs_bindgen_61b3316044cdd074 ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  (pixman_region_set_static_pointers)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_590bbcfebafb5d92 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_init)(arg1);"
  , "}"
  , "void hs_bindgen_2fff79ca9eb81854 ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_d33ad4849eae0609 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4a09683891f4c9cb ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fa7b0c00840dd529 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_87a693258fde955c ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_fini)(arg1);"
  , "}"
  , "void hs_bindgen_621eddc9b22634fd ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_4a4d6bd1690a0566 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_c72b619412f37700 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_85b12be728478128 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_80603cc57e91a839 ("
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
  , "pixman_bool_t hs_bindgen_0d57871421835481 ("
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
  , "pixman_bool_t hs_bindgen_872102cd674ff355 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_b61d278e9a5394a8 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7051bfc5cc34f323 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_d4952d236c63c35c ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e7ea002120611c61 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_cd5916c71b61cf9a ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_not_empty)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_85d429df259a1d6b ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_abeb4c7078d4ff55 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_n_rects)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_b05b200d4ff0be12 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_72f241535c6e8c54 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9418b8821cb8075a ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_5ea01a6ff80418dc ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0303a80e1711a5e6 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_clear)(arg1);"
  , "}"
  , "void hs_bindgen_13bb85d10a89affe ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_init)(arg1);"
  , "}"
  , "void hs_bindgen_4f4c0216696b546d ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region32_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_b60384f465ef3af7 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5070f8ef0d26f7bf ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_13f0d429e59ca6d5 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bca0d2f8418e7924 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_fini)(arg1);"
  , "}"
  , "void hs_bindgen_aa704eab5d5695a2 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region32_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9e019df25d2613a8 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b7c8f27e61a51223 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_4cb1f411a49a0507 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_fc58cf71b24f3b74 ("
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
  , "pixman_bool_t hs_bindgen_86ec55c571362472 ("
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
  , "pixman_bool_t hs_bindgen_35ae4eb0030d85bd ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d09475cb5e61f5bc ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_e97c0f2079a528c3 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_35c860481ab93d75 ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_a90406ffabe281c8 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_179c26bedf74cd86 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_not_empty)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_46b17692e8719c82 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_26f29160baa74a4a ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_n_rects)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_be67d857dd59a026 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_1c8ed7f277825d8b ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f7598d637556451a ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_77a483cacdff7194 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5864df472dd2877d ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_clear)(arg1);"
  , "}"
  , "void hs_bindgen_fe2e396d582d890e ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_init)(arg1);"
  , "}"
  , "void hs_bindgen_f994da446775bceb ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_567df8e2e4ee9ef6 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rectf)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_3f4dc26f86a4c1f9 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b2030619c0a5ea21 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d47990abe2c6698f ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d827ccf847dc2a74 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_fini)(arg1);"
  , "}"
  , "void hs_bindgen_68a4d3d9b7862503 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translate)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7d8673923ab47c0d ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translatef)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_865913862ef7b730 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_da0d3f889ae87303 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_77e46edebc468321 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_ed1fec84ef2143f9 ("
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
  , "pixman_bool_t hs_bindgen_bcd24fb81b67d4d5 ("
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
  , "pixman_bool_t hs_bindgen_efbc31733323a067 ("
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
  , "pixman_bool_t hs_bindgen_e9663d8488eb3b5e ("
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
  , "pixman_bool_t hs_bindgen_ef2368bb17e1f83a ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d8929d20996a7710 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_366b0613acc2c3bc ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_8539995f109c5d57 ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_pointf)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_17419943c666f9a2 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_504668011e9d56e1 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_c4f82c6197907ac7 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_not_empty)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_9976ecf9e9b49d17 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_243590cc71cf869b ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_n_rects)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_6a2a69515477de8d ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_c41f7c4a88b246dc ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b2a2ce81ca547167 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_a68546fd0a82c3ec ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a281ed67d8042a5d ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_clear)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_57d2285d468888c0 ("
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
  , "pixman_bool_t hs_bindgen_d335d4cd75c75508 ("
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
  , "signed int hs_bindgen_80ac8181d1fdb253 (void)"
  , "{"
  , "  return (pixman_version)();"
  , "}"
  , "char const *hs_bindgen_939d158fb6df2774 (void)"
  , "{"
  , "  return (pixman_version_string)();"
  , "}"
  , "pixman_bool_t hs_bindgen_5de303264137479d ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_destination)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_387aa1394d7e487a ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_source)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_7ec2f35030d46427 ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_create_solid_fill)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_ca6b267f68e2b257 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_linear_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_6b9a1174022827dc ("
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
  , "pixman_image_t *hs_bindgen_8d43130c4acbc182 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_conical_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_62495ecfb59215cf ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_20b9b31b12408013 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits_no_clear)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_e0c07d3f6d20b2ad ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_ref)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_178b6725ee7c7817 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_unref)(arg1);"
  , "}"
  , "void hs_bindgen_3a373570f7697f41 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_destroy_function)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_ca16efbc2dbb44c6 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_destroy_data)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_46a9f7b7818dc27e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f7d595cb2d8cf07d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region32)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_3a911cf268f2c84e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region64f)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c97c0e576d9336bd ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_has_client_clip)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_a4a167352137fc07 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7fc6462aa3f2d70d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_repeat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_cc773f59195dc81e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_dither)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_dc53e6f3916960bf ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_dither_offset)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_12238d844cc7186f ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_set_filter)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_13fa96d8539737f6 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_source_clipping)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_61d412b43d21d5b4 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  (pixman_image_set_alpha_map)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_8e78a200f1f72b13 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_component_alpha)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_2193a50de9b4ef32 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_component_alpha)(arg1);"
  , "}"
  , "void hs_bindgen_f25b120893b49e71 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_accessors)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_07c06ae1c49dfb87 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_indexed)(arg1, arg2);"
  , "}"
  , "uint32_t *hs_bindgen_1cd4751cd24303ca ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_data)(arg1);"
  , "}"
  , "signed int hs_bindgen_a5f33e66b1f3b77d ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_width)(arg1);"
  , "}"
  , "signed int hs_bindgen_5d4ffdc88c6c8f2d ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_height)(arg1);"
  , "}"
  , "signed int hs_bindgen_38af6f58fc4c1b94 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_stride)(arg1);"
  , "}"
  , "signed int hs_bindgen_efd5af03a201ccc1 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_depth)(arg1);"
  , "}"
  , "pixman_format_code_t hs_bindgen_0ceccdd4986c6d93 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_format)(arg1);"
  , "}"
  , "pixman_fixed_t *hs_bindgen_b5952fa95805af85 ("
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
  , "pixman_bool_t hs_bindgen_58a34fd644dbe9b5 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_rectangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_ebd9d9cba2ca6129 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_boxes)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_a2ea73998d269053 ("
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
  , "void hs_bindgen_d310996bf54da18d ("
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
  , "void hs_bindgen_014d34cfe2de2954 ("
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
  , "void hs_bindgen_5c1edec53575f24c ("
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
  , "void hs_bindgen_75332d420bb145a9 (void)"
  , "{"
  , "  (pixman_disable_out_of_bounds_workaround)();"
  , "}"
  , "pixman_glyph_cache_t *hs_bindgen_e732ba8c72ad6982 (void)"
  , "{"
  , "  return (pixman_glyph_cache_create)();"
  , "}"
  , "void hs_bindgen_c63287dece0f0304 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_de42b7344bb0525e ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_freeze)(arg1);"
  , "}"
  , "void hs_bindgen_8f2b295ba3100efb ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_thaw)(arg1);"
  , "}"
  , "void const *hs_bindgen_485d1d7489cd328a ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_lookup)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_661b60fbe55ee24a ("
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
  , "void hs_bindgen_ef19993e919c2c8a ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_remove)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_166af9479c639170 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  (pixman_glyph_get_extents)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_format_code_t hs_bindgen_0be14b5aefa01d15 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_get_mask_format)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a2b8464e7ea97b9c ("
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
  , "void hs_bindgen_2fb54f94cd511c64 ("
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
  , "pixman_fixed_t hs_bindgen_1fdad2e76d58fb61 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_ceil_y)(arg1, arg2);"
  , "}"
  , "pixman_fixed_t hs_bindgen_f4d62db1a50be1ba ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_floor_y)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e2eb42c0b8bb49c4 ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  (pixman_edge_step)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_11c6f5f5c5c46c1d ("
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
  , "void hs_bindgen_09cfbe6ea1306071 ("
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
  , "void hs_bindgen_52547bec79bb89b1 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  (pixman_rasterize_edges)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_18c249c14074ac46 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_traps)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_a3e2605d46afb6c2 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_trapezoids)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_ddcd350724aea3e6 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  (pixman_rasterize_trapezoid)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_f813cc956f5e820c ("
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
  , "void hs_bindgen_9fb1f9ba4d667f19 ("
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
  , "void hs_bindgen_97b0914f1cbeae97 ("
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_identity@
foreign import ccall safe "hs_bindgen_d283ca2da0636662" hs_bindgen_d283ca2da0636662_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_identity@
hs_bindgen_d283ca2da0636662 ::
     RIP.Ptr Pixman_transform
  -> IO ()
hs_bindgen_d283ca2da0636662 =
  RIP.fromFFIType hs_bindgen_d283ca2da0636662_base

{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> IO ()
pixman_transform_init_identity =
  hs_bindgen_d283ca2da0636662

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_point_3d@
foreign import ccall safe "hs_bindgen_356409e19f47e0b5" hs_bindgen_356409e19f47e0b5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_point_3d@
hs_bindgen_356409e19f47e0b5 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_356409e19f47e0b5 =
  RIP.fromFFIType hs_bindgen_356409e19f47e0b5_base

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
  hs_bindgen_356409e19f47e0b5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_point@
foreign import ccall safe "hs_bindgen_88885a0270bba45e" hs_bindgen_88885a0270bba45e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_point@
hs_bindgen_88885a0270bba45e ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_88885a0270bba45e =
  RIP.fromFFIType hs_bindgen_88885a0270bba45e_base

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
pixman_transform_point = hs_bindgen_88885a0270bba45e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_multiply@
foreign import ccall safe "hs_bindgen_a0d3554c83a6ea48" hs_bindgen_a0d3554c83a6ea48_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_multiply@
hs_bindgen_a0d3554c83a6ea48 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_a0d3554c83a6ea48 =
  RIP.fromFFIType hs_bindgen_a0d3554c83a6ea48_base

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
  hs_bindgen_a0d3554c83a6ea48

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_scale@
foreign import ccall safe "hs_bindgen_9c249053abba4265" hs_bindgen_9c249053abba4265_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_scale@
hs_bindgen_9c249053abba4265 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_9c249053abba4265 =
  RIP.fromFFIType hs_bindgen_9c249053abba4265_base

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
  hs_bindgen_9c249053abba4265

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_scale@
foreign import ccall safe "hs_bindgen_52085e11cc34a4f2" hs_bindgen_52085e11cc34a4f2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_scale@
hs_bindgen_52085e11cc34a4f2 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_52085e11cc34a4f2 =
  RIP.fromFFIType hs_bindgen_52085e11cc34a4f2_base

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
pixman_transform_scale = hs_bindgen_52085e11cc34a4f2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_rotate@
foreign import ccall safe "hs_bindgen_c95f164ab7d06c9a" hs_bindgen_c95f164ab7d06c9a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_rotate@
hs_bindgen_c95f164ab7d06c9a ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_c95f164ab7d06c9a =
  RIP.fromFFIType hs_bindgen_c95f164ab7d06c9a_base

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
  hs_bindgen_c95f164ab7d06c9a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_rotate@
foreign import ccall safe "hs_bindgen_78090ca21dbe1d7d" hs_bindgen_78090ca21dbe1d7d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_rotate@
hs_bindgen_78090ca21dbe1d7d ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_78090ca21dbe1d7d =
  RIP.fromFFIType hs_bindgen_78090ca21dbe1d7d_base

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
pixman_transform_rotate = hs_bindgen_78090ca21dbe1d7d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_translate@
foreign import ccall safe "hs_bindgen_46b171c1a8d32be0" hs_bindgen_46b171c1a8d32be0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_init_translate@
hs_bindgen_46b171c1a8d32be0 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_46b171c1a8d32be0 =
  RIP.fromFFIType hs_bindgen_46b171c1a8d32be0_base

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
  hs_bindgen_46b171c1a8d32be0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_translate@
foreign import ccall safe "hs_bindgen_b35147fa552c6290" hs_bindgen_b35147fa552c6290_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_translate@
hs_bindgen_b35147fa552c6290 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_b35147fa552c6290 =
  RIP.fromFFIType hs_bindgen_b35147fa552c6290_base

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
  hs_bindgen_b35147fa552c6290

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_bounds@
foreign import ccall safe "hs_bindgen_7fb768d8dc456d43" hs_bindgen_7fb768d8dc456d43_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_bounds@
hs_bindgen_7fb768d8dc456d43 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_7fb768d8dc456d43 =
  RIP.fromFFIType hs_bindgen_7fb768d8dc456d43_base

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
pixman_transform_bounds = hs_bindgen_7fb768d8dc456d43

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_invert@
foreign import ccall safe "hs_bindgen_54fffb93af6b1db4" hs_bindgen_54fffb93af6b1db4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_invert@
hs_bindgen_54fffb93af6b1db4 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_54fffb93af6b1db4 =
  RIP.fromFFIType hs_bindgen_54fffb93af6b1db4_base

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
pixman_transform_invert = hs_bindgen_54fffb93af6b1db4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_identity@
foreign import ccall safe "hs_bindgen_d8708d5172946e71" hs_bindgen_d8708d5172946e71_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_identity@
hs_bindgen_d8708d5172946e71 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_d8708d5172946e71 =
  RIP.fromFFIType hs_bindgen_d8708d5172946e71_base

{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_identity =
  hs_bindgen_d8708d5172946e71

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_scale@
foreign import ccall safe "hs_bindgen_09e1b67cd339d60a" hs_bindgen_09e1b67cd339d60a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_scale@
hs_bindgen_09e1b67cd339d60a ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_09e1b67cd339d60a =
  RIP.fromFFIType hs_bindgen_09e1b67cd339d60a_base

{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_scale =
  hs_bindgen_09e1b67cd339d60a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_int_translate@
foreign import ccall safe "hs_bindgen_732e1f3bb99f00a7" hs_bindgen_732e1f3bb99f00a7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_int_translate@
hs_bindgen_732e1f3bb99f00a7 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_732e1f3bb99f00a7 =
  RIP.fromFFIType hs_bindgen_732e1f3bb99f00a7_base

{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_int_translate =
  hs_bindgen_732e1f3bb99f00a7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_inverse@
foreign import ccall safe "hs_bindgen_09153e5dec3b7b3a" hs_bindgen_09153e5dec3b7b3a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_is_inverse@
hs_bindgen_09153e5dec3b7b3a ::
     PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_09153e5dec3b7b3a =
  RIP.fromFFIType hs_bindgen_09153e5dec3b7b3a_base

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
  hs_bindgen_09153e5dec3b7b3a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_from_pixman_f_transform@
foreign import ccall safe "hs_bindgen_75eb1c94a957c267" hs_bindgen_75eb1c94a957c267_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_transform_from_pixman_f_transform@
hs_bindgen_75eb1c94a957c267 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_75eb1c94a957c267 =
  RIP.fromFFIType hs_bindgen_75eb1c94a957c267_base

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
  hs_bindgen_75eb1c94a957c267

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_from_pixman_transform@
foreign import ccall safe "hs_bindgen_8eebd3ff06bf854b" hs_bindgen_8eebd3ff06bf854b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_from_pixman_transform@
hs_bindgen_8eebd3ff06bf854b ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO ()
hs_bindgen_8eebd3ff06bf854b =
  RIP.fromFFIType hs_bindgen_8eebd3ff06bf854b_base

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
  hs_bindgen_8eebd3ff06bf854b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_invert@
foreign import ccall safe "hs_bindgen_6498954da0ad774d" hs_bindgen_6498954da0ad774d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_invert@
hs_bindgen_6498954da0ad774d ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_6498954da0ad774d =
  RIP.fromFFIType hs_bindgen_6498954da0ad774d_base

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
  hs_bindgen_6498954da0ad774d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_point@
foreign import ccall safe "hs_bindgen_e66dee5afa0e5eac" hs_bindgen_e66dee5afa0e5eac_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_point@
hs_bindgen_e66dee5afa0e5eac ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO Pixman_bool_t
hs_bindgen_e66dee5afa0e5eac =
  RIP.fromFFIType hs_bindgen_e66dee5afa0e5eac_base

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
  hs_bindgen_e66dee5afa0e5eac

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_point_3d@
foreign import ccall safe "hs_bindgen_6a326b56a3990d40" hs_bindgen_6a326b56a3990d40_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_point_3d@
hs_bindgen_6a326b56a3990d40 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO ()
hs_bindgen_6a326b56a3990d40 =
  RIP.fromFFIType hs_bindgen_6a326b56a3990d40_base

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
  hs_bindgen_6a326b56a3990d40

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_multiply@
foreign import ccall safe "hs_bindgen_efdbd8921a39fd84" hs_bindgen_efdbd8921a39fd84_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_multiply@
hs_bindgen_efdbd8921a39fd84 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO ()
hs_bindgen_efdbd8921a39fd84 =
  RIP.fromFFIType hs_bindgen_efdbd8921a39fd84_base

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
  hs_bindgen_efdbd8921a39fd84

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_scale@
foreign import ccall safe "hs_bindgen_519b3d057e0f4801" hs_bindgen_519b3d057e0f4801_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_scale@
hs_bindgen_519b3d057e0f4801 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_519b3d057e0f4801 =
  RIP.fromFFIType hs_bindgen_519b3d057e0f4801_base

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
  hs_bindgen_519b3d057e0f4801

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_scale@
foreign import ccall safe "hs_bindgen_027ba5005899389e" hs_bindgen_027ba5005899389e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_scale@
hs_bindgen_027ba5005899389e ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_027ba5005899389e =
  RIP.fromFFIType hs_bindgen_027ba5005899389e_base

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
  hs_bindgen_027ba5005899389e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_rotate@
foreign import ccall safe "hs_bindgen_2dcdd47026e0a2f7" hs_bindgen_2dcdd47026e0a2f7_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_rotate@
hs_bindgen_2dcdd47026e0a2f7 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_2dcdd47026e0a2f7 =
  RIP.fromFFIType hs_bindgen_2dcdd47026e0a2f7_base

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
  hs_bindgen_2dcdd47026e0a2f7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_rotate@
foreign import ccall safe "hs_bindgen_1d96abd8562844bb" hs_bindgen_1d96abd8562844bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_rotate@
hs_bindgen_1d96abd8562844bb ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_1d96abd8562844bb =
  RIP.fromFFIType hs_bindgen_1d96abd8562844bb_base

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
  hs_bindgen_1d96abd8562844bb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_translate@
foreign import ccall safe "hs_bindgen_fdfd23f54ceece44" hs_bindgen_fdfd23f54ceece44_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_translate@
hs_bindgen_fdfd23f54ceece44 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_fdfd23f54ceece44 =
  RIP.fromFFIType hs_bindgen_fdfd23f54ceece44_base

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
  hs_bindgen_fdfd23f54ceece44

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_translate@
foreign import ccall safe "hs_bindgen_584764d6595f5524" hs_bindgen_584764d6595f5524_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_translate@
hs_bindgen_584764d6595f5524 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_584764d6595f5524 =
  RIP.fromFFIType hs_bindgen_584764d6595f5524_base

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
  hs_bindgen_584764d6595f5524

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_bounds@
foreign import ccall safe "hs_bindgen_6b8f97d5fe03594e" hs_bindgen_6b8f97d5fe03594e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_bounds@
hs_bindgen_6b8f97d5fe03594e ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_6b8f97d5fe03594e =
  RIP.fromFFIType hs_bindgen_6b8f97d5fe03594e_base

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
  hs_bindgen_6b8f97d5fe03594e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_identity@
foreign import ccall safe "hs_bindgen_1f5a1f98fa10dff3" hs_bindgen_1f5a1f98fa10dff3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_identity@
hs_bindgen_1f5a1f98fa10dff3 ::
     RIP.Ptr Pixman_f_transform
  -> IO ()
hs_bindgen_1f5a1f98fa10dff3 =
  RIP.fromFFIType hs_bindgen_1f5a1f98fa10dff3_base

{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_init_identity =
  hs_bindgen_1f5a1f98fa10dff3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_set_static_pointers@
foreign import ccall safe "hs_bindgen_61b3316044cdd074" hs_bindgen_61b3316044cdd074_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_set_static_pointers@
hs_bindgen_61b3316044cdd074 ::
     RIP.Ptr Pixman_box16_t
  -> RIP.Ptr Pixman_region16_data_t
  -> RIP.Ptr Pixman_region16_data_t
  -> IO ()
hs_bindgen_61b3316044cdd074 =
  RIP.fromFFIType hs_bindgen_61b3316044cdd074_base

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
  hs_bindgen_61b3316044cdd074

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init@
foreign import ccall safe "hs_bindgen_590bbcfebafb5d92" hs_bindgen_590bbcfebafb5d92_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init@
hs_bindgen_590bbcfebafb5d92 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_590bbcfebafb5d92 =
  RIP.fromFFIType hs_bindgen_590bbcfebafb5d92_base

{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_init = hs_bindgen_590bbcfebafb5d92

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_rect@
foreign import ccall safe "hs_bindgen_2fff79ca9eb81854" hs_bindgen_2fff79ca9eb81854_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_rect@
hs_bindgen_2fff79ca9eb81854 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_2fff79ca9eb81854 =
  RIP.fromFFIType hs_bindgen_2fff79ca9eb81854_base

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
pixman_region_init_rect = hs_bindgen_2fff79ca9eb81854

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_rects@
foreign import ccall safe "hs_bindgen_d33ad4849eae0609" hs_bindgen_d33ad4849eae0609_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_rects@
hs_bindgen_d33ad4849eae0609 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_d33ad4849eae0609 =
  RIP.fromFFIType hs_bindgen_d33ad4849eae0609_base

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
  hs_bindgen_d33ad4849eae0609

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_with_extents@
foreign import ccall safe "hs_bindgen_4a09683891f4c9cb" hs_bindgen_4a09683891f4c9cb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_with_extents@
hs_bindgen_4a09683891f4c9cb ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_4a09683891f4c9cb =
  RIP.fromFFIType hs_bindgen_4a09683891f4c9cb_base

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
  hs_bindgen_4a09683891f4c9cb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_from_image@
foreign import ccall safe "hs_bindgen_fa7b0c00840dd529" hs_bindgen_fa7b0c00840dd529_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_init_from_image@
hs_bindgen_fa7b0c00840dd529 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_fa7b0c00840dd529 =
  RIP.fromFFIType hs_bindgen_fa7b0c00840dd529_base

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
  hs_bindgen_fa7b0c00840dd529

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_fini@
foreign import ccall safe "hs_bindgen_87a693258fde955c" hs_bindgen_87a693258fde955c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_fini@
hs_bindgen_87a693258fde955c ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_87a693258fde955c =
  RIP.fromFFIType hs_bindgen_87a693258fde955c_base

{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_fini = hs_bindgen_87a693258fde955c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_translate@
foreign import ccall safe "hs_bindgen_621eddc9b22634fd" hs_bindgen_621eddc9b22634fd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_translate@
hs_bindgen_621eddc9b22634fd ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_621eddc9b22634fd =
  RIP.fromFFIType hs_bindgen_621eddc9b22634fd_base

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
pixman_region_translate = hs_bindgen_621eddc9b22634fd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_copy@
foreign import ccall safe "hs_bindgen_4a4d6bd1690a0566" hs_bindgen_4a4d6bd1690a0566_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_copy@
hs_bindgen_4a4d6bd1690a0566 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_4a4d6bd1690a0566 =
  RIP.fromFFIType hs_bindgen_4a4d6bd1690a0566_base

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
pixman_region_copy = hs_bindgen_4a4d6bd1690a0566

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_intersect@
foreign import ccall safe "hs_bindgen_c72b619412f37700" hs_bindgen_c72b619412f37700_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_intersect@
hs_bindgen_c72b619412f37700 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_c72b619412f37700 =
  RIP.fromFFIType hs_bindgen_c72b619412f37700_base

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
pixman_region_intersect = hs_bindgen_c72b619412f37700

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_union@
foreign import ccall safe "hs_bindgen_85b12be728478128" hs_bindgen_85b12be728478128_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_union@
hs_bindgen_85b12be728478128 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_85b12be728478128 =
  RIP.fromFFIType hs_bindgen_85b12be728478128_base

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
pixman_region_union = hs_bindgen_85b12be728478128

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_union_rect@
foreign import ccall safe "hs_bindgen_80603cc57e91a839" hs_bindgen_80603cc57e91a839_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_union_rect@
hs_bindgen_80603cc57e91a839 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_80603cc57e91a839 =
  RIP.fromFFIType hs_bindgen_80603cc57e91a839_base

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
  hs_bindgen_80603cc57e91a839

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_intersect_rect@
foreign import ccall safe "hs_bindgen_0d57871421835481" hs_bindgen_0d57871421835481_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_intersect_rect@
hs_bindgen_0d57871421835481 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_0d57871421835481 =
  RIP.fromFFIType hs_bindgen_0d57871421835481_base

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
  hs_bindgen_0d57871421835481

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_subtract@
foreign import ccall safe "hs_bindgen_872102cd674ff355" hs_bindgen_872102cd674ff355_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_subtract@
hs_bindgen_872102cd674ff355 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_872102cd674ff355 =
  RIP.fromFFIType hs_bindgen_872102cd674ff355_base

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
pixman_region_subtract = hs_bindgen_872102cd674ff355

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_inverse@
foreign import ccall safe "hs_bindgen_b61d278e9a5394a8" hs_bindgen_b61d278e9a5394a8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_inverse@
hs_bindgen_b61d278e9a5394a8 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_b61d278e9a5394a8 =
  RIP.fromFFIType hs_bindgen_b61d278e9a5394a8_base

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
pixman_region_inverse = hs_bindgen_b61d278e9a5394a8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_contains_point@
foreign import ccall safe "hs_bindgen_7051bfc5cc34f323" hs_bindgen_7051bfc5cc34f323_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_contains_point@
hs_bindgen_7051bfc5cc34f323 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_7051bfc5cc34f323 =
  RIP.fromFFIType hs_bindgen_7051bfc5cc34f323_base

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
  hs_bindgen_7051bfc5cc34f323

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_contains_rectangle@
foreign import ccall safe "hs_bindgen_d4952d236c63c35c" hs_bindgen_d4952d236c63c35c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_contains_rectangle@
hs_bindgen_d4952d236c63c35c ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_region_overlap_t
hs_bindgen_d4952d236c63c35c =
  RIP.fromFFIType hs_bindgen_d4952d236c63c35c_base

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
  hs_bindgen_d4952d236c63c35c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_empty@
foreign import ccall safe "hs_bindgen_e7ea002120611c61" hs_bindgen_e7ea002120611c61_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_empty@
hs_bindgen_e7ea002120611c61 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_e7ea002120611c61 =
  RIP.fromFFIType hs_bindgen_e7ea002120611c61_base

{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_empty = hs_bindgen_e7ea002120611c61

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_not_empty@
foreign import ccall safe "hs_bindgen_cd5916c71b61cf9a" hs_bindgen_cd5916c71b61cf9a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_not_empty@
hs_bindgen_cd5916c71b61cf9a ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_cd5916c71b61cf9a =
  RIP.fromFFIType hs_bindgen_cd5916c71b61cf9a_base

{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_not_empty = hs_bindgen_cd5916c71b61cf9a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_extents@
foreign import ccall safe "hs_bindgen_85d429df259a1d6b" hs_bindgen_85d429df259a1d6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_extents@
hs_bindgen_85d429df259a1d6b ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_85d429df259a1d6b =
  RIP.fromFFIType hs_bindgen_85d429df259a1d6b_base

{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_extents = hs_bindgen_85d429df259a1d6b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_n_rects@
foreign import ccall safe "hs_bindgen_abeb4c7078d4ff55" hs_bindgen_abeb4c7078d4ff55_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_n_rects@
hs_bindgen_abeb4c7078d4ff55 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO RIP.CInt
hs_bindgen_abeb4c7078d4ff55 =
  RIP.fromFFIType hs_bindgen_abeb4c7078d4ff55_base

{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region_n_rects = hs_bindgen_abeb4c7078d4ff55

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_rectangles@
foreign import ccall safe "hs_bindgen_b05b200d4ff0be12" hs_bindgen_b05b200d4ff0be12_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_rectangles@
hs_bindgen_b05b200d4ff0be12 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_b05b200d4ff0be12 =
  RIP.fromFFIType hs_bindgen_b05b200d4ff0be12_base

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
  hs_bindgen_b05b200d4ff0be12

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_equal@
foreign import ccall safe "hs_bindgen_72f241535c6e8c54" hs_bindgen_72f241535c6e8c54_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_equal@
hs_bindgen_72f241535c6e8c54 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_72f241535c6e8c54 =
  RIP.fromFFIType hs_bindgen_72f241535c6e8c54_base

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
pixman_region_equal = hs_bindgen_72f241535c6e8c54

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_selfcheck@
foreign import ccall safe "hs_bindgen_9418b8821cb8075a" hs_bindgen_9418b8821cb8075a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_selfcheck@
hs_bindgen_9418b8821cb8075a ::
     RIP.Ptr Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_9418b8821cb8075a =
  RIP.fromFFIType hs_bindgen_9418b8821cb8075a_base

{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_selfcheck = hs_bindgen_9418b8821cb8075a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_reset@
foreign import ccall safe "hs_bindgen_5ea01a6ff80418dc" hs_bindgen_5ea01a6ff80418dc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_reset@
hs_bindgen_5ea01a6ff80418dc ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_5ea01a6ff80418dc =
  RIP.fromFFIType hs_bindgen_5ea01a6ff80418dc_base

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
pixman_region_reset = hs_bindgen_5ea01a6ff80418dc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_clear@
foreign import ccall safe "hs_bindgen_0303a80e1711a5e6" hs_bindgen_0303a80e1711a5e6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region_clear@
hs_bindgen_0303a80e1711a5e6 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_0303a80e1711a5e6 =
  RIP.fromFFIType hs_bindgen_0303a80e1711a5e6_base

{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_clear = hs_bindgen_0303a80e1711a5e6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init@
foreign import ccall safe "hs_bindgen_13bb85d10a89affe" hs_bindgen_13bb85d10a89affe_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init@
hs_bindgen_13bb85d10a89affe ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_13bb85d10a89affe =
  RIP.fromFFIType hs_bindgen_13bb85d10a89affe_base

{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_init = hs_bindgen_13bb85d10a89affe

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_rect@
foreign import ccall safe "hs_bindgen_4f4c0216696b546d" hs_bindgen_4f4c0216696b546d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_rect@
hs_bindgen_4f4c0216696b546d ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_4f4c0216696b546d =
  RIP.fromFFIType hs_bindgen_4f4c0216696b546d_base

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
  hs_bindgen_4f4c0216696b546d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_rects@
foreign import ccall safe "hs_bindgen_b60384f465ef3af7" hs_bindgen_b60384f465ef3af7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_rects@
hs_bindgen_b60384f465ef3af7 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_b60384f465ef3af7 =
  RIP.fromFFIType hs_bindgen_b60384f465ef3af7_base

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
  hs_bindgen_b60384f465ef3af7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_with_extents@
foreign import ccall safe "hs_bindgen_5070f8ef0d26f7bf" hs_bindgen_5070f8ef0d26f7bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_with_extents@
hs_bindgen_5070f8ef0d26f7bf ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_5070f8ef0d26f7bf =
  RIP.fromFFIType hs_bindgen_5070f8ef0d26f7bf_base

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
  hs_bindgen_5070f8ef0d26f7bf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_from_image@
foreign import ccall safe "hs_bindgen_13f0d429e59ca6d5" hs_bindgen_13f0d429e59ca6d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_init_from_image@
hs_bindgen_13f0d429e59ca6d5 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_13f0d429e59ca6d5 =
  RIP.fromFFIType hs_bindgen_13f0d429e59ca6d5_base

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
  hs_bindgen_13f0d429e59ca6d5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_fini@
foreign import ccall safe "hs_bindgen_bca0d2f8418e7924" hs_bindgen_bca0d2f8418e7924_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_fini@
hs_bindgen_bca0d2f8418e7924 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_bca0d2f8418e7924 =
  RIP.fromFFIType hs_bindgen_bca0d2f8418e7924_base

{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_fini = hs_bindgen_bca0d2f8418e7924

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_translate@
foreign import ccall safe "hs_bindgen_aa704eab5d5695a2" hs_bindgen_aa704eab5d5695a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_translate@
hs_bindgen_aa704eab5d5695a2 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_aa704eab5d5695a2 =
  RIP.fromFFIType hs_bindgen_aa704eab5d5695a2_base

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
  hs_bindgen_aa704eab5d5695a2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_copy@
foreign import ccall safe "hs_bindgen_9e019df25d2613a8" hs_bindgen_9e019df25d2613a8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_copy@
hs_bindgen_9e019df25d2613a8 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_9e019df25d2613a8 =
  RIP.fromFFIType hs_bindgen_9e019df25d2613a8_base

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
pixman_region32_copy = hs_bindgen_9e019df25d2613a8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_intersect@
foreign import ccall safe "hs_bindgen_b7c8f27e61a51223" hs_bindgen_b7c8f27e61a51223_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_intersect@
hs_bindgen_b7c8f27e61a51223 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_b7c8f27e61a51223 =
  RIP.fromFFIType hs_bindgen_b7c8f27e61a51223_base

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
  hs_bindgen_b7c8f27e61a51223

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_union@
foreign import ccall safe "hs_bindgen_4cb1f411a49a0507" hs_bindgen_4cb1f411a49a0507_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_union@
hs_bindgen_4cb1f411a49a0507 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_4cb1f411a49a0507 =
  RIP.fromFFIType hs_bindgen_4cb1f411a49a0507_base

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
pixman_region32_union = hs_bindgen_4cb1f411a49a0507

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_intersect_rect@
foreign import ccall safe "hs_bindgen_fc58cf71b24f3b74" hs_bindgen_fc58cf71b24f3b74_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_intersect_rect@
hs_bindgen_fc58cf71b24f3b74 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_fc58cf71b24f3b74 =
  RIP.fromFFIType hs_bindgen_fc58cf71b24f3b74_base

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
  hs_bindgen_fc58cf71b24f3b74

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_union_rect@
foreign import ccall safe "hs_bindgen_86ec55c571362472" hs_bindgen_86ec55c571362472_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_union_rect@
hs_bindgen_86ec55c571362472 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_86ec55c571362472 =
  RIP.fromFFIType hs_bindgen_86ec55c571362472_base

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
  hs_bindgen_86ec55c571362472

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_subtract@
foreign import ccall safe "hs_bindgen_35ae4eb0030d85bd" hs_bindgen_35ae4eb0030d85bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_subtract@
hs_bindgen_35ae4eb0030d85bd ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_35ae4eb0030d85bd =
  RIP.fromFFIType hs_bindgen_35ae4eb0030d85bd_base

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
  hs_bindgen_35ae4eb0030d85bd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_inverse@
foreign import ccall safe "hs_bindgen_d09475cb5e61f5bc" hs_bindgen_d09475cb5e61f5bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_inverse@
hs_bindgen_d09475cb5e61f5bc ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_d09475cb5e61f5bc =
  RIP.fromFFIType hs_bindgen_d09475cb5e61f5bc_base

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
pixman_region32_inverse = hs_bindgen_d09475cb5e61f5bc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_contains_point@
foreign import ccall safe "hs_bindgen_e97c0f2079a528c3" hs_bindgen_e97c0f2079a528c3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_contains_point@
hs_bindgen_e97c0f2079a528c3 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_e97c0f2079a528c3 =
  RIP.fromFFIType hs_bindgen_e97c0f2079a528c3_base

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
  hs_bindgen_e97c0f2079a528c3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_contains_rectangle@
foreign import ccall safe "hs_bindgen_35c860481ab93d75" hs_bindgen_35c860481ab93d75_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_contains_rectangle@
hs_bindgen_35c860481ab93d75 ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_region_overlap_t
hs_bindgen_35c860481ab93d75 =
  RIP.fromFFIType hs_bindgen_35c860481ab93d75_base

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
  hs_bindgen_35c860481ab93d75

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_empty@
foreign import ccall safe "hs_bindgen_a90406ffabe281c8" hs_bindgen_a90406ffabe281c8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_empty@
hs_bindgen_a90406ffabe281c8 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_a90406ffabe281c8 =
  RIP.fromFFIType hs_bindgen_a90406ffabe281c8_base

{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_empty = hs_bindgen_a90406ffabe281c8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_not_empty@
foreign import ccall safe "hs_bindgen_179c26bedf74cd86" hs_bindgen_179c26bedf74cd86_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_not_empty@
hs_bindgen_179c26bedf74cd86 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_179c26bedf74cd86 =
  RIP.fromFFIType hs_bindgen_179c26bedf74cd86_base

{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_not_empty =
  hs_bindgen_179c26bedf74cd86

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_extents@
foreign import ccall safe "hs_bindgen_46b17692e8719c82" hs_bindgen_46b17692e8719c82_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_extents@
hs_bindgen_46b17692e8719c82 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_46b17692e8719c82 =
  RIP.fromFFIType hs_bindgen_46b17692e8719c82_base

{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_extents = hs_bindgen_46b17692e8719c82

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_n_rects@
foreign import ccall safe "hs_bindgen_26f29160baa74a4a" hs_bindgen_26f29160baa74a4a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_n_rects@
hs_bindgen_26f29160baa74a4a ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO RIP.CInt
hs_bindgen_26f29160baa74a4a =
  RIP.fromFFIType hs_bindgen_26f29160baa74a4a_base

{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region32_n_rects = hs_bindgen_26f29160baa74a4a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_rectangles@
foreign import ccall safe "hs_bindgen_be67d857dd59a026" hs_bindgen_be67d857dd59a026_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_rectangles@
hs_bindgen_be67d857dd59a026 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_be67d857dd59a026 =
  RIP.fromFFIType hs_bindgen_be67d857dd59a026_base

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
  hs_bindgen_be67d857dd59a026

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_equal@
foreign import ccall safe "hs_bindgen_1c8ed7f277825d8b" hs_bindgen_1c8ed7f277825d8b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_equal@
hs_bindgen_1c8ed7f277825d8b ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_1c8ed7f277825d8b =
  RIP.fromFFIType hs_bindgen_1c8ed7f277825d8b_base

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
pixman_region32_equal = hs_bindgen_1c8ed7f277825d8b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_selfcheck@
foreign import ccall safe "hs_bindgen_f7598d637556451a" hs_bindgen_f7598d637556451a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_selfcheck@
hs_bindgen_f7598d637556451a ::
     RIP.Ptr Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_f7598d637556451a =
  RIP.fromFFIType hs_bindgen_f7598d637556451a_base

{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_selfcheck =
  hs_bindgen_f7598d637556451a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_reset@
foreign import ccall safe "hs_bindgen_77a483cacdff7194" hs_bindgen_77a483cacdff7194_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_reset@
hs_bindgen_77a483cacdff7194 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_77a483cacdff7194 =
  RIP.fromFFIType hs_bindgen_77a483cacdff7194_base

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
pixman_region32_reset = hs_bindgen_77a483cacdff7194

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_clear@
foreign import ccall safe "hs_bindgen_5864df472dd2877d" hs_bindgen_5864df472dd2877d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region32_clear@
hs_bindgen_5864df472dd2877d ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_5864df472dd2877d =
  RIP.fromFFIType hs_bindgen_5864df472dd2877d_base

{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_clear = hs_bindgen_5864df472dd2877d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init@
foreign import ccall safe "hs_bindgen_fe2e396d582d890e" hs_bindgen_fe2e396d582d890e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init@
hs_bindgen_fe2e396d582d890e ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_fe2e396d582d890e =
  RIP.fromFFIType hs_bindgen_fe2e396d582d890e_base

{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_init = hs_bindgen_fe2e396d582d890e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rect@
foreign import ccall safe "hs_bindgen_f994da446775bceb" hs_bindgen_f994da446775bceb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rect@
hs_bindgen_f994da446775bceb ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_f994da446775bceb =
  RIP.fromFFIType hs_bindgen_f994da446775bceb_base

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
  hs_bindgen_f994da446775bceb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rectf@
foreign import ccall safe "hs_bindgen_567df8e2e4ee9ef6" hs_bindgen_567df8e2e4ee9ef6_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rectf@
hs_bindgen_567df8e2e4ee9ef6 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_567df8e2e4ee9ef6 =
  RIP.fromFFIType hs_bindgen_567df8e2e4ee9ef6_base

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
  hs_bindgen_567df8e2e4ee9ef6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rects@
foreign import ccall safe "hs_bindgen_3f4dc26f86a4c1f9" hs_bindgen_3f4dc26f86a4c1f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rects@
hs_bindgen_3f4dc26f86a4c1f9 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_3f4dc26f86a4c1f9 =
  RIP.fromFFIType hs_bindgen_3f4dc26f86a4c1f9_base

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
  hs_bindgen_3f4dc26f86a4c1f9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_with_extents@
foreign import ccall safe "hs_bindgen_b2030619c0a5ea21" hs_bindgen_b2030619c0a5ea21_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_with_extents@
hs_bindgen_b2030619c0a5ea21 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_b2030619c0a5ea21 =
  RIP.fromFFIType hs_bindgen_b2030619c0a5ea21_base

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
  hs_bindgen_b2030619c0a5ea21

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_from_image@
foreign import ccall safe "hs_bindgen_d47990abe2c6698f" hs_bindgen_d47990abe2c6698f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_init_from_image@
hs_bindgen_d47990abe2c6698f ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_d47990abe2c6698f =
  RIP.fromFFIType hs_bindgen_d47990abe2c6698f_base

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
  hs_bindgen_d47990abe2c6698f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_fini@
foreign import ccall safe "hs_bindgen_d827ccf847dc2a74" hs_bindgen_d827ccf847dc2a74_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_fini@
hs_bindgen_d827ccf847dc2a74 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_d827ccf847dc2a74 =
  RIP.fromFFIType hs_bindgen_d827ccf847dc2a74_base

{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_fini = hs_bindgen_d827ccf847dc2a74

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_translate@
foreign import ccall safe "hs_bindgen_68a4d3d9b7862503" hs_bindgen_68a4d3d9b7862503_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_translate@
hs_bindgen_68a4d3d9b7862503 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_68a4d3d9b7862503 =
  RIP.fromFFIType hs_bindgen_68a4d3d9b7862503_base

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
  hs_bindgen_68a4d3d9b7862503

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_translatef@
foreign import ccall safe "hs_bindgen_7d8673923ab47c0d" hs_bindgen_7d8673923ab47c0d_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_translatef@
hs_bindgen_7d8673923ab47c0d ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_7d8673923ab47c0d =
  RIP.fromFFIType hs_bindgen_7d8673923ab47c0d_base

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
  hs_bindgen_7d8673923ab47c0d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_copy@
foreign import ccall safe "hs_bindgen_865913862ef7b730" hs_bindgen_865913862ef7b730_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_copy@
hs_bindgen_865913862ef7b730 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_865913862ef7b730 =
  RIP.fromFFIType hs_bindgen_865913862ef7b730_base

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
pixman_region64f_copy = hs_bindgen_865913862ef7b730

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect@
foreign import ccall safe "hs_bindgen_da0d3f889ae87303" hs_bindgen_da0d3f889ae87303_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect@
hs_bindgen_da0d3f889ae87303 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_da0d3f889ae87303 =
  RIP.fromFFIType hs_bindgen_da0d3f889ae87303_base

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
  hs_bindgen_da0d3f889ae87303

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_union@
foreign import ccall safe "hs_bindgen_77e46edebc468321" hs_bindgen_77e46edebc468321_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_union@
hs_bindgen_77e46edebc468321 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_77e46edebc468321 =
  RIP.fromFFIType hs_bindgen_77e46edebc468321_base

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
pixman_region64f_union = hs_bindgen_77e46edebc468321

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rect@
foreign import ccall safe "hs_bindgen_ed1fec84ef2143f9" hs_bindgen_ed1fec84ef2143f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rect@
hs_bindgen_ed1fec84ef2143f9 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_ed1fec84ef2143f9 =
  RIP.fromFFIType hs_bindgen_ed1fec84ef2143f9_base

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
  hs_bindgen_ed1fec84ef2143f9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rectf@
foreign import ccall safe "hs_bindgen_bcd24fb81b67d4d5" hs_bindgen_bcd24fb81b67d4d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rectf@
hs_bindgen_bcd24fb81b67d4d5 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_bcd24fb81b67d4d5 =
  RIP.fromFFIType hs_bindgen_bcd24fb81b67d4d5_base

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
  hs_bindgen_bcd24fb81b67d4d5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rect@
foreign import ccall safe "hs_bindgen_efbc31733323a067" hs_bindgen_efbc31733323a067_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rect@
hs_bindgen_efbc31733323a067 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_efbc31733323a067 =
  RIP.fromFFIType hs_bindgen_efbc31733323a067_base

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
  hs_bindgen_efbc31733323a067

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rectf@
foreign import ccall safe "hs_bindgen_e9663d8488eb3b5e" hs_bindgen_e9663d8488eb3b5e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rectf@
hs_bindgen_e9663d8488eb3b5e ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_e9663d8488eb3b5e =
  RIP.fromFFIType hs_bindgen_e9663d8488eb3b5e_base

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
  hs_bindgen_e9663d8488eb3b5e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_subtract@
foreign import ccall safe "hs_bindgen_ef2368bb17e1f83a" hs_bindgen_ef2368bb17e1f83a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_subtract@
hs_bindgen_ef2368bb17e1f83a ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_ef2368bb17e1f83a =
  RIP.fromFFIType hs_bindgen_ef2368bb17e1f83a_base

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
  hs_bindgen_ef2368bb17e1f83a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_inverse@
foreign import ccall safe "hs_bindgen_d8929d20996a7710" hs_bindgen_d8929d20996a7710_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_inverse@
hs_bindgen_d8929d20996a7710 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_d8929d20996a7710 =
  RIP.fromFFIType hs_bindgen_d8929d20996a7710_base

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
  hs_bindgen_d8929d20996a7710

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_point@
foreign import ccall safe "hs_bindgen_366b0613acc2c3bc" hs_bindgen_366b0613acc2c3bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_point@
hs_bindgen_366b0613acc2c3bc ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_366b0613acc2c3bc =
  RIP.fromFFIType hs_bindgen_366b0613acc2c3bc_base

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
  hs_bindgen_366b0613acc2c3bc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_pointf@
foreign import ccall safe "hs_bindgen_8539995f109c5d57" hs_bindgen_8539995f109c5d57_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_pointf@
hs_bindgen_8539995f109c5d57 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_8539995f109c5d57 =
  RIP.fromFFIType hs_bindgen_8539995f109c5d57_base

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
  hs_bindgen_8539995f109c5d57

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_rectangle@
foreign import ccall safe "hs_bindgen_17419943c666f9a2" hs_bindgen_17419943c666f9a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_rectangle@
hs_bindgen_17419943c666f9a2 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_region_overlap_t
hs_bindgen_17419943c666f9a2 =
  RIP.fromFFIType hs_bindgen_17419943c666f9a2_base

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
  hs_bindgen_17419943c666f9a2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_empty@
foreign import ccall safe "hs_bindgen_504668011e9d56e1" hs_bindgen_504668011e9d56e1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_empty@
hs_bindgen_504668011e9d56e1 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_504668011e9d56e1 =
  RIP.fromFFIType hs_bindgen_504668011e9d56e1_base

{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_empty = hs_bindgen_504668011e9d56e1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_not_empty@
foreign import ccall safe "hs_bindgen_c4f82c6197907ac7" hs_bindgen_c4f82c6197907ac7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_not_empty@
hs_bindgen_c4f82c6197907ac7 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_c4f82c6197907ac7 =
  RIP.fromFFIType hs_bindgen_c4f82c6197907ac7_base

{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_not_empty =
  hs_bindgen_c4f82c6197907ac7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_extents@
foreign import ccall safe "hs_bindgen_9976ecf9e9b49d17" hs_bindgen_9976ecf9e9b49d17_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_extents@
hs_bindgen_9976ecf9e9b49d17 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_9976ecf9e9b49d17 =
  RIP.fromFFIType hs_bindgen_9976ecf9e9b49d17_base

{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_extents =
  hs_bindgen_9976ecf9e9b49d17

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_n_rects@
foreign import ccall safe "hs_bindgen_243590cc71cf869b" hs_bindgen_243590cc71cf869b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_n_rects@
hs_bindgen_243590cc71cf869b ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO RIP.CInt
hs_bindgen_243590cc71cf869b =
  RIP.fromFFIType hs_bindgen_243590cc71cf869b_base

{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region64f_n_rects =
  hs_bindgen_243590cc71cf869b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_rectangles@
foreign import ccall safe "hs_bindgen_6a2a69515477de8d" hs_bindgen_6a2a69515477de8d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_rectangles@
hs_bindgen_6a2a69515477de8d ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_6a2a69515477de8d =
  RIP.fromFFIType hs_bindgen_6a2a69515477de8d_base

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
  hs_bindgen_6a2a69515477de8d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_equal@
foreign import ccall safe "hs_bindgen_c41f7c4a88b246dc" hs_bindgen_c41f7c4a88b246dc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_equal@
hs_bindgen_c41f7c4a88b246dc ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_c41f7c4a88b246dc =
  RIP.fromFFIType hs_bindgen_c41f7c4a88b246dc_base

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
pixman_region64f_equal = hs_bindgen_c41f7c4a88b246dc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_selfcheck@
foreign import ccall safe "hs_bindgen_b2a2ce81ca547167" hs_bindgen_b2a2ce81ca547167_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_selfcheck@
hs_bindgen_b2a2ce81ca547167 ::
     RIP.Ptr Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_b2a2ce81ca547167 =
  RIP.fromFFIType hs_bindgen_b2a2ce81ca547167_base

{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_selfcheck =
  hs_bindgen_b2a2ce81ca547167

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_reset@
foreign import ccall safe "hs_bindgen_a68546fd0a82c3ec" hs_bindgen_a68546fd0a82c3ec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_reset@
hs_bindgen_a68546fd0a82c3ec ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_a68546fd0a82c3ec =
  RIP.fromFFIType hs_bindgen_a68546fd0a82c3ec_base

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
pixman_region64f_reset = hs_bindgen_a68546fd0a82c3ec

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_clear@
foreign import ccall safe "hs_bindgen_a281ed67d8042a5d" hs_bindgen_a281ed67d8042a5d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_region64f_clear@
hs_bindgen_a281ed67d8042a5d ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_a281ed67d8042a5d =
  RIP.fromFFIType hs_bindgen_a281ed67d8042a5d_base

{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_clear = hs_bindgen_a281ed67d8042a5d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_blt@
foreign import ccall safe "hs_bindgen_57d2285d468888c0" hs_bindgen_57d2285d468888c0_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_blt@
hs_bindgen_57d2285d468888c0 ::
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
hs_bindgen_57d2285d468888c0 =
  RIP.fromFFIType hs_bindgen_57d2285d468888c0_base

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
pixman_blt = hs_bindgen_57d2285d468888c0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_fill@
foreign import ccall safe "hs_bindgen_d335d4cd75c75508" hs_bindgen_d335d4cd75c75508_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_fill@
hs_bindgen_d335d4cd75c75508 ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> HsBindgen.Runtime.LibC.Word32
  -> IO Pixman_bool_t
hs_bindgen_d335d4cd75c75508 =
  RIP.fromFFIType hs_bindgen_d335d4cd75c75508_base

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
pixman_fill = hs_bindgen_d335d4cd75c75508

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_version@
foreign import ccall safe "hs_bindgen_80ac8181d1fdb253" hs_bindgen_80ac8181d1fdb253_base ::
     IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_version@
hs_bindgen_80ac8181d1fdb253 :: IO RIP.CInt
hs_bindgen_80ac8181d1fdb253 =
  RIP.fromFFIType hs_bindgen_80ac8181d1fdb253_base

{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: IO RIP.CInt
pixman_version = hs_bindgen_80ac8181d1fdb253

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_version_string@
foreign import ccall safe "hs_bindgen_939d158fb6df2774" hs_bindgen_939d158fb6df2774_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_version_string@
hs_bindgen_939d158fb6df2774 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_939d158fb6df2774 =
  RIP.fromFFIType hs_bindgen_939d158fb6df2774_base

{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: IO (PtrConst.PtrConst RIP.CChar)
pixman_version_string = hs_bindgen_939d158fb6df2774

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_format_supported_destination@
foreign import ccall safe "hs_bindgen_5de303264137479d" hs_bindgen_5de303264137479d_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_format_supported_destination@
hs_bindgen_5de303264137479d ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_5de303264137479d =
  RIP.fromFFIType hs_bindgen_5de303264137479d_base

{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_destination =
  hs_bindgen_5de303264137479d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_format_supported_source@
foreign import ccall safe "hs_bindgen_387aa1394d7e487a" hs_bindgen_387aa1394d7e487a_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_format_supported_source@
hs_bindgen_387aa1394d7e487a ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_387aa1394d7e487a =
  RIP.fromFFIType hs_bindgen_387aa1394d7e487a_base

{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_source =
  hs_bindgen_387aa1394d7e487a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_solid_fill@
foreign import ccall safe "hs_bindgen_7ec2f35030d46427" hs_bindgen_7ec2f35030d46427_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_solid_fill@
hs_bindgen_7ec2f35030d46427 ::
     PtrConst.PtrConst Pixman_color_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_7ec2f35030d46427 =
  RIP.fromFFIType hs_bindgen_7ec2f35030d46427_base

{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill ::
     PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_solid_fill =
  hs_bindgen_7ec2f35030d46427

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_linear_gradient@
foreign import ccall safe "hs_bindgen_ca6b267f68e2b257" hs_bindgen_ca6b267f68e2b257_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_linear_gradient@
hs_bindgen_ca6b267f68e2b257 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_ca6b267f68e2b257 =
  RIP.fromFFIType hs_bindgen_ca6b267f68e2b257_base

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
  hs_bindgen_ca6b267f68e2b257

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_radial_gradient@
foreign import ccall safe "hs_bindgen_6b9a1174022827dc" hs_bindgen_6b9a1174022827dc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_radial_gradient@
hs_bindgen_6b9a1174022827dc ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_6b9a1174022827dc =
  RIP.fromFFIType hs_bindgen_6b9a1174022827dc_base

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
  hs_bindgen_6b9a1174022827dc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_conical_gradient@
foreign import ccall safe "hs_bindgen_8d43130c4acbc182" hs_bindgen_8d43130c4acbc182_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_conical_gradient@
hs_bindgen_8d43130c4acbc182 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_8d43130c4acbc182 =
  RIP.fromFFIType hs_bindgen_8d43130c4acbc182_base

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
  hs_bindgen_8d43130c4acbc182

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_bits@
foreign import ccall safe "hs_bindgen_62495ecfb59215cf" hs_bindgen_62495ecfb59215cf_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_bits@
hs_bindgen_62495ecfb59215cf ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_62495ecfb59215cf =
  RIP.fromFFIType hs_bindgen_62495ecfb59215cf_base

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
  hs_bindgen_62495ecfb59215cf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_bits_no_clear@
foreign import ccall safe "hs_bindgen_20b9b31b12408013" hs_bindgen_20b9b31b12408013_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_create_bits_no_clear@
hs_bindgen_20b9b31b12408013 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_20b9b31b12408013 =
  RIP.fromFFIType hs_bindgen_20b9b31b12408013_base

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
  hs_bindgen_20b9b31b12408013

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_ref@
foreign import ccall safe "hs_bindgen_e0c07d3f6d20b2ad" hs_bindgen_e0c07d3f6d20b2ad_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_ref@
hs_bindgen_e0c07d3f6d20b2ad ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_e0c07d3f6d20b2ad =
  RIP.fromFFIType hs_bindgen_e0c07d3f6d20b2ad_base

{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_ref = hs_bindgen_e0c07d3f6d20b2ad

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_unref@
foreign import ccall safe "hs_bindgen_178b6725ee7c7817" hs_bindgen_178b6725ee7c7817_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_unref@
hs_bindgen_178b6725ee7c7817 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_178b6725ee7c7817 =
  RIP.fromFFIType hs_bindgen_178b6725ee7c7817_base

{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_unref = hs_bindgen_178b6725ee7c7817

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_destroy_function@
foreign import ccall safe "hs_bindgen_3a373570f7697f41" hs_bindgen_3a373570f7697f41_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_destroy_function@
hs_bindgen_3a373570f7697f41 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_image_destroy_func_t
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3a373570f7697f41 =
  RIP.fromFFIType hs_bindgen_3a373570f7697f41_base

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
  hs_bindgen_3a373570f7697f41

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_destroy_data@
foreign import ccall safe "hs_bindgen_ca16efbc2dbb44c6" hs_bindgen_ca16efbc2dbb44c6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_destroy_data@
hs_bindgen_ca16efbc2dbb44c6 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ca16efbc2dbb44c6 =
  RIP.fromFFIType hs_bindgen_ca16efbc2dbb44c6_base

{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr RIP.Void)
pixman_image_get_destroy_data =
  hs_bindgen_ca16efbc2dbb44c6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region@
foreign import ccall safe "hs_bindgen_46a9f7b7818dc27e" hs_bindgen_46a9f7b7818dc27e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region@
hs_bindgen_46a9f7b7818dc27e ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_46a9f7b7818dc27e =
  RIP.fromFFIType hs_bindgen_46a9f7b7818dc27e_base

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
  hs_bindgen_46a9f7b7818dc27e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region32@
foreign import ccall safe "hs_bindgen_f7d595cb2d8cf07d" hs_bindgen_f7d595cb2d8cf07d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region32@
hs_bindgen_f7d595cb2d8cf07d ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_f7d595cb2d8cf07d =
  RIP.fromFFIType hs_bindgen_f7d595cb2d8cf07d_base

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
  hs_bindgen_f7d595cb2d8cf07d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region64f@
foreign import ccall safe "hs_bindgen_3a911cf268f2c84e" hs_bindgen_3a911cf268f2c84e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region64f@
hs_bindgen_3a911cf268f2c84e ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_3a911cf268f2c84e =
  RIP.fromFFIType hs_bindgen_3a911cf268f2c84e_base

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
  hs_bindgen_3a911cf268f2c84e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_has_client_clip@
foreign import ccall safe "hs_bindgen_c97c0e576d9336bd" hs_bindgen_c97c0e576d9336bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_has_client_clip@
hs_bindgen_c97c0e576d9336bd ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_c97c0e576d9336bd =
  RIP.fromFFIType hs_bindgen_c97c0e576d9336bd_base

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
  hs_bindgen_c97c0e576d9336bd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_transform@
foreign import ccall safe "hs_bindgen_a4a167352137fc07" hs_bindgen_a4a167352137fc07_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_transform@
hs_bindgen_a4a167352137fc07 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_transform_t
  -> IO Pixman_bool_t
hs_bindgen_a4a167352137fc07 =
  RIP.fromFFIType hs_bindgen_a4a167352137fc07_base

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
  hs_bindgen_a4a167352137fc07

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_repeat@
foreign import ccall safe "hs_bindgen_7fc6462aa3f2d70d" hs_bindgen_7fc6462aa3f2d70d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_repeat@
hs_bindgen_7fc6462aa3f2d70d ::
     RIP.Ptr Pixman_image_t
  -> Pixman_repeat_t
  -> IO ()
hs_bindgen_7fc6462aa3f2d70d =
  RIP.fromFFIType hs_bindgen_7fc6462aa3f2d70d_base

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
pixman_image_set_repeat = hs_bindgen_7fc6462aa3f2d70d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_dither@
foreign import ccall safe "hs_bindgen_cc773f59195dc81e" hs_bindgen_cc773f59195dc81e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_dither@
hs_bindgen_cc773f59195dc81e ::
     RIP.Ptr Pixman_image_t
  -> Pixman_dither_t
  -> IO ()
hs_bindgen_cc773f59195dc81e =
  RIP.fromFFIType hs_bindgen_cc773f59195dc81e_base

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
pixman_image_set_dither = hs_bindgen_cc773f59195dc81e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_dither_offset@
foreign import ccall safe "hs_bindgen_dc53e6f3916960bf" hs_bindgen_dc53e6f3916960bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_dither_offset@
hs_bindgen_dc53e6f3916960bf ::
     RIP.Ptr Pixman_image_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_dc53e6f3916960bf =
  RIP.fromFFIType hs_bindgen_dc53e6f3916960bf_base

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
  hs_bindgen_dc53e6f3916960bf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_filter@
foreign import ccall safe "hs_bindgen_12238d844cc7186f" hs_bindgen_12238d844cc7186f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_filter@
hs_bindgen_12238d844cc7186f ::
     RIP.Ptr Pixman_image_t
  -> Pixman_filter_t
  -> PtrConst.PtrConst Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_12238d844cc7186f =
  RIP.fromFFIType hs_bindgen_12238d844cc7186f_base

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
pixman_image_set_filter = hs_bindgen_12238d844cc7186f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_source_clipping@
foreign import ccall safe "hs_bindgen_13fa96d8539737f6" hs_bindgen_13fa96d8539737f6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_source_clipping@
hs_bindgen_13fa96d8539737f6 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_13fa96d8539737f6 =
  RIP.fromFFIType hs_bindgen_13fa96d8539737f6_base

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
  hs_bindgen_13fa96d8539737f6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_alpha_map@
foreign import ccall safe "hs_bindgen_61d412b43d21d5b4" hs_bindgen_61d412b43d21d5b4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_alpha_map@
hs_bindgen_61d412b43d21d5b4 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> IO ()
hs_bindgen_61d412b43d21d5b4 =
  RIP.fromFFIType hs_bindgen_61d412b43d21d5b4_base

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
  hs_bindgen_61d412b43d21d5b4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_component_alpha@
foreign import ccall safe "hs_bindgen_8e78a200f1f72b13" hs_bindgen_8e78a200f1f72b13_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_component_alpha@
hs_bindgen_8e78a200f1f72b13 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_8e78a200f1f72b13 =
  RIP.fromFFIType hs_bindgen_8e78a200f1f72b13_base

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
  hs_bindgen_8e78a200f1f72b13

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_component_alpha@
foreign import ccall safe "hs_bindgen_2193a50de9b4ef32" hs_bindgen_2193a50de9b4ef32_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_component_alpha@
hs_bindgen_2193a50de9b4ef32 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_2193a50de9b4ef32 =
  RIP.fromFFIType hs_bindgen_2193a50de9b4ef32_base

{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_get_component_alpha =
  hs_bindgen_2193a50de9b4ef32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_accessors@
foreign import ccall safe "hs_bindgen_f25b120893b49e71" hs_bindgen_f25b120893b49e71_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_accessors@
hs_bindgen_f25b120893b49e71 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_read_memory_func_t
  -> Pixman_write_memory_func_t
  -> IO ()
hs_bindgen_f25b120893b49e71 =
  RIP.fromFFIType hs_bindgen_f25b120893b49e71_base

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
  hs_bindgen_f25b120893b49e71

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_indexed@
foreign import ccall safe "hs_bindgen_07c06ae1c49dfb87" hs_bindgen_07c06ae1c49dfb87_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_set_indexed@
hs_bindgen_07c06ae1c49dfb87 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_indexed_t
  -> IO ()
hs_bindgen_07c06ae1c49dfb87 =
  RIP.fromFFIType hs_bindgen_07c06ae1c49dfb87_base

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
  hs_bindgen_07c06ae1c49dfb87

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_data@
foreign import ccall safe "hs_bindgen_1cd4751cd24303ca" hs_bindgen_1cd4751cd24303ca_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_data@
hs_bindgen_1cd4751cd24303ca ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
hs_bindgen_1cd4751cd24303ca =
  RIP.fromFFIType hs_bindgen_1cd4751cd24303ca_base

{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
pixman_image_get_data = hs_bindgen_1cd4751cd24303ca

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_width@
foreign import ccall safe "hs_bindgen_a5f33e66b1f3b77d" hs_bindgen_a5f33e66b1f3b77d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_width@
hs_bindgen_a5f33e66b1f3b77d ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_a5f33e66b1f3b77d =
  RIP.fromFFIType hs_bindgen_a5f33e66b1f3b77d_base

{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_width = hs_bindgen_a5f33e66b1f3b77d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_height@
foreign import ccall safe "hs_bindgen_5d4ffdc88c6c8f2d" hs_bindgen_5d4ffdc88c6c8f2d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_height@
hs_bindgen_5d4ffdc88c6c8f2d ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_5d4ffdc88c6c8f2d =
  RIP.fromFFIType hs_bindgen_5d4ffdc88c6c8f2d_base

{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_height = hs_bindgen_5d4ffdc88c6c8f2d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_stride@
foreign import ccall safe "hs_bindgen_38af6f58fc4c1b94" hs_bindgen_38af6f58fc4c1b94_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_stride@
hs_bindgen_38af6f58fc4c1b94 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_38af6f58fc4c1b94 =
  RIP.fromFFIType hs_bindgen_38af6f58fc4c1b94_base

{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_stride = hs_bindgen_38af6f58fc4c1b94

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_depth@
foreign import ccall safe "hs_bindgen_efd5af03a201ccc1" hs_bindgen_efd5af03a201ccc1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_depth@
hs_bindgen_efd5af03a201ccc1 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_efd5af03a201ccc1 =
  RIP.fromFFIType hs_bindgen_efd5af03a201ccc1_base

{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_depth = hs_bindgen_efd5af03a201ccc1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_format@
foreign import ccall safe "hs_bindgen_0ceccdd4986c6d93" hs_bindgen_0ceccdd4986c6d93_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_get_format@
hs_bindgen_0ceccdd4986c6d93 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_format_code_t
hs_bindgen_0ceccdd4986c6d93 =
  RIP.fromFFIType hs_bindgen_0ceccdd4986c6d93_base

{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_format_code_t
pixman_image_get_format = hs_bindgen_0ceccdd4986c6d93

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_filter_create_separable_convolution@
foreign import ccall safe "hs_bindgen_b5952fa95805af85" hs_bindgen_b5952fa95805af85_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_filter_create_separable_convolution@
hs_bindgen_b5952fa95805af85 ::
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
hs_bindgen_b5952fa95805af85 =
  RIP.fromFFIType hs_bindgen_b5952fa95805af85_base

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
  hs_bindgen_b5952fa95805af85

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_fill_rectangles@
foreign import ccall safe "hs_bindgen_58a34fd644dbe9b5" hs_bindgen_58a34fd644dbe9b5_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_fill_rectangles@
hs_bindgen_58a34fd644dbe9b5 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_rectangle16_t
  -> IO Pixman_bool_t
hs_bindgen_58a34fd644dbe9b5 =
  RIP.fromFFIType hs_bindgen_58a34fd644dbe9b5_base

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
  hs_bindgen_58a34fd644dbe9b5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_fill_boxes@
foreign import ccall safe "hs_bindgen_ebd9d9cba2ca6129" hs_bindgen_ebd9d9cba2ca6129_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_fill_boxes@
hs_bindgen_ebd9d9cba2ca6129 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_ebd9d9cba2ca6129 =
  RIP.fromFFIType hs_bindgen_ebd9d9cba2ca6129_base

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
pixman_image_fill_boxes = hs_bindgen_ebd9d9cba2ca6129

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_compute_composite_region@
foreign import ccall safe "hs_bindgen_a2ea73998d269053" hs_bindgen_a2ea73998d269053_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_compute_composite_region@
hs_bindgen_a2ea73998d269053 ::
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
hs_bindgen_a2ea73998d269053 =
  RIP.fromFFIType hs_bindgen_a2ea73998d269053_base

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
  hs_bindgen_a2ea73998d269053

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_composite@
foreign import ccall safe "hs_bindgen_d310996bf54da18d" hs_bindgen_d310996bf54da18d_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_composite@
hs_bindgen_d310996bf54da18d ::
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
hs_bindgen_d310996bf54da18d =
  RIP.fromFFIType hs_bindgen_d310996bf54da18d_base

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
pixman_image_composite = hs_bindgen_d310996bf54da18d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_composite32@
foreign import ccall safe "hs_bindgen_014d34cfe2de2954" hs_bindgen_014d34cfe2de2954_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_composite32@
hs_bindgen_014d34cfe2de2954 ::
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
hs_bindgen_014d34cfe2de2954 =
  RIP.fromFFIType hs_bindgen_014d34cfe2de2954_base

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
  hs_bindgen_014d34cfe2de2954

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_composite64f@
foreign import ccall safe "hs_bindgen_5c1edec53575f24c" hs_bindgen_5c1edec53575f24c_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_image_composite64f@
hs_bindgen_5c1edec53575f24c ::
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
hs_bindgen_5c1edec53575f24c =
  RIP.fromFFIType hs_bindgen_5c1edec53575f24c_base

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
  hs_bindgen_5c1edec53575f24c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_disable_out_of_bounds_workaround@
foreign import ccall safe "hs_bindgen_75332d420bb145a9" hs_bindgen_75332d420bb145a9_base ::
     IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_disable_out_of_bounds_workaround@
hs_bindgen_75332d420bb145a9 :: IO ()
hs_bindgen_75332d420bb145a9 =
  RIP.fromFFIType hs_bindgen_75332d420bb145a9_base

{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: IO ()
pixman_disable_out_of_bounds_workaround =
  hs_bindgen_75332d420bb145a9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_create@
foreign import ccall safe "hs_bindgen_e732ba8c72ad6982" hs_bindgen_e732ba8c72ad6982_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_create@
hs_bindgen_e732ba8c72ad6982 :: IO (RIP.Ptr Pixman_glyph_cache_t)
hs_bindgen_e732ba8c72ad6982 =
  RIP.fromFFIType hs_bindgen_e732ba8c72ad6982_base

{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: IO (RIP.Ptr Pixman_glyph_cache_t)
pixman_glyph_cache_create =
  hs_bindgen_e732ba8c72ad6982

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_destroy@
foreign import ccall safe "hs_bindgen_c63287dece0f0304" hs_bindgen_c63287dece0f0304_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_destroy@
hs_bindgen_c63287dece0f0304 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_c63287dece0f0304 =
  RIP.fromFFIType hs_bindgen_c63287dece0f0304_base

{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_destroy =
  hs_bindgen_c63287dece0f0304

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_freeze@
foreign import ccall safe "hs_bindgen_de42b7344bb0525e" hs_bindgen_de42b7344bb0525e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_freeze@
hs_bindgen_de42b7344bb0525e ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_de42b7344bb0525e =
  RIP.fromFFIType hs_bindgen_de42b7344bb0525e_base

{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_freeze =
  hs_bindgen_de42b7344bb0525e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_thaw@
foreign import ccall safe "hs_bindgen_8f2b295ba3100efb" hs_bindgen_8f2b295ba3100efb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_thaw@
hs_bindgen_8f2b295ba3100efb ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_8f2b295ba3100efb =
  RIP.fromFFIType hs_bindgen_8f2b295ba3100efb_base

{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_thaw = hs_bindgen_8f2b295ba3100efb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_lookup@
foreign import ccall safe "hs_bindgen_485d1d7489cd328a" hs_bindgen_485d1d7489cd328a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_lookup@
hs_bindgen_485d1d7489cd328a ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_485d1d7489cd328a =
  RIP.fromFFIType hs_bindgen_485d1d7489cd328a_base

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
  hs_bindgen_485d1d7489cd328a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_insert@
foreign import ccall safe "hs_bindgen_661b60fbe55ee24a" hs_bindgen_661b60fbe55ee24a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_insert@
hs_bindgen_661b60fbe55ee24a ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_image_t
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_661b60fbe55ee24a =
  RIP.fromFFIType hs_bindgen_661b60fbe55ee24a_base

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
  hs_bindgen_661b60fbe55ee24a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_remove@
foreign import ccall safe "hs_bindgen_ef19993e919c2c8a" hs_bindgen_ef19993e919c2c8a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_remove@
hs_bindgen_ef19993e919c2c8a ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ef19993e919c2c8a =
  RIP.fromFFIType hs_bindgen_ef19993e919c2c8a_base

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
  hs_bindgen_ef19993e919c2c8a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_get_extents@
foreign import ccall safe "hs_bindgen_166af9479c639170" hs_bindgen_166af9479c639170_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_get_extents@
hs_bindgen_166af9479c639170 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> RIP.Ptr Pixman_glyph_t
  -> RIP.Ptr Pixman_box32_t
  -> IO ()
hs_bindgen_166af9479c639170 =
  RIP.fromFFIType hs_bindgen_166af9479c639170_base

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
  hs_bindgen_166af9479c639170

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_get_mask_format@
foreign import ccall safe "hs_bindgen_0be14b5aefa01d15" hs_bindgen_0be14b5aefa01d15_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_glyph_get_mask_format@
hs_bindgen_0be14b5aefa01d15 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO Pixman_format_code_t
hs_bindgen_0be14b5aefa01d15 =
  RIP.fromFFIType hs_bindgen_0be14b5aefa01d15_base

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
  hs_bindgen_0be14b5aefa01d15

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs@
foreign import ccall safe "hs_bindgen_a2b8464e7ea97b9c" hs_bindgen_a2b8464e7ea97b9c_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs@
hs_bindgen_a2b8464e7ea97b9c ::
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
hs_bindgen_a2b8464e7ea97b9c =
  RIP.fromFFIType hs_bindgen_a2b8464e7ea97b9c_base

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
pixman_composite_glyphs = hs_bindgen_a2b8464e7ea97b9c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs_no_mask@
foreign import ccall safe "hs_bindgen_2fb54f94cd511c64" hs_bindgen_2fb54f94cd511c64_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs_no_mask@
hs_bindgen_2fb54f94cd511c64 ::
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
hs_bindgen_2fb54f94cd511c64 =
  RIP.fromFFIType hs_bindgen_2fb54f94cd511c64_base

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
  hs_bindgen_2fb54f94cd511c64

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_sample_ceil_y@
foreign import ccall safe "hs_bindgen_1fdad2e76d58fb61" hs_bindgen_1fdad2e76d58fb61_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_sample_ceil_y@
hs_bindgen_1fdad2e76d58fb61 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_1fdad2e76d58fb61 =
  RIP.fromFFIType hs_bindgen_1fdad2e76d58fb61_base

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
pixman_sample_ceil_y = hs_bindgen_1fdad2e76d58fb61

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_sample_floor_y@
foreign import ccall safe "hs_bindgen_f4d62db1a50be1ba" hs_bindgen_f4d62db1a50be1ba_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_sample_floor_y@
hs_bindgen_f4d62db1a50be1ba ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_f4d62db1a50be1ba =
  RIP.fromFFIType hs_bindgen_f4d62db1a50be1ba_base

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
pixman_sample_floor_y = hs_bindgen_f4d62db1a50be1ba

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_edge_step@
foreign import ccall safe "hs_bindgen_e2eb42c0b8bb49c4" hs_bindgen_e2eb42c0b8bb49c4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_edge_step@
hs_bindgen_e2eb42c0b8bb49c4 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> IO ()
hs_bindgen_e2eb42c0b8bb49c4 =
  RIP.fromFFIType hs_bindgen_e2eb42c0b8bb49c4_base

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
pixman_edge_step = hs_bindgen_e2eb42c0b8bb49c4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_edge_init@
foreign import ccall safe "hs_bindgen_11c6f5f5c5c46c1d" hs_bindgen_11c6f5f5c5c46c1d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_edge_init@
hs_bindgen_11c6f5f5c5c46c1d ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_11c6f5f5c5c46c1d =
  RIP.fromFFIType hs_bindgen_11c6f5f5c5c46c1d_base

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
pixman_edge_init = hs_bindgen_11c6f5f5c5c46c1d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_line_fixed_edge_init@
foreign import ccall safe "hs_bindgen_09cfbe6ea1306071" hs_bindgen_09cfbe6ea1306071_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_line_fixed_edge_init@
hs_bindgen_09cfbe6ea1306071 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_line_fixed_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_09cfbe6ea1306071 =
  RIP.fromFFIType hs_bindgen_09cfbe6ea1306071_base

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
  hs_bindgen_09cfbe6ea1306071

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_rasterize_edges@
foreign import ccall safe "hs_bindgen_52547bec79bb89b1" hs_bindgen_52547bec79bb89b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_rasterize_edges@
hs_bindgen_52547bec79bb89b1 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_edge_t
  -> RIP.Ptr Pixman_edge_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_52547bec79bb89b1 =
  RIP.fromFFIType hs_bindgen_52547bec79bb89b1_base

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
pixman_rasterize_edges = hs_bindgen_52547bec79bb89b1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_add_traps@
foreign import ccall safe "hs_bindgen_18c249c14074ac46" hs_bindgen_18c249c14074ac46_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_add_traps@
hs_bindgen_18c249c14074ac46 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trap_t
  -> IO ()
hs_bindgen_18c249c14074ac46 =
  RIP.fromFFIType hs_bindgen_18c249c14074ac46_base

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
pixman_add_traps = hs_bindgen_18c249c14074ac46

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_add_trapezoids@
foreign import ccall safe "hs_bindgen_a3e2605d46afb6c2" hs_bindgen_a3e2605d46afb6c2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_add_trapezoids@
hs_bindgen_a3e2605d46afb6c2 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_a3e2605d46afb6c2 =
  RIP.fromFFIType hs_bindgen_a3e2605d46afb6c2_base

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
pixman_add_trapezoids = hs_bindgen_a3e2605d46afb6c2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_rasterize_trapezoid@
foreign import ccall safe "hs_bindgen_ddcd350724aea3e6" hs_bindgen_ddcd350724aea3e6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_rasterize_trapezoid@
hs_bindgen_ddcd350724aea3e6 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_ddcd350724aea3e6 =
  RIP.fromFFIType hs_bindgen_ddcd350724aea3e6_base

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
  hs_bindgen_ddcd350724aea3e6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_trapezoids@
foreign import ccall safe "hs_bindgen_f813cc956f5e820c" hs_bindgen_f813cc956f5e820c_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_trapezoids@
hs_bindgen_f813cc956f5e820c ::
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
hs_bindgen_f813cc956f5e820c =
  RIP.fromFFIType hs_bindgen_f813cc956f5e820c_base

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
  hs_bindgen_f813cc956f5e820c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_triangles@
foreign import ccall safe "hs_bindgen_9fb1f9ba4d667f19" hs_bindgen_9fb1f9ba4d667f19_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_composite_triangles@
hs_bindgen_9fb1f9ba4d667f19 ::
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
hs_bindgen_9fb1f9ba4d667f19 =
  RIP.fromFFIType hs_bindgen_9fb1f9ba4d667f19_base

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
  hs_bindgen_9fb1f9ba4d667f19

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_add_triangles@
foreign import ccall safe "hs_bindgen_97b0914f1cbeae97" hs_bindgen_97b0914f1cbeae97_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Safe_pixman_add_triangles@
hs_bindgen_97b0914f1cbeae97 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_97b0914f1cbeae97 =
  RIP.fromFFIType hs_bindgen_97b0914f1cbeae97_base

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
pixman_add_triangles = hs_bindgen_97b0914f1cbeae97
