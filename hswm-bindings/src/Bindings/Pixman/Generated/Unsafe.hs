{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Pixman.Generated.Unsafe
    ( Bindings.Pixman.Generated.Unsafe.pixman_transform_init_identity
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_point_3d
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_point
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_multiply
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_init_scale
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_scale
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_init_rotate
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_rotate
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_init_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_bounds
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_invert
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_is_identity
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_is_scale
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_is_int_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_is_inverse
    , Bindings.Pixman.Generated.Unsafe.pixman_transform_from_pixman_f_transform
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_from_pixman_transform
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_invert
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_point
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_point_3d
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_multiply
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_init_scale
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_scale
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_init_rotate
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_rotate
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_init_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_bounds
    , Bindings.Pixman.Generated.Unsafe.pixman_f_transform_init_identity
    , Bindings.Pixman.Generated.Unsafe.pixman_region_set_static_pointers
    , Bindings.Pixman.Generated.Unsafe.pixman_region_init
    , Bindings.Pixman.Generated.Unsafe.pixman_region_init_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region_init_rects
    , Bindings.Pixman.Generated.Unsafe.pixman_region_init_with_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_region_init_from_image
    , Bindings.Pixman.Generated.Unsafe.pixman_region_fini
    , Bindings.Pixman.Generated.Unsafe.pixman_region_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_region_copy
    , Bindings.Pixman.Generated.Unsafe.pixman_region_intersect
    , Bindings.Pixman.Generated.Unsafe.pixman_region_union
    , Bindings.Pixman.Generated.Unsafe.pixman_region_union_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region_intersect_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region_subtract
    , Bindings.Pixman.Generated.Unsafe.pixman_region_inverse
    , Bindings.Pixman.Generated.Unsafe.pixman_region_contains_point
    , Bindings.Pixman.Generated.Unsafe.pixman_region_contains_rectangle
    , Bindings.Pixman.Generated.Unsafe.pixman_region_empty
    , Bindings.Pixman.Generated.Unsafe.pixman_region_not_empty
    , Bindings.Pixman.Generated.Unsafe.pixman_region_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_region_n_rects
    , Bindings.Pixman.Generated.Unsafe.pixman_region_rectangles
    , Bindings.Pixman.Generated.Unsafe.pixman_region_equal
    , Bindings.Pixman.Generated.Unsafe.pixman_region_selfcheck
    , Bindings.Pixman.Generated.Unsafe.pixman_region_reset
    , Bindings.Pixman.Generated.Unsafe.pixman_region_clear
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_init
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_init_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_init_rects
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_init_with_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_init_from_image
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_fini
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_copy
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_intersect
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_union
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_intersect_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_union_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_subtract
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_inverse
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_contains_point
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_contains_rectangle
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_empty
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_not_empty
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_n_rects
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_rectangles
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_equal
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_selfcheck
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_reset
    , Bindings.Pixman.Generated.Unsafe.pixman_region32_clear
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_init
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_init_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_init_rectf
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_init_rects
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_init_with_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_init_from_image
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_fini
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_translate
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_translatef
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_copy
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_intersect
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_union
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_intersect_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_intersect_rectf
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_union_rect
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_union_rectf
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_subtract
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_inverse
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_contains_point
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_contains_pointf
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_contains_rectangle
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_empty
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_not_empty
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_n_rects
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_rectangles
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_equal
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_selfcheck
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_reset
    , Bindings.Pixman.Generated.Unsafe.pixman_region64f_clear
    , Bindings.Pixman.Generated.Unsafe.pixman_blt
    , Bindings.Pixman.Generated.Unsafe.pixman_fill
    , Bindings.Pixman.Generated.Unsafe.pixman_version
    , Bindings.Pixman.Generated.Unsafe.pixman_version_string
    , Bindings.Pixman.Generated.Unsafe.pixman_format_supported_destination
    , Bindings.Pixman.Generated.Unsafe.pixman_format_supported_source
    , Bindings.Pixman.Generated.Unsafe.pixman_image_create_solid_fill
    , Bindings.Pixman.Generated.Unsafe.pixman_image_create_linear_gradient
    , Bindings.Pixman.Generated.Unsafe.pixman_image_create_radial_gradient
    , Bindings.Pixman.Generated.Unsafe.pixman_image_create_conical_gradient
    , Bindings.Pixman.Generated.Unsafe.pixman_image_create_bits
    , Bindings.Pixman.Generated.Unsafe.pixman_image_create_bits_no_clear
    , Bindings.Pixman.Generated.Unsafe.pixman_image_ref
    , Bindings.Pixman.Generated.Unsafe.pixman_image_unref
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_destroy_function
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_destroy_data
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_clip_region
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_clip_region32
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_clip_region64f
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_has_client_clip
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_transform
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_repeat
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_dither
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_dither_offset
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_filter
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_source_clipping
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_alpha_map
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_component_alpha
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_component_alpha
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_accessors
    , Bindings.Pixman.Generated.Unsafe.pixman_image_set_indexed
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_data
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_width
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_height
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_stride
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_depth
    , Bindings.Pixman.Generated.Unsafe.pixman_image_get_format
    , Bindings.Pixman.Generated.Unsafe.pixman_filter_create_separable_convolution
    , Bindings.Pixman.Generated.Unsafe.pixman_image_fill_rectangles
    , Bindings.Pixman.Generated.Unsafe.pixman_image_fill_boxes
    , Bindings.Pixman.Generated.Unsafe.pixman_compute_composite_region
    , Bindings.Pixman.Generated.Unsafe.pixman_image_composite
    , Bindings.Pixman.Generated.Unsafe.pixman_image_composite32
    , Bindings.Pixman.Generated.Unsafe.pixman_image_composite64f
    , Bindings.Pixman.Generated.Unsafe.pixman_disable_out_of_bounds_workaround
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_create
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_destroy
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_freeze
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_thaw
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_lookup
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_insert
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_cache_remove
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_get_extents
    , Bindings.Pixman.Generated.Unsafe.pixman_glyph_get_mask_format
    , Bindings.Pixman.Generated.Unsafe.pixman_composite_glyphs
    , Bindings.Pixman.Generated.Unsafe.pixman_composite_glyphs_no_mask
    , Bindings.Pixman.Generated.Unsafe.pixman_sample_ceil_y
    , Bindings.Pixman.Generated.Unsafe.pixman_sample_floor_y
    , Bindings.Pixman.Generated.Unsafe.pixman_edge_step
    , Bindings.Pixman.Generated.Unsafe.pixman_edge_init
    , Bindings.Pixman.Generated.Unsafe.pixman_line_fixed_edge_init
    , Bindings.Pixman.Generated.Unsafe.pixman_rasterize_edges
    , Bindings.Pixman.Generated.Unsafe.pixman_add_traps
    , Bindings.Pixman.Generated.Unsafe.pixman_add_trapezoids
    , Bindings.Pixman.Generated.Unsafe.pixman_rasterize_trapezoid
    , Bindings.Pixman.Generated.Unsafe.pixman_composite_trapezoids
    , Bindings.Pixman.Generated.Unsafe.pixman_composite_triangles
    , Bindings.Pixman.Generated.Unsafe.pixman_add_triangles
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Pixman.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <pixman.h>"
  , "void hs_bindgen_a2cf5fc86c8c88da ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_transform_init_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_336e61345b1f5c66 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point_3d)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_aff2869ecd997685 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_bbaf9f4bb55833d6 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return (pixman_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3a778a31199f5caf ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7c493c2871836b68 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_8a0618a4d90c1142 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_44d4a63e1916e9ef ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_16cd1326a9b6c3d6 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9c4012243522d689 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_e379e5b668a7919c ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_bounds)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f3884317f774fa68 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e9d514ed052d4f3a ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_56aae067222466f2 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_scale)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_c16e5ade3f3da5ae ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_int_translate)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_f35911e0531115a3 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_is_inverse)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e204007d188b0ace ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_from_pixman_f_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0fb138356928cb4e ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_from_pixman_transform)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_333dcf96cc14faa7 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_8197d9a54a3b1b59 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_point)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ec3efa972ab7dccf ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_point_3d)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_562c53736ca53139 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_51523252fc304f94 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_adddd2fa64360684 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_71df425567458d5f ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_86e994e100c1aebc ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_0d445ff940bb5d26 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_c2861d08cf0af515 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_872532155486dd08 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_bounds)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e3aeb9ec910358d7 ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_identity)(arg1);"
  , "}"
  , "void hs_bindgen_641075d17ecf973f ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  (pixman_region_set_static_pointers)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_76b85a0c3f64cc52 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_init)(arg1);"
  , "}"
  , "void hs_bindgen_711e4dd7fbcb8ea2 ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_b8779e0958b2fbbc ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9130007e3e649313 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_255adfebd1db3828 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d02c34656d08dd84 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_fini)(arg1);"
  , "}"
  , "void hs_bindgen_62346ee301a5531e ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_5409874e3c6f1ebf ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b9ee82f202152c02 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9343e39517725718 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9d16565960bd3229 ("
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
  , "pixman_bool_t hs_bindgen_141a5a82886df3a2 ("
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
  , "pixman_bool_t hs_bindgen_f58def6e6cadcd44 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_f5c6601328fb5353 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7d8531da490bcee2 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_347b09bf995224c7 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b9ffe06d3ded22cd ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_15970d1bc094c7a4 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_not_empty)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_84dcdc42818f66d0 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_f01b384f69d0dbba ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_n_rects)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_1c75b50f82c11e57 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b5953cc8e3d7fdd0 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_e093cc3cd7225a9e ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_0fd0e6d0611637a2 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0366b88627a5e320 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_clear)(arg1);"
  , "}"
  , "void hs_bindgen_b0c2f9276120d1f6 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_init)(arg1);"
  , "}"
  , "void hs_bindgen_605df1f00ccf63ed ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region32_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_383c09a05e0c0045 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_66c4a40fec0deeab ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b838b99db46e89eb ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f5afdafe8a555a4b ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_fini)(arg1);"
  , "}"
  , "void hs_bindgen_1040638d55b23407 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region32_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_00ec163aaf740479 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_555e73235dd1b613 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_d72d63390a733e97 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_187fbeb4ad3ed67d ("
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
  , "pixman_bool_t hs_bindgen_4059a674b8bb337b ("
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
  , "pixman_bool_t hs_bindgen_25ebf8e8e5242949 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_2979192ef2832311 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_fd11006a2fcc94ab ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_8c0e9776b628a9d5 ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_537b9c2cd57c2352 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_aeedefd4710c62b0 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_not_empty)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_e887b46132ef6b4d ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_05a8b8d161997b84 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_n_rects)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_17cc0d25fc0fa531 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_cda8948d9eddf0aa ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_619ec7d76893b0b3 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_bb88de8e2c7fbc63 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a5fe3c2caa1cc60b ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_clear)(arg1);"
  , "}"
  , "void hs_bindgen_36ee650609772dce ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_init)(arg1);"
  , "}"
  , "void hs_bindgen_62cbe8690a397704 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_51fd7d23208abe38 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rectf)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_863d2461b31a9b6b ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_281b6e60a5f60278 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e21a84c6a240822a ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3a3ee0c726b150dc ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_fini)(arg1);"
  , "}"
  , "void hs_bindgen_c11e8b65b7e55a9a ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translate)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6cb1e610b0935514 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translatef)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_03a7970b2a01fef2 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9e46b978d1300e80 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_31dc1c625b24969f ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_dfc5f9075a379683 ("
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
  , "pixman_bool_t hs_bindgen_fe7367e228567ba8 ("
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
  , "pixman_bool_t hs_bindgen_c09116814ccf1d80 ("
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
  , "pixman_bool_t hs_bindgen_0a5e031ab78f556f ("
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
  , "pixman_bool_t hs_bindgen_1cd246d7a6111c08 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_4286c3ecf19e61c5 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_3586d64b39f437ba ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_0156d17b0429279c ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_pointf)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_6a0b5d88cfc7f0b7 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_210a79751254a8a9 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_c0ca8ab3e83a9b90 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_not_empty)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_350d46bb2a18c15f ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_a8f4307c1dc3f679 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_n_rects)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_67a5a38558ce0ac2 ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_6981dcd8f9b770d7 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_561ca6ca7e7f5252 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_cb6110f846ba90bb ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b1faac0c1ce28ddd ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_clear)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_cd4a3ebac6feaa6b ("
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
  , "pixman_bool_t hs_bindgen_de224fed3e6075a1 ("
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
  , "signed int hs_bindgen_9b845398f7b32954 (void)"
  , "{"
  , "  return (pixman_version)();"
  , "}"
  , "char const *hs_bindgen_91c834578fe1cf77 (void)"
  , "{"
  , "  return (pixman_version_string)();"
  , "}"
  , "pixman_bool_t hs_bindgen_ab807779ff357e7b ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_destination)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_a47b4ef4c05be526 ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_source)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_88d94c651777b94a ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_create_solid_fill)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_8a86d47f7d09b9ba ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_linear_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_99980a61019207e3 ("
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
  , "pixman_image_t *hs_bindgen_5900e94f7bb2cd87 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_conical_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_1762a519e07c6c17 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_52135524e6f03505 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits_no_clear)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_e23c9fbbec95e19f ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_ref)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_f67a17fff3431235 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_unref)(arg1);"
  , "}"
  , "void hs_bindgen_d867f14a89c21da9 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_destroy_function)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_04ee8f0af70e58ae ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_destroy_data)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_1f85eb51908d7409 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_1b6fdaa0af65c44d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region32)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_d78ea3196c3b708a ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region64f)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1bb159789430fbb8 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_has_client_clip)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_3fb46dc7f6a9f54a ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b3106227cc956aaa ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_repeat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_77c33d21e0165252 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_dither)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1431b3d49fcfa3e1 ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_dither_offset)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_849d6127fa5d8712 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_set_filter)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_00c878cc07723b63 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_source_clipping)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4476180713276b3b ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  (pixman_image_set_alpha_map)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_a63268652849f811 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_component_alpha)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_0d5aa35e996ddec5 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_component_alpha)(arg1);"
  , "}"
  , "void hs_bindgen_25fd15b9e1b30e91 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_accessors)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_769e3c5adbae3d58 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_indexed)(arg1, arg2);"
  , "}"
  , "uint32_t *hs_bindgen_a3e8f31382abb74d ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_data)(arg1);"
  , "}"
  , "signed int hs_bindgen_655f90256df0e744 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_width)(arg1);"
  , "}"
  , "signed int hs_bindgen_4da3f3bc169c476e ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_height)(arg1);"
  , "}"
  , "signed int hs_bindgen_b0f32ed9ad65553d ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_stride)(arg1);"
  , "}"
  , "signed int hs_bindgen_0e777d600e27ab4e ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_depth)(arg1);"
  , "}"
  , "pixman_format_code_t hs_bindgen_e51c5da890582990 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_format)(arg1);"
  , "}"
  , "pixman_fixed_t *hs_bindgen_c73c689d57c975a0 ("
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
  , "pixman_bool_t hs_bindgen_a02dff89e5cff416 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_rectangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_3b6014e8c8fd420c ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_boxes)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_7202904a2aff8014 ("
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
  , "void hs_bindgen_07ae38b2eee95971 ("
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
  , "void hs_bindgen_ed685ce058a1c6ef ("
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
  , "void hs_bindgen_a5d4b510ed878c91 ("
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
  , "void hs_bindgen_a41ff5ded26cf273 (void)"
  , "{"
  , "  (pixman_disable_out_of_bounds_workaround)();"
  , "}"
  , "pixman_glyph_cache_t *hs_bindgen_a0969e3d34e10e29 (void)"
  , "{"
  , "  return (pixman_glyph_cache_create)();"
  , "}"
  , "void hs_bindgen_39911d48fcdf946d ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_8b81763d6ca4e8ad ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_freeze)(arg1);"
  , "}"
  , "void hs_bindgen_b591ef6316ef1b8f ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_thaw)(arg1);"
  , "}"
  , "void const *hs_bindgen_19fdaf5120e67a36 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_lookup)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_844ca395a102777c ("
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
  , "void hs_bindgen_8bea6dc0e43e5aed ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_remove)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_18def1ff1265b9d7 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  (pixman_glyph_get_extents)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_format_code_t hs_bindgen_71785a569a31d431 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_get_mask_format)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_404b38bb0ea2d632 ("
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
  , "void hs_bindgen_8358abbe37c951ff ("
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
  , "pixman_fixed_t hs_bindgen_a497813cdf900259 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_ceil_y)(arg1, arg2);"
  , "}"
  , "pixman_fixed_t hs_bindgen_29847e1ce56c69d8 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_floor_y)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_964b9cc612320062 ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  (pixman_edge_step)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_8be428ab25f065f7 ("
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
  , "void hs_bindgen_e9e4f1d92e3687a5 ("
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
  , "void hs_bindgen_ea4a65fb321d85b7 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  (pixman_rasterize_edges)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_2acb3af28d162663 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_traps)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_d47de53cc831877b ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_trapezoids)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_0091e5f8242f0827 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  (pixman_rasterize_trapezoid)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_1d4d21fa236f4051 ("
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
  , "void hs_bindgen_0c339127975d35d6 ("
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
  , "void hs_bindgen_ef7eb28296e85527 ("
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_a2cf5fc86c8c88da" hs_bindgen_a2cf5fc86c8c88da_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_identity@
hs_bindgen_a2cf5fc86c8c88da ::
     RIP.Ptr Pixman_transform
  -> IO ()
hs_bindgen_a2cf5fc86c8c88da =
  RIP.fromFFIType hs_bindgen_a2cf5fc86c8c88da_base

{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> IO ()
pixman_transform_init_identity =
  hs_bindgen_a2cf5fc86c8c88da

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_336e61345b1f5c66" hs_bindgen_336e61345b1f5c66_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_point_3d@
hs_bindgen_336e61345b1f5c66 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_336e61345b1f5c66 =
  RIP.fromFFIType hs_bindgen_336e61345b1f5c66_base

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
  hs_bindgen_336e61345b1f5c66

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_point@
foreign import ccall unsafe "hs_bindgen_aff2869ecd997685" hs_bindgen_aff2869ecd997685_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_point@
hs_bindgen_aff2869ecd997685 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_aff2869ecd997685 =
  RIP.fromFFIType hs_bindgen_aff2869ecd997685_base

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
pixman_transform_point = hs_bindgen_aff2869ecd997685

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_multiply@
foreign import ccall unsafe "hs_bindgen_bbaf9f4bb55833d6" hs_bindgen_bbaf9f4bb55833d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_multiply@
hs_bindgen_bbaf9f4bb55833d6 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_bbaf9f4bb55833d6 =
  RIP.fromFFIType hs_bindgen_bbaf9f4bb55833d6_base

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
  hs_bindgen_bbaf9f4bb55833d6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_3a778a31199f5caf" hs_bindgen_3a778a31199f5caf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_scale@
hs_bindgen_3a778a31199f5caf ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_3a778a31199f5caf =
  RIP.fromFFIType hs_bindgen_3a778a31199f5caf_base

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
  hs_bindgen_3a778a31199f5caf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_scale@
foreign import ccall unsafe "hs_bindgen_7c493c2871836b68" hs_bindgen_7c493c2871836b68_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_scale@
hs_bindgen_7c493c2871836b68 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_7c493c2871836b68 =
  RIP.fromFFIType hs_bindgen_7c493c2871836b68_base

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
pixman_transform_scale = hs_bindgen_7c493c2871836b68

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_8a0618a4d90c1142" hs_bindgen_8a0618a4d90c1142_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_rotate@
hs_bindgen_8a0618a4d90c1142 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_8a0618a4d90c1142 =
  RIP.fromFFIType hs_bindgen_8a0618a4d90c1142_base

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
  hs_bindgen_8a0618a4d90c1142

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_rotate@
foreign import ccall unsafe "hs_bindgen_44d4a63e1916e9ef" hs_bindgen_44d4a63e1916e9ef_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_rotate@
hs_bindgen_44d4a63e1916e9ef ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_44d4a63e1916e9ef =
  RIP.fromFFIType hs_bindgen_44d4a63e1916e9ef_base

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
pixman_transform_rotate = hs_bindgen_44d4a63e1916e9ef

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_16cd1326a9b6c3d6" hs_bindgen_16cd1326a9b6c3d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_translate@
hs_bindgen_16cd1326a9b6c3d6 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_16cd1326a9b6c3d6 =
  RIP.fromFFIType hs_bindgen_16cd1326a9b6c3d6_base

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
  hs_bindgen_16cd1326a9b6c3d6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_translate@
foreign import ccall unsafe "hs_bindgen_9c4012243522d689" hs_bindgen_9c4012243522d689_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_translate@
hs_bindgen_9c4012243522d689 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_9c4012243522d689 =
  RIP.fromFFIType hs_bindgen_9c4012243522d689_base

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
  hs_bindgen_9c4012243522d689

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_bounds@
foreign import ccall unsafe "hs_bindgen_e379e5b668a7919c" hs_bindgen_e379e5b668a7919c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_bounds@
hs_bindgen_e379e5b668a7919c ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_e379e5b668a7919c =
  RIP.fromFFIType hs_bindgen_e379e5b668a7919c_base

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
pixman_transform_bounds = hs_bindgen_e379e5b668a7919c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_invert@
foreign import ccall unsafe "hs_bindgen_f3884317f774fa68" hs_bindgen_f3884317f774fa68_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_invert@
hs_bindgen_f3884317f774fa68 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_f3884317f774fa68 =
  RIP.fromFFIType hs_bindgen_f3884317f774fa68_base

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
pixman_transform_invert = hs_bindgen_f3884317f774fa68

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_identity@
foreign import ccall unsafe "hs_bindgen_e9d514ed052d4f3a" hs_bindgen_e9d514ed052d4f3a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_identity@
hs_bindgen_e9d514ed052d4f3a ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_e9d514ed052d4f3a =
  RIP.fromFFIType hs_bindgen_e9d514ed052d4f3a_base

{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_identity =
  hs_bindgen_e9d514ed052d4f3a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_scale@
foreign import ccall unsafe "hs_bindgen_56aae067222466f2" hs_bindgen_56aae067222466f2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_scale@
hs_bindgen_56aae067222466f2 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_56aae067222466f2 =
  RIP.fromFFIType hs_bindgen_56aae067222466f2_base

{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_scale =
  hs_bindgen_56aae067222466f2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_int_translate@
foreign import ccall unsafe "hs_bindgen_c16e5ade3f3da5ae" hs_bindgen_c16e5ade3f3da5ae_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_int_translate@
hs_bindgen_c16e5ade3f3da5ae ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_c16e5ade3f3da5ae =
  RIP.fromFFIType hs_bindgen_c16e5ade3f3da5ae_base

{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_int_translate =
  hs_bindgen_c16e5ade3f3da5ae

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_inverse@
foreign import ccall unsafe "hs_bindgen_f35911e0531115a3" hs_bindgen_f35911e0531115a3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_inverse@
hs_bindgen_f35911e0531115a3 ::
     PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_f35911e0531115a3 =
  RIP.fromFFIType hs_bindgen_f35911e0531115a3_base

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
  hs_bindgen_f35911e0531115a3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_from_pixman_f_transform@
foreign import ccall unsafe "hs_bindgen_e204007d188b0ace" hs_bindgen_e204007d188b0ace_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_transform_from_pixman_f_transform@
hs_bindgen_e204007d188b0ace ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_e204007d188b0ace =
  RIP.fromFFIType hs_bindgen_e204007d188b0ace_base

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
  hs_bindgen_e204007d188b0ace

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_from_pixman_transform@
foreign import ccall unsafe "hs_bindgen_0fb138356928cb4e" hs_bindgen_0fb138356928cb4e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_from_pixman_transform@
hs_bindgen_0fb138356928cb4e ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO ()
hs_bindgen_0fb138356928cb4e =
  RIP.fromFFIType hs_bindgen_0fb138356928cb4e_base

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
  hs_bindgen_0fb138356928cb4e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_invert@
foreign import ccall unsafe "hs_bindgen_333dcf96cc14faa7" hs_bindgen_333dcf96cc14faa7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_invert@
hs_bindgen_333dcf96cc14faa7 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_333dcf96cc14faa7 =
  RIP.fromFFIType hs_bindgen_333dcf96cc14faa7_base

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
  hs_bindgen_333dcf96cc14faa7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point@
foreign import ccall unsafe "hs_bindgen_8197d9a54a3b1b59" hs_bindgen_8197d9a54a3b1b59_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point@
hs_bindgen_8197d9a54a3b1b59 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO Pixman_bool_t
hs_bindgen_8197d9a54a3b1b59 =
  RIP.fromFFIType hs_bindgen_8197d9a54a3b1b59_base

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
  hs_bindgen_8197d9a54a3b1b59

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_ec3efa972ab7dccf" hs_bindgen_ec3efa972ab7dccf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point_3d@
hs_bindgen_ec3efa972ab7dccf ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO ()
hs_bindgen_ec3efa972ab7dccf =
  RIP.fromFFIType hs_bindgen_ec3efa972ab7dccf_base

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
  hs_bindgen_ec3efa972ab7dccf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_multiply@
foreign import ccall unsafe "hs_bindgen_562c53736ca53139" hs_bindgen_562c53736ca53139_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_multiply@
hs_bindgen_562c53736ca53139 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO ()
hs_bindgen_562c53736ca53139 =
  RIP.fromFFIType hs_bindgen_562c53736ca53139_base

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
  hs_bindgen_562c53736ca53139

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_51523252fc304f94" hs_bindgen_51523252fc304f94_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_scale@
hs_bindgen_51523252fc304f94 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_51523252fc304f94 =
  RIP.fromFFIType hs_bindgen_51523252fc304f94_base

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
  hs_bindgen_51523252fc304f94

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_scale@
foreign import ccall unsafe "hs_bindgen_adddd2fa64360684" hs_bindgen_adddd2fa64360684_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_scale@
hs_bindgen_adddd2fa64360684 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_adddd2fa64360684 =
  RIP.fromFFIType hs_bindgen_adddd2fa64360684_base

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
  hs_bindgen_adddd2fa64360684

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_71df425567458d5f" hs_bindgen_71df425567458d5f_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_rotate@
hs_bindgen_71df425567458d5f ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_71df425567458d5f =
  RIP.fromFFIType hs_bindgen_71df425567458d5f_base

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
  hs_bindgen_71df425567458d5f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_rotate@
foreign import ccall unsafe "hs_bindgen_86e994e100c1aebc" hs_bindgen_86e994e100c1aebc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_rotate@
hs_bindgen_86e994e100c1aebc ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_86e994e100c1aebc =
  RIP.fromFFIType hs_bindgen_86e994e100c1aebc_base

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
  hs_bindgen_86e994e100c1aebc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_0d445ff940bb5d26" hs_bindgen_0d445ff940bb5d26_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_translate@
hs_bindgen_0d445ff940bb5d26 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_0d445ff940bb5d26 =
  RIP.fromFFIType hs_bindgen_0d445ff940bb5d26_base

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
  hs_bindgen_0d445ff940bb5d26

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_translate@
foreign import ccall unsafe "hs_bindgen_c2861d08cf0af515" hs_bindgen_c2861d08cf0af515_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_translate@
hs_bindgen_c2861d08cf0af515 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_c2861d08cf0af515 =
  RIP.fromFFIType hs_bindgen_c2861d08cf0af515_base

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
  hs_bindgen_c2861d08cf0af515

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_bounds@
foreign import ccall unsafe "hs_bindgen_872532155486dd08" hs_bindgen_872532155486dd08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_bounds@
hs_bindgen_872532155486dd08 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_872532155486dd08 =
  RIP.fromFFIType hs_bindgen_872532155486dd08_base

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
  hs_bindgen_872532155486dd08

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_e3aeb9ec910358d7" hs_bindgen_e3aeb9ec910358d7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_identity@
hs_bindgen_e3aeb9ec910358d7 ::
     RIP.Ptr Pixman_f_transform
  -> IO ()
hs_bindgen_e3aeb9ec910358d7 =
  RIP.fromFFIType hs_bindgen_e3aeb9ec910358d7_base

{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_init_identity =
  hs_bindgen_e3aeb9ec910358d7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_set_static_pointers@
foreign import ccall unsafe "hs_bindgen_641075d17ecf973f" hs_bindgen_641075d17ecf973f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_set_static_pointers@
hs_bindgen_641075d17ecf973f ::
     RIP.Ptr Pixman_box16_t
  -> RIP.Ptr Pixman_region16_data_t
  -> RIP.Ptr Pixman_region16_data_t
  -> IO ()
hs_bindgen_641075d17ecf973f =
  RIP.fromFFIType hs_bindgen_641075d17ecf973f_base

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
  hs_bindgen_641075d17ecf973f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init@
foreign import ccall unsafe "hs_bindgen_76b85a0c3f64cc52" hs_bindgen_76b85a0c3f64cc52_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init@
hs_bindgen_76b85a0c3f64cc52 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_76b85a0c3f64cc52 =
  RIP.fromFFIType hs_bindgen_76b85a0c3f64cc52_base

{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_init = hs_bindgen_76b85a0c3f64cc52

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rect@
foreign import ccall unsafe "hs_bindgen_711e4dd7fbcb8ea2" hs_bindgen_711e4dd7fbcb8ea2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rect@
hs_bindgen_711e4dd7fbcb8ea2 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_711e4dd7fbcb8ea2 =
  RIP.fromFFIType hs_bindgen_711e4dd7fbcb8ea2_base

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
pixman_region_init_rect = hs_bindgen_711e4dd7fbcb8ea2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rects@
foreign import ccall unsafe "hs_bindgen_b8779e0958b2fbbc" hs_bindgen_b8779e0958b2fbbc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rects@
hs_bindgen_b8779e0958b2fbbc ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_b8779e0958b2fbbc =
  RIP.fromFFIType hs_bindgen_b8779e0958b2fbbc_base

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
  hs_bindgen_b8779e0958b2fbbc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_with_extents@
foreign import ccall unsafe "hs_bindgen_9130007e3e649313" hs_bindgen_9130007e3e649313_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_with_extents@
hs_bindgen_9130007e3e649313 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_9130007e3e649313 =
  RIP.fromFFIType hs_bindgen_9130007e3e649313_base

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
  hs_bindgen_9130007e3e649313

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_from_image@
foreign import ccall unsafe "hs_bindgen_255adfebd1db3828" hs_bindgen_255adfebd1db3828_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_init_from_image@
hs_bindgen_255adfebd1db3828 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_255adfebd1db3828 =
  RIP.fromFFIType hs_bindgen_255adfebd1db3828_base

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
  hs_bindgen_255adfebd1db3828

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_fini@
foreign import ccall unsafe "hs_bindgen_d02c34656d08dd84" hs_bindgen_d02c34656d08dd84_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_fini@
hs_bindgen_d02c34656d08dd84 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_d02c34656d08dd84 =
  RIP.fromFFIType hs_bindgen_d02c34656d08dd84_base

{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_fini = hs_bindgen_d02c34656d08dd84

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_translate@
foreign import ccall unsafe "hs_bindgen_62346ee301a5531e" hs_bindgen_62346ee301a5531e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_translate@
hs_bindgen_62346ee301a5531e ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_62346ee301a5531e =
  RIP.fromFFIType hs_bindgen_62346ee301a5531e_base

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
pixman_region_translate = hs_bindgen_62346ee301a5531e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_copy@
foreign import ccall unsafe "hs_bindgen_5409874e3c6f1ebf" hs_bindgen_5409874e3c6f1ebf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_copy@
hs_bindgen_5409874e3c6f1ebf ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_5409874e3c6f1ebf =
  RIP.fromFFIType hs_bindgen_5409874e3c6f1ebf_base

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
pixman_region_copy = hs_bindgen_5409874e3c6f1ebf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect@
foreign import ccall unsafe "hs_bindgen_b9ee82f202152c02" hs_bindgen_b9ee82f202152c02_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect@
hs_bindgen_b9ee82f202152c02 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b9ee82f202152c02 =
  RIP.fromFFIType hs_bindgen_b9ee82f202152c02_base

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
pixman_region_intersect = hs_bindgen_b9ee82f202152c02

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_union@
foreign import ccall unsafe "hs_bindgen_9343e39517725718" hs_bindgen_9343e39517725718_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_union@
hs_bindgen_9343e39517725718 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_9343e39517725718 =
  RIP.fromFFIType hs_bindgen_9343e39517725718_base

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
pixman_region_union = hs_bindgen_9343e39517725718

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_union_rect@
foreign import ccall unsafe "hs_bindgen_9d16565960bd3229" hs_bindgen_9d16565960bd3229_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_union_rect@
hs_bindgen_9d16565960bd3229 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_9d16565960bd3229 =
  RIP.fromFFIType hs_bindgen_9d16565960bd3229_base

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
  hs_bindgen_9d16565960bd3229

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect_rect@
foreign import ccall unsafe "hs_bindgen_141a5a82886df3a2" hs_bindgen_141a5a82886df3a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect_rect@
hs_bindgen_141a5a82886df3a2 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_141a5a82886df3a2 =
  RIP.fromFFIType hs_bindgen_141a5a82886df3a2_base

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
  hs_bindgen_141a5a82886df3a2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_subtract@
foreign import ccall unsafe "hs_bindgen_f58def6e6cadcd44" hs_bindgen_f58def6e6cadcd44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_subtract@
hs_bindgen_f58def6e6cadcd44 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_f58def6e6cadcd44 =
  RIP.fromFFIType hs_bindgen_f58def6e6cadcd44_base

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
pixman_region_subtract = hs_bindgen_f58def6e6cadcd44

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_inverse@
foreign import ccall unsafe "hs_bindgen_f5c6601328fb5353" hs_bindgen_f5c6601328fb5353_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_inverse@
hs_bindgen_f5c6601328fb5353 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_f5c6601328fb5353 =
  RIP.fromFFIType hs_bindgen_f5c6601328fb5353_base

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
pixman_region_inverse = hs_bindgen_f5c6601328fb5353

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_point@
foreign import ccall unsafe "hs_bindgen_7d8531da490bcee2" hs_bindgen_7d8531da490bcee2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_point@
hs_bindgen_7d8531da490bcee2 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_7d8531da490bcee2 =
  RIP.fromFFIType hs_bindgen_7d8531da490bcee2_base

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
  hs_bindgen_7d8531da490bcee2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_347b09bf995224c7" hs_bindgen_347b09bf995224c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_rectangle@
hs_bindgen_347b09bf995224c7 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_region_overlap_t
hs_bindgen_347b09bf995224c7 =
  RIP.fromFFIType hs_bindgen_347b09bf995224c7_base

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
  hs_bindgen_347b09bf995224c7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_empty@
foreign import ccall unsafe "hs_bindgen_b9ffe06d3ded22cd" hs_bindgen_b9ffe06d3ded22cd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_empty@
hs_bindgen_b9ffe06d3ded22cd ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b9ffe06d3ded22cd =
  RIP.fromFFIType hs_bindgen_b9ffe06d3ded22cd_base

{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_empty = hs_bindgen_b9ffe06d3ded22cd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_not_empty@
foreign import ccall unsafe "hs_bindgen_15970d1bc094c7a4" hs_bindgen_15970d1bc094c7a4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_not_empty@
hs_bindgen_15970d1bc094c7a4 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_15970d1bc094c7a4 =
  RIP.fromFFIType hs_bindgen_15970d1bc094c7a4_base

{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_not_empty = hs_bindgen_15970d1bc094c7a4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_extents@
foreign import ccall unsafe "hs_bindgen_84dcdc42818f66d0" hs_bindgen_84dcdc42818f66d0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_extents@
hs_bindgen_84dcdc42818f66d0 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_84dcdc42818f66d0 =
  RIP.fromFFIType hs_bindgen_84dcdc42818f66d0_base

{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_extents = hs_bindgen_84dcdc42818f66d0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_n_rects@
foreign import ccall unsafe "hs_bindgen_f01b384f69d0dbba" hs_bindgen_f01b384f69d0dbba_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_n_rects@
hs_bindgen_f01b384f69d0dbba ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO RIP.CInt
hs_bindgen_f01b384f69d0dbba =
  RIP.fromFFIType hs_bindgen_f01b384f69d0dbba_base

{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region_n_rects = hs_bindgen_f01b384f69d0dbba

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_rectangles@
foreign import ccall unsafe "hs_bindgen_1c75b50f82c11e57" hs_bindgen_1c75b50f82c11e57_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_rectangles@
hs_bindgen_1c75b50f82c11e57 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_1c75b50f82c11e57 =
  RIP.fromFFIType hs_bindgen_1c75b50f82c11e57_base

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
  hs_bindgen_1c75b50f82c11e57

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_equal@
foreign import ccall unsafe "hs_bindgen_b5953cc8e3d7fdd0" hs_bindgen_b5953cc8e3d7fdd0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_equal@
hs_bindgen_b5953cc8e3d7fdd0 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b5953cc8e3d7fdd0 =
  RIP.fromFFIType hs_bindgen_b5953cc8e3d7fdd0_base

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
pixman_region_equal = hs_bindgen_b5953cc8e3d7fdd0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_selfcheck@
foreign import ccall unsafe "hs_bindgen_e093cc3cd7225a9e" hs_bindgen_e093cc3cd7225a9e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_selfcheck@
hs_bindgen_e093cc3cd7225a9e ::
     RIP.Ptr Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_e093cc3cd7225a9e =
  RIP.fromFFIType hs_bindgen_e093cc3cd7225a9e_base

{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_selfcheck = hs_bindgen_e093cc3cd7225a9e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_reset@
foreign import ccall unsafe "hs_bindgen_0fd0e6d0611637a2" hs_bindgen_0fd0e6d0611637a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_reset@
hs_bindgen_0fd0e6d0611637a2 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_0fd0e6d0611637a2 =
  RIP.fromFFIType hs_bindgen_0fd0e6d0611637a2_base

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
pixman_region_reset = hs_bindgen_0fd0e6d0611637a2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_clear@
foreign import ccall unsafe "hs_bindgen_0366b88627a5e320" hs_bindgen_0366b88627a5e320_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region_clear@
hs_bindgen_0366b88627a5e320 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_0366b88627a5e320 =
  RIP.fromFFIType hs_bindgen_0366b88627a5e320_base

{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_clear = hs_bindgen_0366b88627a5e320

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init@
foreign import ccall unsafe "hs_bindgen_b0c2f9276120d1f6" hs_bindgen_b0c2f9276120d1f6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init@
hs_bindgen_b0c2f9276120d1f6 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_b0c2f9276120d1f6 =
  RIP.fromFFIType hs_bindgen_b0c2f9276120d1f6_base

{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_init = hs_bindgen_b0c2f9276120d1f6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rect@
foreign import ccall unsafe "hs_bindgen_605df1f00ccf63ed" hs_bindgen_605df1f00ccf63ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rect@
hs_bindgen_605df1f00ccf63ed ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_605df1f00ccf63ed =
  RIP.fromFFIType hs_bindgen_605df1f00ccf63ed_base

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
  hs_bindgen_605df1f00ccf63ed

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rects@
foreign import ccall unsafe "hs_bindgen_383c09a05e0c0045" hs_bindgen_383c09a05e0c0045_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rects@
hs_bindgen_383c09a05e0c0045 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_383c09a05e0c0045 =
  RIP.fromFFIType hs_bindgen_383c09a05e0c0045_base

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
  hs_bindgen_383c09a05e0c0045

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_with_extents@
foreign import ccall unsafe "hs_bindgen_66c4a40fec0deeab" hs_bindgen_66c4a40fec0deeab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_with_extents@
hs_bindgen_66c4a40fec0deeab ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_66c4a40fec0deeab =
  RIP.fromFFIType hs_bindgen_66c4a40fec0deeab_base

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
  hs_bindgen_66c4a40fec0deeab

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_from_image@
foreign import ccall unsafe "hs_bindgen_b838b99db46e89eb" hs_bindgen_b838b99db46e89eb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_from_image@
hs_bindgen_b838b99db46e89eb ::
     RIP.Ptr Pixman_region32_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_b838b99db46e89eb =
  RIP.fromFFIType hs_bindgen_b838b99db46e89eb_base

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
  hs_bindgen_b838b99db46e89eb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_fini@
foreign import ccall unsafe "hs_bindgen_f5afdafe8a555a4b" hs_bindgen_f5afdafe8a555a4b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_fini@
hs_bindgen_f5afdafe8a555a4b ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_f5afdafe8a555a4b =
  RIP.fromFFIType hs_bindgen_f5afdafe8a555a4b_base

{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_fini = hs_bindgen_f5afdafe8a555a4b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_translate@
foreign import ccall unsafe "hs_bindgen_1040638d55b23407" hs_bindgen_1040638d55b23407_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_translate@
hs_bindgen_1040638d55b23407 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_1040638d55b23407 =
  RIP.fromFFIType hs_bindgen_1040638d55b23407_base

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
  hs_bindgen_1040638d55b23407

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_copy@
foreign import ccall unsafe "hs_bindgen_00ec163aaf740479" hs_bindgen_00ec163aaf740479_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_copy@
hs_bindgen_00ec163aaf740479 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_00ec163aaf740479 =
  RIP.fromFFIType hs_bindgen_00ec163aaf740479_base

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
pixman_region32_copy = hs_bindgen_00ec163aaf740479

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect@
foreign import ccall unsafe "hs_bindgen_555e73235dd1b613" hs_bindgen_555e73235dd1b613_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect@
hs_bindgen_555e73235dd1b613 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_555e73235dd1b613 =
  RIP.fromFFIType hs_bindgen_555e73235dd1b613_base

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
  hs_bindgen_555e73235dd1b613

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_union@
foreign import ccall unsafe "hs_bindgen_d72d63390a733e97" hs_bindgen_d72d63390a733e97_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_union@
hs_bindgen_d72d63390a733e97 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_d72d63390a733e97 =
  RIP.fromFFIType hs_bindgen_d72d63390a733e97_base

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
pixman_region32_union = hs_bindgen_d72d63390a733e97

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect_rect@
foreign import ccall unsafe "hs_bindgen_187fbeb4ad3ed67d" hs_bindgen_187fbeb4ad3ed67d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect_rect@
hs_bindgen_187fbeb4ad3ed67d ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_187fbeb4ad3ed67d =
  RIP.fromFFIType hs_bindgen_187fbeb4ad3ed67d_base

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
  hs_bindgen_187fbeb4ad3ed67d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_union_rect@
foreign import ccall unsafe "hs_bindgen_4059a674b8bb337b" hs_bindgen_4059a674b8bb337b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_union_rect@
hs_bindgen_4059a674b8bb337b ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_4059a674b8bb337b =
  RIP.fromFFIType hs_bindgen_4059a674b8bb337b_base

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
  hs_bindgen_4059a674b8bb337b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_subtract@
foreign import ccall unsafe "hs_bindgen_25ebf8e8e5242949" hs_bindgen_25ebf8e8e5242949_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_subtract@
hs_bindgen_25ebf8e8e5242949 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_25ebf8e8e5242949 =
  RIP.fromFFIType hs_bindgen_25ebf8e8e5242949_base

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
  hs_bindgen_25ebf8e8e5242949

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_inverse@
foreign import ccall unsafe "hs_bindgen_2979192ef2832311" hs_bindgen_2979192ef2832311_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_inverse@
hs_bindgen_2979192ef2832311 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_2979192ef2832311 =
  RIP.fromFFIType hs_bindgen_2979192ef2832311_base

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
pixman_region32_inverse = hs_bindgen_2979192ef2832311

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_point@
foreign import ccall unsafe "hs_bindgen_fd11006a2fcc94ab" hs_bindgen_fd11006a2fcc94ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_point@
hs_bindgen_fd11006a2fcc94ab ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_fd11006a2fcc94ab =
  RIP.fromFFIType hs_bindgen_fd11006a2fcc94ab_base

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
  hs_bindgen_fd11006a2fcc94ab

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_8c0e9776b628a9d5" hs_bindgen_8c0e9776b628a9d5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_rectangle@
hs_bindgen_8c0e9776b628a9d5 ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_region_overlap_t
hs_bindgen_8c0e9776b628a9d5 =
  RIP.fromFFIType hs_bindgen_8c0e9776b628a9d5_base

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
  hs_bindgen_8c0e9776b628a9d5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_empty@
foreign import ccall unsafe "hs_bindgen_537b9c2cd57c2352" hs_bindgen_537b9c2cd57c2352_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_empty@
hs_bindgen_537b9c2cd57c2352 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_537b9c2cd57c2352 =
  RIP.fromFFIType hs_bindgen_537b9c2cd57c2352_base

{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_empty = hs_bindgen_537b9c2cd57c2352

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_not_empty@
foreign import ccall unsafe "hs_bindgen_aeedefd4710c62b0" hs_bindgen_aeedefd4710c62b0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_not_empty@
hs_bindgen_aeedefd4710c62b0 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_aeedefd4710c62b0 =
  RIP.fromFFIType hs_bindgen_aeedefd4710c62b0_base

{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_not_empty =
  hs_bindgen_aeedefd4710c62b0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_extents@
foreign import ccall unsafe "hs_bindgen_e887b46132ef6b4d" hs_bindgen_e887b46132ef6b4d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_extents@
hs_bindgen_e887b46132ef6b4d ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_e887b46132ef6b4d =
  RIP.fromFFIType hs_bindgen_e887b46132ef6b4d_base

{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_extents = hs_bindgen_e887b46132ef6b4d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_n_rects@
foreign import ccall unsafe "hs_bindgen_05a8b8d161997b84" hs_bindgen_05a8b8d161997b84_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_n_rects@
hs_bindgen_05a8b8d161997b84 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO RIP.CInt
hs_bindgen_05a8b8d161997b84 =
  RIP.fromFFIType hs_bindgen_05a8b8d161997b84_base

{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region32_n_rects = hs_bindgen_05a8b8d161997b84

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_rectangles@
foreign import ccall unsafe "hs_bindgen_17cc0d25fc0fa531" hs_bindgen_17cc0d25fc0fa531_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_rectangles@
hs_bindgen_17cc0d25fc0fa531 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_17cc0d25fc0fa531 =
  RIP.fromFFIType hs_bindgen_17cc0d25fc0fa531_base

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
  hs_bindgen_17cc0d25fc0fa531

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_equal@
foreign import ccall unsafe "hs_bindgen_cda8948d9eddf0aa" hs_bindgen_cda8948d9eddf0aa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_equal@
hs_bindgen_cda8948d9eddf0aa ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_cda8948d9eddf0aa =
  RIP.fromFFIType hs_bindgen_cda8948d9eddf0aa_base

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
pixman_region32_equal = hs_bindgen_cda8948d9eddf0aa

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_selfcheck@
foreign import ccall unsafe "hs_bindgen_619ec7d76893b0b3" hs_bindgen_619ec7d76893b0b3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_selfcheck@
hs_bindgen_619ec7d76893b0b3 ::
     RIP.Ptr Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_619ec7d76893b0b3 =
  RIP.fromFFIType hs_bindgen_619ec7d76893b0b3_base

{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_selfcheck =
  hs_bindgen_619ec7d76893b0b3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_reset@
foreign import ccall unsafe "hs_bindgen_bb88de8e2c7fbc63" hs_bindgen_bb88de8e2c7fbc63_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_reset@
hs_bindgen_bb88de8e2c7fbc63 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_bb88de8e2c7fbc63 =
  RIP.fromFFIType hs_bindgen_bb88de8e2c7fbc63_base

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
pixman_region32_reset = hs_bindgen_bb88de8e2c7fbc63

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_clear@
foreign import ccall unsafe "hs_bindgen_a5fe3c2caa1cc60b" hs_bindgen_a5fe3c2caa1cc60b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region32_clear@
hs_bindgen_a5fe3c2caa1cc60b ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_a5fe3c2caa1cc60b =
  RIP.fromFFIType hs_bindgen_a5fe3c2caa1cc60b_base

{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_clear = hs_bindgen_a5fe3c2caa1cc60b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init@
foreign import ccall unsafe "hs_bindgen_36ee650609772dce" hs_bindgen_36ee650609772dce_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init@
hs_bindgen_36ee650609772dce ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_36ee650609772dce =
  RIP.fromFFIType hs_bindgen_36ee650609772dce_base

{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_init = hs_bindgen_36ee650609772dce

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rect@
foreign import ccall unsafe "hs_bindgen_62cbe8690a397704" hs_bindgen_62cbe8690a397704_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rect@
hs_bindgen_62cbe8690a397704 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_62cbe8690a397704 =
  RIP.fromFFIType hs_bindgen_62cbe8690a397704_base

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
  hs_bindgen_62cbe8690a397704

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rectf@
foreign import ccall unsafe "hs_bindgen_51fd7d23208abe38" hs_bindgen_51fd7d23208abe38_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rectf@
hs_bindgen_51fd7d23208abe38 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_51fd7d23208abe38 =
  RIP.fromFFIType hs_bindgen_51fd7d23208abe38_base

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
  hs_bindgen_51fd7d23208abe38

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rects@
foreign import ccall unsafe "hs_bindgen_863d2461b31a9b6b" hs_bindgen_863d2461b31a9b6b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rects@
hs_bindgen_863d2461b31a9b6b ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_863d2461b31a9b6b =
  RIP.fromFFIType hs_bindgen_863d2461b31a9b6b_base

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
  hs_bindgen_863d2461b31a9b6b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_with_extents@
foreign import ccall unsafe "hs_bindgen_281b6e60a5f60278" hs_bindgen_281b6e60a5f60278_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_with_extents@
hs_bindgen_281b6e60a5f60278 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_281b6e60a5f60278 =
  RIP.fromFFIType hs_bindgen_281b6e60a5f60278_base

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
  hs_bindgen_281b6e60a5f60278

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_from_image@
foreign import ccall unsafe "hs_bindgen_e21a84c6a240822a" hs_bindgen_e21a84c6a240822a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_from_image@
hs_bindgen_e21a84c6a240822a ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_e21a84c6a240822a =
  RIP.fromFFIType hs_bindgen_e21a84c6a240822a_base

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
  hs_bindgen_e21a84c6a240822a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_fini@
foreign import ccall unsafe "hs_bindgen_3a3ee0c726b150dc" hs_bindgen_3a3ee0c726b150dc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_fini@
hs_bindgen_3a3ee0c726b150dc ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_3a3ee0c726b150dc =
  RIP.fromFFIType hs_bindgen_3a3ee0c726b150dc_base

{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_fini = hs_bindgen_3a3ee0c726b150dc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translate@
foreign import ccall unsafe "hs_bindgen_c11e8b65b7e55a9a" hs_bindgen_c11e8b65b7e55a9a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translate@
hs_bindgen_c11e8b65b7e55a9a ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_c11e8b65b7e55a9a =
  RIP.fromFFIType hs_bindgen_c11e8b65b7e55a9a_base

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
  hs_bindgen_c11e8b65b7e55a9a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translatef@
foreign import ccall unsafe "hs_bindgen_6cb1e610b0935514" hs_bindgen_6cb1e610b0935514_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translatef@
hs_bindgen_6cb1e610b0935514 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_6cb1e610b0935514 =
  RIP.fromFFIType hs_bindgen_6cb1e610b0935514_base

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
  hs_bindgen_6cb1e610b0935514

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_copy@
foreign import ccall unsafe "hs_bindgen_03a7970b2a01fef2" hs_bindgen_03a7970b2a01fef2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_copy@
hs_bindgen_03a7970b2a01fef2 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_03a7970b2a01fef2 =
  RIP.fromFFIType hs_bindgen_03a7970b2a01fef2_base

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
pixman_region64f_copy = hs_bindgen_03a7970b2a01fef2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect@
foreign import ccall unsafe "hs_bindgen_9e46b978d1300e80" hs_bindgen_9e46b978d1300e80_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect@
hs_bindgen_9e46b978d1300e80 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_9e46b978d1300e80 =
  RIP.fromFFIType hs_bindgen_9e46b978d1300e80_base

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
  hs_bindgen_9e46b978d1300e80

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union@
foreign import ccall unsafe "hs_bindgen_31dc1c625b24969f" hs_bindgen_31dc1c625b24969f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union@
hs_bindgen_31dc1c625b24969f ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_31dc1c625b24969f =
  RIP.fromFFIType hs_bindgen_31dc1c625b24969f_base

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
pixman_region64f_union = hs_bindgen_31dc1c625b24969f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rect@
foreign import ccall unsafe "hs_bindgen_dfc5f9075a379683" hs_bindgen_dfc5f9075a379683_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rect@
hs_bindgen_dfc5f9075a379683 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_dfc5f9075a379683 =
  RIP.fromFFIType hs_bindgen_dfc5f9075a379683_base

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
  hs_bindgen_dfc5f9075a379683

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rectf@
foreign import ccall unsafe "hs_bindgen_fe7367e228567ba8" hs_bindgen_fe7367e228567ba8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rectf@
hs_bindgen_fe7367e228567ba8 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_fe7367e228567ba8 =
  RIP.fromFFIType hs_bindgen_fe7367e228567ba8_base

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
  hs_bindgen_fe7367e228567ba8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rect@
foreign import ccall unsafe "hs_bindgen_c09116814ccf1d80" hs_bindgen_c09116814ccf1d80_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rect@
hs_bindgen_c09116814ccf1d80 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_c09116814ccf1d80 =
  RIP.fromFFIType hs_bindgen_c09116814ccf1d80_base

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
  hs_bindgen_c09116814ccf1d80

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rectf@
foreign import ccall unsafe "hs_bindgen_0a5e031ab78f556f" hs_bindgen_0a5e031ab78f556f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rectf@
hs_bindgen_0a5e031ab78f556f ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_0a5e031ab78f556f =
  RIP.fromFFIType hs_bindgen_0a5e031ab78f556f_base

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
  hs_bindgen_0a5e031ab78f556f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_subtract@
foreign import ccall unsafe "hs_bindgen_1cd246d7a6111c08" hs_bindgen_1cd246d7a6111c08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_subtract@
hs_bindgen_1cd246d7a6111c08 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_1cd246d7a6111c08 =
  RIP.fromFFIType hs_bindgen_1cd246d7a6111c08_base

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
  hs_bindgen_1cd246d7a6111c08

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_inverse@
foreign import ccall unsafe "hs_bindgen_4286c3ecf19e61c5" hs_bindgen_4286c3ecf19e61c5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_inverse@
hs_bindgen_4286c3ecf19e61c5 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_4286c3ecf19e61c5 =
  RIP.fromFFIType hs_bindgen_4286c3ecf19e61c5_base

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
  hs_bindgen_4286c3ecf19e61c5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_point@
foreign import ccall unsafe "hs_bindgen_3586d64b39f437ba" hs_bindgen_3586d64b39f437ba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_point@
hs_bindgen_3586d64b39f437ba ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_3586d64b39f437ba =
  RIP.fromFFIType hs_bindgen_3586d64b39f437ba_base

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
  hs_bindgen_3586d64b39f437ba

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_pointf@
foreign import ccall unsafe "hs_bindgen_0156d17b0429279c" hs_bindgen_0156d17b0429279c_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_pointf@
hs_bindgen_0156d17b0429279c ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_0156d17b0429279c =
  RIP.fromFFIType hs_bindgen_0156d17b0429279c_base

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
  hs_bindgen_0156d17b0429279c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_6a0b5d88cfc7f0b7" hs_bindgen_6a0b5d88cfc7f0b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_rectangle@
hs_bindgen_6a0b5d88cfc7f0b7 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_region_overlap_t
hs_bindgen_6a0b5d88cfc7f0b7 =
  RIP.fromFFIType hs_bindgen_6a0b5d88cfc7f0b7_base

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
  hs_bindgen_6a0b5d88cfc7f0b7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_empty@
foreign import ccall unsafe "hs_bindgen_210a79751254a8a9" hs_bindgen_210a79751254a8a9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_empty@
hs_bindgen_210a79751254a8a9 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_210a79751254a8a9 =
  RIP.fromFFIType hs_bindgen_210a79751254a8a9_base

{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_empty = hs_bindgen_210a79751254a8a9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_not_empty@
foreign import ccall unsafe "hs_bindgen_c0ca8ab3e83a9b90" hs_bindgen_c0ca8ab3e83a9b90_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_not_empty@
hs_bindgen_c0ca8ab3e83a9b90 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_c0ca8ab3e83a9b90 =
  RIP.fromFFIType hs_bindgen_c0ca8ab3e83a9b90_base

{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_not_empty =
  hs_bindgen_c0ca8ab3e83a9b90

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_extents@
foreign import ccall unsafe "hs_bindgen_350d46bb2a18c15f" hs_bindgen_350d46bb2a18c15f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_extents@
hs_bindgen_350d46bb2a18c15f ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_350d46bb2a18c15f =
  RIP.fromFFIType hs_bindgen_350d46bb2a18c15f_base

{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_extents =
  hs_bindgen_350d46bb2a18c15f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_n_rects@
foreign import ccall unsafe "hs_bindgen_a8f4307c1dc3f679" hs_bindgen_a8f4307c1dc3f679_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_n_rects@
hs_bindgen_a8f4307c1dc3f679 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO RIP.CInt
hs_bindgen_a8f4307c1dc3f679 =
  RIP.fromFFIType hs_bindgen_a8f4307c1dc3f679_base

{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region64f_n_rects =
  hs_bindgen_a8f4307c1dc3f679

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_rectangles@
foreign import ccall unsafe "hs_bindgen_67a5a38558ce0ac2" hs_bindgen_67a5a38558ce0ac2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_rectangles@
hs_bindgen_67a5a38558ce0ac2 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_67a5a38558ce0ac2 =
  RIP.fromFFIType hs_bindgen_67a5a38558ce0ac2_base

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
  hs_bindgen_67a5a38558ce0ac2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_equal@
foreign import ccall unsafe "hs_bindgen_6981dcd8f9b770d7" hs_bindgen_6981dcd8f9b770d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_equal@
hs_bindgen_6981dcd8f9b770d7 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_6981dcd8f9b770d7 =
  RIP.fromFFIType hs_bindgen_6981dcd8f9b770d7_base

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
pixman_region64f_equal = hs_bindgen_6981dcd8f9b770d7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_selfcheck@
foreign import ccall unsafe "hs_bindgen_561ca6ca7e7f5252" hs_bindgen_561ca6ca7e7f5252_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_selfcheck@
hs_bindgen_561ca6ca7e7f5252 ::
     RIP.Ptr Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_561ca6ca7e7f5252 =
  RIP.fromFFIType hs_bindgen_561ca6ca7e7f5252_base

{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_selfcheck =
  hs_bindgen_561ca6ca7e7f5252

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_reset@
foreign import ccall unsafe "hs_bindgen_cb6110f846ba90bb" hs_bindgen_cb6110f846ba90bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_reset@
hs_bindgen_cb6110f846ba90bb ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_cb6110f846ba90bb =
  RIP.fromFFIType hs_bindgen_cb6110f846ba90bb_base

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
pixman_region64f_reset = hs_bindgen_cb6110f846ba90bb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_clear@
foreign import ccall unsafe "hs_bindgen_b1faac0c1ce28ddd" hs_bindgen_b1faac0c1ce28ddd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_region64f_clear@
hs_bindgen_b1faac0c1ce28ddd ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_b1faac0c1ce28ddd =
  RIP.fromFFIType hs_bindgen_b1faac0c1ce28ddd_base

{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_clear = hs_bindgen_b1faac0c1ce28ddd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_blt@
foreign import ccall unsafe "hs_bindgen_cd4a3ebac6feaa6b" hs_bindgen_cd4a3ebac6feaa6b_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_blt@
hs_bindgen_cd4a3ebac6feaa6b ::
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
hs_bindgen_cd4a3ebac6feaa6b =
  RIP.fromFFIType hs_bindgen_cd4a3ebac6feaa6b_base

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
pixman_blt = hs_bindgen_cd4a3ebac6feaa6b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_fill@
foreign import ccall unsafe "hs_bindgen_de224fed3e6075a1" hs_bindgen_de224fed3e6075a1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_fill@
hs_bindgen_de224fed3e6075a1 ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> HsBindgen.Runtime.LibC.Word32
  -> IO Pixman_bool_t
hs_bindgen_de224fed3e6075a1 =
  RIP.fromFFIType hs_bindgen_de224fed3e6075a1_base

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
pixman_fill = hs_bindgen_de224fed3e6075a1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_version@
foreign import ccall unsafe "hs_bindgen_9b845398f7b32954" hs_bindgen_9b845398f7b32954_base ::
     IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_version@
hs_bindgen_9b845398f7b32954 :: IO RIP.CInt
hs_bindgen_9b845398f7b32954 =
  RIP.fromFFIType hs_bindgen_9b845398f7b32954_base

{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: IO RIP.CInt
pixman_version = hs_bindgen_9b845398f7b32954

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_version_string@
foreign import ccall unsafe "hs_bindgen_91c834578fe1cf77" hs_bindgen_91c834578fe1cf77_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_version_string@
hs_bindgen_91c834578fe1cf77 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_91c834578fe1cf77 =
  RIP.fromFFIType hs_bindgen_91c834578fe1cf77_base

{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: IO (PtrConst.PtrConst RIP.CChar)
pixman_version_string = hs_bindgen_91c834578fe1cf77

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_destination@
foreign import ccall unsafe "hs_bindgen_ab807779ff357e7b" hs_bindgen_ab807779ff357e7b_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_destination@
hs_bindgen_ab807779ff357e7b ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_ab807779ff357e7b =
  RIP.fromFFIType hs_bindgen_ab807779ff357e7b_base

{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_destination =
  hs_bindgen_ab807779ff357e7b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_source@
foreign import ccall unsafe "hs_bindgen_a47b4ef4c05be526" hs_bindgen_a47b4ef4c05be526_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_source@
hs_bindgen_a47b4ef4c05be526 ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_a47b4ef4c05be526 =
  RIP.fromFFIType hs_bindgen_a47b4ef4c05be526_base

{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_source =
  hs_bindgen_a47b4ef4c05be526

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_solid_fill@
foreign import ccall unsafe "hs_bindgen_88d94c651777b94a" hs_bindgen_88d94c651777b94a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_solid_fill@
hs_bindgen_88d94c651777b94a ::
     PtrConst.PtrConst Pixman_color_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_88d94c651777b94a =
  RIP.fromFFIType hs_bindgen_88d94c651777b94a_base

{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill ::
     PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_solid_fill =
  hs_bindgen_88d94c651777b94a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_linear_gradient@
foreign import ccall unsafe "hs_bindgen_8a86d47f7d09b9ba" hs_bindgen_8a86d47f7d09b9ba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_linear_gradient@
hs_bindgen_8a86d47f7d09b9ba ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_8a86d47f7d09b9ba =
  RIP.fromFFIType hs_bindgen_8a86d47f7d09b9ba_base

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
  hs_bindgen_8a86d47f7d09b9ba

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_radial_gradient@
foreign import ccall unsafe "hs_bindgen_99980a61019207e3" hs_bindgen_99980a61019207e3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_radial_gradient@
hs_bindgen_99980a61019207e3 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_99980a61019207e3 =
  RIP.fromFFIType hs_bindgen_99980a61019207e3_base

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
  hs_bindgen_99980a61019207e3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_conical_gradient@
foreign import ccall unsafe "hs_bindgen_5900e94f7bb2cd87" hs_bindgen_5900e94f7bb2cd87_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_conical_gradient@
hs_bindgen_5900e94f7bb2cd87 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_5900e94f7bb2cd87 =
  RIP.fromFFIType hs_bindgen_5900e94f7bb2cd87_base

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
  hs_bindgen_5900e94f7bb2cd87

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits@
foreign import ccall unsafe "hs_bindgen_1762a519e07c6c17" hs_bindgen_1762a519e07c6c17_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits@
hs_bindgen_1762a519e07c6c17 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_1762a519e07c6c17 =
  RIP.fromFFIType hs_bindgen_1762a519e07c6c17_base

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
  hs_bindgen_1762a519e07c6c17

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits_no_clear@
foreign import ccall unsafe "hs_bindgen_52135524e6f03505" hs_bindgen_52135524e6f03505_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits_no_clear@
hs_bindgen_52135524e6f03505 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_52135524e6f03505 =
  RIP.fromFFIType hs_bindgen_52135524e6f03505_base

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
  hs_bindgen_52135524e6f03505

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_ref@
foreign import ccall unsafe "hs_bindgen_e23c9fbbec95e19f" hs_bindgen_e23c9fbbec95e19f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_ref@
hs_bindgen_e23c9fbbec95e19f ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_e23c9fbbec95e19f =
  RIP.fromFFIType hs_bindgen_e23c9fbbec95e19f_base

{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_ref = hs_bindgen_e23c9fbbec95e19f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_unref@
foreign import ccall unsafe "hs_bindgen_f67a17fff3431235" hs_bindgen_f67a17fff3431235_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_unref@
hs_bindgen_f67a17fff3431235 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_f67a17fff3431235 =
  RIP.fromFFIType hs_bindgen_f67a17fff3431235_base

{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_unref = hs_bindgen_f67a17fff3431235

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_destroy_function@
foreign import ccall unsafe "hs_bindgen_d867f14a89c21da9" hs_bindgen_d867f14a89c21da9_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_destroy_function@
hs_bindgen_d867f14a89c21da9 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_image_destroy_func_t
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d867f14a89c21da9 =
  RIP.fromFFIType hs_bindgen_d867f14a89c21da9_base

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
  hs_bindgen_d867f14a89c21da9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_destroy_data@
foreign import ccall unsafe "hs_bindgen_04ee8f0af70e58ae" hs_bindgen_04ee8f0af70e58ae_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_destroy_data@
hs_bindgen_04ee8f0af70e58ae ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_04ee8f0af70e58ae =
  RIP.fromFFIType hs_bindgen_04ee8f0af70e58ae_base

{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr RIP.Void)
pixman_image_get_destroy_data =
  hs_bindgen_04ee8f0af70e58ae

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region@
foreign import ccall unsafe "hs_bindgen_1f85eb51908d7409" hs_bindgen_1f85eb51908d7409_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region@
hs_bindgen_1f85eb51908d7409 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_1f85eb51908d7409 =
  RIP.fromFFIType hs_bindgen_1f85eb51908d7409_base

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
  hs_bindgen_1f85eb51908d7409

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region32@
foreign import ccall unsafe "hs_bindgen_1b6fdaa0af65c44d" hs_bindgen_1b6fdaa0af65c44d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region32@
hs_bindgen_1b6fdaa0af65c44d ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_1b6fdaa0af65c44d =
  RIP.fromFFIType hs_bindgen_1b6fdaa0af65c44d_base

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
  hs_bindgen_1b6fdaa0af65c44d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region64f@
foreign import ccall unsafe "hs_bindgen_d78ea3196c3b708a" hs_bindgen_d78ea3196c3b708a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region64f@
hs_bindgen_d78ea3196c3b708a ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_d78ea3196c3b708a =
  RIP.fromFFIType hs_bindgen_d78ea3196c3b708a_base

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
  hs_bindgen_d78ea3196c3b708a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_has_client_clip@
foreign import ccall unsafe "hs_bindgen_1bb159789430fbb8" hs_bindgen_1bb159789430fbb8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_has_client_clip@
hs_bindgen_1bb159789430fbb8 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_1bb159789430fbb8 =
  RIP.fromFFIType hs_bindgen_1bb159789430fbb8_base

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
  hs_bindgen_1bb159789430fbb8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_transform@
foreign import ccall unsafe "hs_bindgen_3fb46dc7f6a9f54a" hs_bindgen_3fb46dc7f6a9f54a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_transform@
hs_bindgen_3fb46dc7f6a9f54a ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_transform_t
  -> IO Pixman_bool_t
hs_bindgen_3fb46dc7f6a9f54a =
  RIP.fromFFIType hs_bindgen_3fb46dc7f6a9f54a_base

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
  hs_bindgen_3fb46dc7f6a9f54a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_repeat@
foreign import ccall unsafe "hs_bindgen_b3106227cc956aaa" hs_bindgen_b3106227cc956aaa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_repeat@
hs_bindgen_b3106227cc956aaa ::
     RIP.Ptr Pixman_image_t
  -> Pixman_repeat_t
  -> IO ()
hs_bindgen_b3106227cc956aaa =
  RIP.fromFFIType hs_bindgen_b3106227cc956aaa_base

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
pixman_image_set_repeat = hs_bindgen_b3106227cc956aaa

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither@
foreign import ccall unsafe "hs_bindgen_77c33d21e0165252" hs_bindgen_77c33d21e0165252_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither@
hs_bindgen_77c33d21e0165252 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_dither_t
  -> IO ()
hs_bindgen_77c33d21e0165252 =
  RIP.fromFFIType hs_bindgen_77c33d21e0165252_base

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
pixman_image_set_dither = hs_bindgen_77c33d21e0165252

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither_offset@
foreign import ccall unsafe "hs_bindgen_1431b3d49fcfa3e1" hs_bindgen_1431b3d49fcfa3e1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither_offset@
hs_bindgen_1431b3d49fcfa3e1 ::
     RIP.Ptr Pixman_image_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_1431b3d49fcfa3e1 =
  RIP.fromFFIType hs_bindgen_1431b3d49fcfa3e1_base

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
  hs_bindgen_1431b3d49fcfa3e1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_filter@
foreign import ccall unsafe "hs_bindgen_849d6127fa5d8712" hs_bindgen_849d6127fa5d8712_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_filter@
hs_bindgen_849d6127fa5d8712 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_filter_t
  -> PtrConst.PtrConst Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_849d6127fa5d8712 =
  RIP.fromFFIType hs_bindgen_849d6127fa5d8712_base

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
pixman_image_set_filter = hs_bindgen_849d6127fa5d8712

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_source_clipping@
foreign import ccall unsafe "hs_bindgen_00c878cc07723b63" hs_bindgen_00c878cc07723b63_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_source_clipping@
hs_bindgen_00c878cc07723b63 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_00c878cc07723b63 =
  RIP.fromFFIType hs_bindgen_00c878cc07723b63_base

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
  hs_bindgen_00c878cc07723b63

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_alpha_map@
foreign import ccall unsafe "hs_bindgen_4476180713276b3b" hs_bindgen_4476180713276b3b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_alpha_map@
hs_bindgen_4476180713276b3b ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> IO ()
hs_bindgen_4476180713276b3b =
  RIP.fromFFIType hs_bindgen_4476180713276b3b_base

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
  hs_bindgen_4476180713276b3b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_component_alpha@
foreign import ccall unsafe "hs_bindgen_a63268652849f811" hs_bindgen_a63268652849f811_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_component_alpha@
hs_bindgen_a63268652849f811 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_a63268652849f811 =
  RIP.fromFFIType hs_bindgen_a63268652849f811_base

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
  hs_bindgen_a63268652849f811

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_component_alpha@
foreign import ccall unsafe "hs_bindgen_0d5aa35e996ddec5" hs_bindgen_0d5aa35e996ddec5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_component_alpha@
hs_bindgen_0d5aa35e996ddec5 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_0d5aa35e996ddec5 =
  RIP.fromFFIType hs_bindgen_0d5aa35e996ddec5_base

{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_get_component_alpha =
  hs_bindgen_0d5aa35e996ddec5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_accessors@
foreign import ccall unsafe "hs_bindgen_25fd15b9e1b30e91" hs_bindgen_25fd15b9e1b30e91_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_accessors@
hs_bindgen_25fd15b9e1b30e91 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_read_memory_func_t
  -> Pixman_write_memory_func_t
  -> IO ()
hs_bindgen_25fd15b9e1b30e91 =
  RIP.fromFFIType hs_bindgen_25fd15b9e1b30e91_base

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
  hs_bindgen_25fd15b9e1b30e91

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_indexed@
foreign import ccall unsafe "hs_bindgen_769e3c5adbae3d58" hs_bindgen_769e3c5adbae3d58_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_set_indexed@
hs_bindgen_769e3c5adbae3d58 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_indexed_t
  -> IO ()
hs_bindgen_769e3c5adbae3d58 =
  RIP.fromFFIType hs_bindgen_769e3c5adbae3d58_base

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
  hs_bindgen_769e3c5adbae3d58

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_data@
foreign import ccall unsafe "hs_bindgen_a3e8f31382abb74d" hs_bindgen_a3e8f31382abb74d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_data@
hs_bindgen_a3e8f31382abb74d ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
hs_bindgen_a3e8f31382abb74d =
  RIP.fromFFIType hs_bindgen_a3e8f31382abb74d_base

{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
pixman_image_get_data = hs_bindgen_a3e8f31382abb74d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_width@
foreign import ccall unsafe "hs_bindgen_655f90256df0e744" hs_bindgen_655f90256df0e744_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_width@
hs_bindgen_655f90256df0e744 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_655f90256df0e744 =
  RIP.fromFFIType hs_bindgen_655f90256df0e744_base

{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_width = hs_bindgen_655f90256df0e744

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_height@
foreign import ccall unsafe "hs_bindgen_4da3f3bc169c476e" hs_bindgen_4da3f3bc169c476e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_height@
hs_bindgen_4da3f3bc169c476e ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_4da3f3bc169c476e =
  RIP.fromFFIType hs_bindgen_4da3f3bc169c476e_base

{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_height = hs_bindgen_4da3f3bc169c476e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_stride@
foreign import ccall unsafe "hs_bindgen_b0f32ed9ad65553d" hs_bindgen_b0f32ed9ad65553d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_stride@
hs_bindgen_b0f32ed9ad65553d ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_b0f32ed9ad65553d =
  RIP.fromFFIType hs_bindgen_b0f32ed9ad65553d_base

{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_stride = hs_bindgen_b0f32ed9ad65553d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_depth@
foreign import ccall unsafe "hs_bindgen_0e777d600e27ab4e" hs_bindgen_0e777d600e27ab4e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_depth@
hs_bindgen_0e777d600e27ab4e ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_0e777d600e27ab4e =
  RIP.fromFFIType hs_bindgen_0e777d600e27ab4e_base

{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_depth = hs_bindgen_0e777d600e27ab4e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_format@
foreign import ccall unsafe "hs_bindgen_e51c5da890582990" hs_bindgen_e51c5da890582990_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_get_format@
hs_bindgen_e51c5da890582990 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_format_code_t
hs_bindgen_e51c5da890582990 =
  RIP.fromFFIType hs_bindgen_e51c5da890582990_base

{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_format_code_t
pixman_image_get_format = hs_bindgen_e51c5da890582990

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_filter_create_separable_convolution@
foreign import ccall unsafe "hs_bindgen_c73c689d57c975a0" hs_bindgen_c73c689d57c975a0_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_filter_create_separable_convolution@
hs_bindgen_c73c689d57c975a0 ::
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
hs_bindgen_c73c689d57c975a0 =
  RIP.fromFFIType hs_bindgen_c73c689d57c975a0_base

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
  hs_bindgen_c73c689d57c975a0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_rectangles@
foreign import ccall unsafe "hs_bindgen_a02dff89e5cff416" hs_bindgen_a02dff89e5cff416_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_rectangles@
hs_bindgen_a02dff89e5cff416 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_rectangle16_t
  -> IO Pixman_bool_t
hs_bindgen_a02dff89e5cff416 =
  RIP.fromFFIType hs_bindgen_a02dff89e5cff416_base

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
  hs_bindgen_a02dff89e5cff416

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_boxes@
foreign import ccall unsafe "hs_bindgen_3b6014e8c8fd420c" hs_bindgen_3b6014e8c8fd420c_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_boxes@
hs_bindgen_3b6014e8c8fd420c ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_3b6014e8c8fd420c =
  RIP.fromFFIType hs_bindgen_3b6014e8c8fd420c_base

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
pixman_image_fill_boxes = hs_bindgen_3b6014e8c8fd420c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_compute_composite_region@
foreign import ccall unsafe "hs_bindgen_7202904a2aff8014" hs_bindgen_7202904a2aff8014_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_compute_composite_region@
hs_bindgen_7202904a2aff8014 ::
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
hs_bindgen_7202904a2aff8014 =
  RIP.fromFFIType hs_bindgen_7202904a2aff8014_base

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
  hs_bindgen_7202904a2aff8014

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_composite@
foreign import ccall unsafe "hs_bindgen_07ae38b2eee95971" hs_bindgen_07ae38b2eee95971_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_composite@
hs_bindgen_07ae38b2eee95971 ::
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
hs_bindgen_07ae38b2eee95971 =
  RIP.fromFFIType hs_bindgen_07ae38b2eee95971_base

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
pixman_image_composite = hs_bindgen_07ae38b2eee95971

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_composite32@
foreign import ccall unsafe "hs_bindgen_ed685ce058a1c6ef" hs_bindgen_ed685ce058a1c6ef_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_composite32@
hs_bindgen_ed685ce058a1c6ef ::
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
hs_bindgen_ed685ce058a1c6ef =
  RIP.fromFFIType hs_bindgen_ed685ce058a1c6ef_base

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
  hs_bindgen_ed685ce058a1c6ef

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_composite64f@
foreign import ccall unsafe "hs_bindgen_a5d4b510ed878c91" hs_bindgen_a5d4b510ed878c91_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_image_composite64f@
hs_bindgen_a5d4b510ed878c91 ::
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
hs_bindgen_a5d4b510ed878c91 =
  RIP.fromFFIType hs_bindgen_a5d4b510ed878c91_base

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
  hs_bindgen_a5d4b510ed878c91

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_disable_out_of_bounds_workaround@
foreign import ccall unsafe "hs_bindgen_a41ff5ded26cf273" hs_bindgen_a41ff5ded26cf273_base ::
     IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_disable_out_of_bounds_workaround@
hs_bindgen_a41ff5ded26cf273 :: IO ()
hs_bindgen_a41ff5ded26cf273 =
  RIP.fromFFIType hs_bindgen_a41ff5ded26cf273_base

{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: IO ()
pixman_disable_out_of_bounds_workaround =
  hs_bindgen_a41ff5ded26cf273

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_create@
foreign import ccall unsafe "hs_bindgen_a0969e3d34e10e29" hs_bindgen_a0969e3d34e10e29_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_create@
hs_bindgen_a0969e3d34e10e29 :: IO (RIP.Ptr Pixman_glyph_cache_t)
hs_bindgen_a0969e3d34e10e29 =
  RIP.fromFFIType hs_bindgen_a0969e3d34e10e29_base

{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: IO (RIP.Ptr Pixman_glyph_cache_t)
pixman_glyph_cache_create =
  hs_bindgen_a0969e3d34e10e29

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_destroy@
foreign import ccall unsafe "hs_bindgen_39911d48fcdf946d" hs_bindgen_39911d48fcdf946d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_destroy@
hs_bindgen_39911d48fcdf946d ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_39911d48fcdf946d =
  RIP.fromFFIType hs_bindgen_39911d48fcdf946d_base

{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_destroy =
  hs_bindgen_39911d48fcdf946d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_freeze@
foreign import ccall unsafe "hs_bindgen_8b81763d6ca4e8ad" hs_bindgen_8b81763d6ca4e8ad_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_freeze@
hs_bindgen_8b81763d6ca4e8ad ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_8b81763d6ca4e8ad =
  RIP.fromFFIType hs_bindgen_8b81763d6ca4e8ad_base

{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_freeze =
  hs_bindgen_8b81763d6ca4e8ad

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_thaw@
foreign import ccall unsafe "hs_bindgen_b591ef6316ef1b8f" hs_bindgen_b591ef6316ef1b8f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_thaw@
hs_bindgen_b591ef6316ef1b8f ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_b591ef6316ef1b8f =
  RIP.fromFFIType hs_bindgen_b591ef6316ef1b8f_base

{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_thaw = hs_bindgen_b591ef6316ef1b8f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_lookup@
foreign import ccall unsafe "hs_bindgen_19fdaf5120e67a36" hs_bindgen_19fdaf5120e67a36_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_lookup@
hs_bindgen_19fdaf5120e67a36 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_19fdaf5120e67a36 =
  RIP.fromFFIType hs_bindgen_19fdaf5120e67a36_base

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
  hs_bindgen_19fdaf5120e67a36

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_insert@
foreign import ccall unsafe "hs_bindgen_844ca395a102777c" hs_bindgen_844ca395a102777c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_insert@
hs_bindgen_844ca395a102777c ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_image_t
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_844ca395a102777c =
  RIP.fromFFIType hs_bindgen_844ca395a102777c_base

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
  hs_bindgen_844ca395a102777c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_remove@
foreign import ccall unsafe "hs_bindgen_8bea6dc0e43e5aed" hs_bindgen_8bea6dc0e43e5aed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_remove@
hs_bindgen_8bea6dc0e43e5aed ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8bea6dc0e43e5aed =
  RIP.fromFFIType hs_bindgen_8bea6dc0e43e5aed_base

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
  hs_bindgen_8bea6dc0e43e5aed

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_extents@
foreign import ccall unsafe "hs_bindgen_18def1ff1265b9d7" hs_bindgen_18def1ff1265b9d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_extents@
hs_bindgen_18def1ff1265b9d7 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> RIP.Ptr Pixman_glyph_t
  -> RIP.Ptr Pixman_box32_t
  -> IO ()
hs_bindgen_18def1ff1265b9d7 =
  RIP.fromFFIType hs_bindgen_18def1ff1265b9d7_base

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
  hs_bindgen_18def1ff1265b9d7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_mask_format@
foreign import ccall unsafe "hs_bindgen_71785a569a31d431" hs_bindgen_71785a569a31d431_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_mask_format@
hs_bindgen_71785a569a31d431 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO Pixman_format_code_t
hs_bindgen_71785a569a31d431 =
  RIP.fromFFIType hs_bindgen_71785a569a31d431_base

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
  hs_bindgen_71785a569a31d431

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs@
foreign import ccall unsafe "hs_bindgen_404b38bb0ea2d632" hs_bindgen_404b38bb0ea2d632_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs@
hs_bindgen_404b38bb0ea2d632 ::
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
hs_bindgen_404b38bb0ea2d632 =
  RIP.fromFFIType hs_bindgen_404b38bb0ea2d632_base

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
pixman_composite_glyphs = hs_bindgen_404b38bb0ea2d632

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs_no_mask@
foreign import ccall unsafe "hs_bindgen_8358abbe37c951ff" hs_bindgen_8358abbe37c951ff_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs_no_mask@
hs_bindgen_8358abbe37c951ff ::
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
hs_bindgen_8358abbe37c951ff =
  RIP.fromFFIType hs_bindgen_8358abbe37c951ff_base

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
  hs_bindgen_8358abbe37c951ff

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_sample_ceil_y@
foreign import ccall unsafe "hs_bindgen_a497813cdf900259" hs_bindgen_a497813cdf900259_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_sample_ceil_y@
hs_bindgen_a497813cdf900259 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_a497813cdf900259 =
  RIP.fromFFIType hs_bindgen_a497813cdf900259_base

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
pixman_sample_ceil_y = hs_bindgen_a497813cdf900259

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_sample_floor_y@
foreign import ccall unsafe "hs_bindgen_29847e1ce56c69d8" hs_bindgen_29847e1ce56c69d8_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_sample_floor_y@
hs_bindgen_29847e1ce56c69d8 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_29847e1ce56c69d8 =
  RIP.fromFFIType hs_bindgen_29847e1ce56c69d8_base

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
pixman_sample_floor_y = hs_bindgen_29847e1ce56c69d8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_edge_step@
foreign import ccall unsafe "hs_bindgen_964b9cc612320062" hs_bindgen_964b9cc612320062_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_edge_step@
hs_bindgen_964b9cc612320062 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> IO ()
hs_bindgen_964b9cc612320062 =
  RIP.fromFFIType hs_bindgen_964b9cc612320062_base

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
pixman_edge_step = hs_bindgen_964b9cc612320062

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_edge_init@
foreign import ccall unsafe "hs_bindgen_8be428ab25f065f7" hs_bindgen_8be428ab25f065f7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_edge_init@
hs_bindgen_8be428ab25f065f7 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_8be428ab25f065f7 =
  RIP.fromFFIType hs_bindgen_8be428ab25f065f7_base

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
pixman_edge_init = hs_bindgen_8be428ab25f065f7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_line_fixed_edge_init@
foreign import ccall unsafe "hs_bindgen_e9e4f1d92e3687a5" hs_bindgen_e9e4f1d92e3687a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_line_fixed_edge_init@
hs_bindgen_e9e4f1d92e3687a5 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_line_fixed_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_e9e4f1d92e3687a5 =
  RIP.fromFFIType hs_bindgen_e9e4f1d92e3687a5_base

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
  hs_bindgen_e9e4f1d92e3687a5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_edges@
foreign import ccall unsafe "hs_bindgen_ea4a65fb321d85b7" hs_bindgen_ea4a65fb321d85b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_edges@
hs_bindgen_ea4a65fb321d85b7 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_edge_t
  -> RIP.Ptr Pixman_edge_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_ea4a65fb321d85b7 =
  RIP.fromFFIType hs_bindgen_ea4a65fb321d85b7_base

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
pixman_rasterize_edges = hs_bindgen_ea4a65fb321d85b7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_add_traps@
foreign import ccall unsafe "hs_bindgen_2acb3af28d162663" hs_bindgen_2acb3af28d162663_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_add_traps@
hs_bindgen_2acb3af28d162663 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trap_t
  -> IO ()
hs_bindgen_2acb3af28d162663 =
  RIP.fromFFIType hs_bindgen_2acb3af28d162663_base

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
pixman_add_traps = hs_bindgen_2acb3af28d162663

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_add_trapezoids@
foreign import ccall unsafe "hs_bindgen_d47de53cc831877b" hs_bindgen_d47de53cc831877b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_add_trapezoids@
hs_bindgen_d47de53cc831877b ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_d47de53cc831877b =
  RIP.fromFFIType hs_bindgen_d47de53cc831877b_base

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
pixman_add_trapezoids = hs_bindgen_d47de53cc831877b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_trapezoid@
foreign import ccall unsafe "hs_bindgen_0091e5f8242f0827" hs_bindgen_0091e5f8242f0827_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_trapezoid@
hs_bindgen_0091e5f8242f0827 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_0091e5f8242f0827 =
  RIP.fromFFIType hs_bindgen_0091e5f8242f0827_base

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
  hs_bindgen_0091e5f8242f0827

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_trapezoids@
foreign import ccall unsafe "hs_bindgen_1d4d21fa236f4051" hs_bindgen_1d4d21fa236f4051_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_trapezoids@
hs_bindgen_1d4d21fa236f4051 ::
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
hs_bindgen_1d4d21fa236f4051 =
  RIP.fromFFIType hs_bindgen_1d4d21fa236f4051_base

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
  hs_bindgen_1d4d21fa236f4051

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_triangles@
foreign import ccall unsafe "hs_bindgen_0c339127975d35d6" hs_bindgen_0c339127975d35d6_base ::
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_composite_triangles@
hs_bindgen_0c339127975d35d6 ::
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
hs_bindgen_0c339127975d35d6 =
  RIP.fromFFIType hs_bindgen_0c339127975d35d6_base

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
  hs_bindgen_0c339127975d35d6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_add_triangles@
foreign import ccall unsafe "hs_bindgen_ef7eb28296e85527" hs_bindgen_ef7eb28296e85527_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_Unsafe_pixman_add_triangles@
hs_bindgen_ef7eb28296e85527 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_ef7eb28296e85527 =
  RIP.fromFFIType hs_bindgen_ef7eb28296e85527_base

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
pixman_add_triangles = hs_bindgen_ef7eb28296e85527
