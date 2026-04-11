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
  , "void hs_bindgen_46871e40db5d2e5f ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_transform_init_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_803553b54310aa37 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point_3d)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9301d48f2e16fbd3 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_8d74835d1806bedb ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return (pixman_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d8d6c60ebffe5827 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_846a50751cd8851e ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_b9c22b6ce5194d8f ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1bc75ef96e46ab1a ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c4061affa4594923 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9aa983c04f447ce6 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_32918d4f073af029 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_bounds)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f2cb11c5963e48ab ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_06efb32c4c6fd1d0 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_313ead91b9a86d66 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_scale)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_d4fce75acebd8c00 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_int_translate)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_dc816363ef17cc40 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_is_inverse)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_a10d774ca7c5fe1f ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_from_pixman_f_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ebc55d2d1056910a ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_from_pixman_transform)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_86d667116b57925d ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_4feb1a82b73af9d1 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_point)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_24cbcffde2c6062e ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_point_3d)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_764752c4b0477355 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_feb981ce89546279 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_92642c0145a73eb2 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_b793e250484b9913 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_26a59a73c80ac00c ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_5c4ba2b053ec2f40 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_63287dbf5e918075 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_e998f863f3a2037f ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_bounds)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b9ea984611af3edc ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_identity)(arg1);"
  , "}"
  , "void hs_bindgen_7ae5a1513241c915 ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  (pixman_region_set_static_pointers)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_11ea79fe20c43102 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_init)(arg1);"
  , "}"
  , "void hs_bindgen_0882dccfdec9d6e5 ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_d166b8c58a763f99 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_54522b18ae0b36a0 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_cebd83455c43f166 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_38e0f26d9214945b ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_fini)(arg1);"
  , "}"
  , "void hs_bindgen_692aeec51977f9ad ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_fa3c4ab5c234268b ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_93e94b8346d50e61 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_c624ad2ee102cd4f ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_be52fa94a0a6a1d6 ("
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
  , "pixman_bool_t hs_bindgen_38a6ec1f2b3987bc ("
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
  , "pixman_bool_t hs_bindgen_14d882d75941c137 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_558d516f575cf7ae ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_e22e0b5521717be1 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_8c035abaa7f658a1 ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_55fbac6d560a11be ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_7841920424df5182 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_not_empty)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_8f7af2dd117be8ea ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_877576f483afe5e5 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_n_rects)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_6dc7a6faa00e19ce ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b73b226c73cc564b ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_34a6221ba26bb931 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_ab8cf6620697cdf2 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3c3c60beb8993dc5 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_clear)(arg1);"
  , "}"
  , "void hs_bindgen_86bfdca2909f75b6 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_init)(arg1);"
  , "}"
  , "void hs_bindgen_91c22e5e6c6d5368 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region32_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_e04b01141f38f6fe ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d0ce0aa7aa2b6893 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_42287f8f08754df2 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2851e8362a4158d7 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_fini)(arg1);"
  , "}"
  , "void hs_bindgen_e328ea12e137059b ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region32_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_ff47e3528fcd2bae ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_4b78dd852da51ae3 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_a31ce4be3b30a117 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_0b3984ece3d1441b ("
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
  , "pixman_bool_t hs_bindgen_e53d7c7832f42101 ("
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
  , "pixman_bool_t hs_bindgen_67ec2d3b5c3b2db1 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_760e49687c1d97c0 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_8438b54b9e99a921 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_d3e1fed52a8ad529 ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_af76cfd678b4dded ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_d300f6c8ce35a48f ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_not_empty)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_b909ca4525c863a3 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_755bab9a973b03d8 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_n_rects)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_64f6998c8f512660 ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_0d615078f7b9c2b6 ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_4947d831c5a730a5 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_0a4c3cacb3024df7 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c4f16cde3ba8f0a1 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_clear)(arg1);"
  , "}"
  , "void hs_bindgen_218c59bd5c35070a ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_init)(arg1);"
  , "}"
  , "void hs_bindgen_d02ad431dd1a8833 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_8e6be7d2778de95f ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rectf)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_a425b81efa258160 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7930276a7f635dbc ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_440b0b2ebdf03318 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c621fb89f72810f1 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_fini)(arg1);"
  , "}"
  , "void hs_bindgen_515210fe44bc0b53 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translate)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ed225dc6935678f7 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translatef)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_981fbcfd9b9d63ff ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_ea6430db2c0ea1fe ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_0ec78d6da403289b ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7fd5f7980c8232f0 ("
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
  , "pixman_bool_t hs_bindgen_b70cf01e3a03c94a ("
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
  , "pixman_bool_t hs_bindgen_a8bbd0a1113bce09 ("
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
  , "pixman_bool_t hs_bindgen_289b6dfa1a70fa66 ("
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
  , "pixman_bool_t hs_bindgen_2686d28a5a7f1b20 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_60330acd24477d9f ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_5ccb0115bd39a1de ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_21c71abdcb70de24 ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_pointf)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_1a5e48c55ba86760 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_38b16f065ada117d ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_fda44b2b1ca71185 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_not_empty)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_f4c76499386df33f ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_7b9774c629b4e311 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_n_rects)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_a854cc7e9e176d85 ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_7b0403d74f3860a3 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_7224fa4d4eab4212 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_748045251552d712 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_42e1bd9ce9da53b1 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_clear)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_114720d00b414b32 ("
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
  , "pixman_bool_t hs_bindgen_9fe8dfbafc0c22f9 ("
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
  , "signed int hs_bindgen_51103296059e1228 (void)"
  , "{"
  , "  return (pixman_version)();"
  , "}"
  , "char const *hs_bindgen_8b5e66565e425d79 (void)"
  , "{"
  , "  return (pixman_version_string)();"
  , "}"
  , "pixman_bool_t hs_bindgen_7232fe4030c3805a ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_destination)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_be0ea2840846a7d7 ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_source)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_9ba5eba1f1c2a664 ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_create_solid_fill)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_c4c0ebb0dde80837 ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_linear_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_e8e8ba9b8214f9a1 ("
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
  , "pixman_image_t *hs_bindgen_a38daa420b25a6ff ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_conical_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_0aa98f3558bcd807 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_6404f8132b864d11 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits_no_clear)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_32fd96d463fc0f50 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_ref)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_4c5f6935faca53f6 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_unref)(arg1);"
  , "}"
  , "void hs_bindgen_2d5edc6ebb86bbeb ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_destroy_function)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_bceaa431ef0437e3 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_destroy_data)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_74151f04643333cf ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_bda2959e752162bf ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region32)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f85aa0a4b40bd63d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region64f)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_93a32f8d45b3a6b6 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_has_client_clip)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_aa1c5916abd1ff8c ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a7c968f5009f7ba1 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_repeat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fbb2c64a6d78413f ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_dither)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a649b61233a31616 ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_dither_offset)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_2152f7e3ab8b9356 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_set_filter)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_adf7134df249c24f ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_source_clipping)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5026a7fb7dda60b2 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  (pixman_image_set_alpha_map)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_7ca42fcca4ad506f ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_component_alpha)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_0b037f2394e2b638 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_component_alpha)(arg1);"
  , "}"
  , "void hs_bindgen_6982ab514d6dacc5 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_accessors)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a6f7d4ea13b61ee8 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_indexed)(arg1, arg2);"
  , "}"
  , "uint32_t *hs_bindgen_5077f5c34f6c4546 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_data)(arg1);"
  , "}"
  , "signed int hs_bindgen_5c3d1e70a1176bf0 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_width)(arg1);"
  , "}"
  , "signed int hs_bindgen_f390ea618ba7982f ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_height)(arg1);"
  , "}"
  , "signed int hs_bindgen_b3a0196c0b153e23 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_stride)(arg1);"
  , "}"
  , "signed int hs_bindgen_d79985184355bfd2 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_depth)(arg1);"
  , "}"
  , "pixman_format_code_t hs_bindgen_071b4e803d59bbed ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_format)(arg1);"
  , "}"
  , "pixman_fixed_t *hs_bindgen_48518fa73b9068f9 ("
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
  , "pixman_bool_t hs_bindgen_ce2c0b050eadccdc ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_rectangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_65eb3eb415dad148 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_boxes)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_584e8c3ec7907161 ("
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
  , "void hs_bindgen_93b485a074265e91 ("
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
  , "void hs_bindgen_185573f5a71a031c ("
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
  , "void hs_bindgen_983cd6bc06bd2921 ("
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
  , "void hs_bindgen_89b262220c1b3b7d (void)"
  , "{"
  , "  (pixman_disable_out_of_bounds_workaround)();"
  , "}"
  , "pixman_glyph_cache_t *hs_bindgen_6b3e6417f1bad155 (void)"
  , "{"
  , "  return (pixman_glyph_cache_create)();"
  , "}"
  , "void hs_bindgen_8f18b092993fd937 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_5b7113388edc649c ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_freeze)(arg1);"
  , "}"
  , "void hs_bindgen_3a53fa0e7537358c ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_thaw)(arg1);"
  , "}"
  , "void const *hs_bindgen_3270c793262ad671 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_lookup)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_7c435b0086a80da8 ("
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
  , "void hs_bindgen_1b4c225caeec6a1a ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_remove)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4127bd6c0043179b ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  (pixman_glyph_get_extents)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_format_code_t hs_bindgen_d1d1300cd6727dcd ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_get_mask_format)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_60181a27baad2b83 ("
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
  , "void hs_bindgen_1fa27dcfd3356cf5 ("
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
  , "pixman_fixed_t hs_bindgen_34eb61c697dfd398 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_ceil_y)(arg1, arg2);"
  , "}"
  , "pixman_fixed_t hs_bindgen_fcf2e8933f198de7 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_floor_y)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b09e4f1133f1ba4d ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  (pixman_edge_step)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ce47fb99b6526173 ("
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
  , "void hs_bindgen_9164bcb16f9dffc7 ("
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
  , "void hs_bindgen_149e66915232be95 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  (pixman_rasterize_edges)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_0584a8643b7d1a56 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_traps)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_9861ca3066f3a896 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_trapezoids)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_db32fc2c5ec38d74 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  (pixman_rasterize_trapezoid)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_9e9c5d1de1c6cc4f ("
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
  , "void hs_bindgen_118007b928d49a7e ("
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
  , "void hs_bindgen_f6b8954b7a0f13f4 ("
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_46871e40db5d2e5f" hs_bindgen_46871e40db5d2e5f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_identity@
hs_bindgen_46871e40db5d2e5f ::
     RIP.Ptr Pixman_transform
  -> IO ()
hs_bindgen_46871e40db5d2e5f =
  RIP.fromFFIType hs_bindgen_46871e40db5d2e5f_base

{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> IO ()
pixman_transform_init_identity =
  hs_bindgen_46871e40db5d2e5f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_803553b54310aa37" hs_bindgen_803553b54310aa37_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_point_3d@
hs_bindgen_803553b54310aa37 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_803553b54310aa37 =
  RIP.fromFFIType hs_bindgen_803553b54310aa37_base

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
  hs_bindgen_803553b54310aa37

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_point@
foreign import ccall unsafe "hs_bindgen_9301d48f2e16fbd3" hs_bindgen_9301d48f2e16fbd3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_point@
hs_bindgen_9301d48f2e16fbd3 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_9301d48f2e16fbd3 =
  RIP.fromFFIType hs_bindgen_9301d48f2e16fbd3_base

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
pixman_transform_point = hs_bindgen_9301d48f2e16fbd3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_multiply@
foreign import ccall unsafe "hs_bindgen_8d74835d1806bedb" hs_bindgen_8d74835d1806bedb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_multiply@
hs_bindgen_8d74835d1806bedb ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_8d74835d1806bedb =
  RIP.fromFFIType hs_bindgen_8d74835d1806bedb_base

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
  hs_bindgen_8d74835d1806bedb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_d8d6c60ebffe5827" hs_bindgen_d8d6c60ebffe5827_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_scale@
hs_bindgen_d8d6c60ebffe5827 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_d8d6c60ebffe5827 =
  RIP.fromFFIType hs_bindgen_d8d6c60ebffe5827_base

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
  hs_bindgen_d8d6c60ebffe5827

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_scale@
foreign import ccall unsafe "hs_bindgen_846a50751cd8851e" hs_bindgen_846a50751cd8851e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_scale@
hs_bindgen_846a50751cd8851e ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_846a50751cd8851e =
  RIP.fromFFIType hs_bindgen_846a50751cd8851e_base

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
pixman_transform_scale = hs_bindgen_846a50751cd8851e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_b9c22b6ce5194d8f" hs_bindgen_b9c22b6ce5194d8f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_rotate@
hs_bindgen_b9c22b6ce5194d8f ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_b9c22b6ce5194d8f =
  RIP.fromFFIType hs_bindgen_b9c22b6ce5194d8f_base

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
  hs_bindgen_b9c22b6ce5194d8f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_rotate@
foreign import ccall unsafe "hs_bindgen_1bc75ef96e46ab1a" hs_bindgen_1bc75ef96e46ab1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_rotate@
hs_bindgen_1bc75ef96e46ab1a ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_1bc75ef96e46ab1a =
  RIP.fromFFIType hs_bindgen_1bc75ef96e46ab1a_base

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
pixman_transform_rotate = hs_bindgen_1bc75ef96e46ab1a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_c4061affa4594923" hs_bindgen_c4061affa4594923_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_init_translate@
hs_bindgen_c4061affa4594923 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_c4061affa4594923 =
  RIP.fromFFIType hs_bindgen_c4061affa4594923_base

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
  hs_bindgen_c4061affa4594923

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_translate@
foreign import ccall unsafe "hs_bindgen_9aa983c04f447ce6" hs_bindgen_9aa983c04f447ce6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_translate@
hs_bindgen_9aa983c04f447ce6 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_9aa983c04f447ce6 =
  RIP.fromFFIType hs_bindgen_9aa983c04f447ce6_base

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
  hs_bindgen_9aa983c04f447ce6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_bounds@
foreign import ccall unsafe "hs_bindgen_32918d4f073af029" hs_bindgen_32918d4f073af029_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_bounds@
hs_bindgen_32918d4f073af029 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_32918d4f073af029 =
  RIP.fromFFIType hs_bindgen_32918d4f073af029_base

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
pixman_transform_bounds = hs_bindgen_32918d4f073af029

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_invert@
foreign import ccall unsafe "hs_bindgen_f2cb11c5963e48ab" hs_bindgen_f2cb11c5963e48ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_invert@
hs_bindgen_f2cb11c5963e48ab ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_f2cb11c5963e48ab =
  RIP.fromFFIType hs_bindgen_f2cb11c5963e48ab_base

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
pixman_transform_invert = hs_bindgen_f2cb11c5963e48ab

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_identity@
foreign import ccall unsafe "hs_bindgen_06efb32c4c6fd1d0" hs_bindgen_06efb32c4c6fd1d0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_identity@
hs_bindgen_06efb32c4c6fd1d0 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_06efb32c4c6fd1d0 =
  RIP.fromFFIType hs_bindgen_06efb32c4c6fd1d0_base

{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_identity =
  hs_bindgen_06efb32c4c6fd1d0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_scale@
foreign import ccall unsafe "hs_bindgen_313ead91b9a86d66" hs_bindgen_313ead91b9a86d66_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_scale@
hs_bindgen_313ead91b9a86d66 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_313ead91b9a86d66 =
  RIP.fromFFIType hs_bindgen_313ead91b9a86d66_base

{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_scale =
  hs_bindgen_313ead91b9a86d66

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_int_translate@
foreign import ccall unsafe "hs_bindgen_d4fce75acebd8c00" hs_bindgen_d4fce75acebd8c00_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_int_translate@
hs_bindgen_d4fce75acebd8c00 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_d4fce75acebd8c00 =
  RIP.fromFFIType hs_bindgen_d4fce75acebd8c00_base

{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_int_translate =
  hs_bindgen_d4fce75acebd8c00

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_inverse@
foreign import ccall unsafe "hs_bindgen_dc816363ef17cc40" hs_bindgen_dc816363ef17cc40_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_is_inverse@
hs_bindgen_dc816363ef17cc40 ::
     PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_dc816363ef17cc40 =
  RIP.fromFFIType hs_bindgen_dc816363ef17cc40_base

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
  hs_bindgen_dc816363ef17cc40

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_from_pixman_f_transform@
foreign import ccall unsafe "hs_bindgen_a10d774ca7c5fe1f" hs_bindgen_a10d774ca7c5fe1f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_transform_from_pixman_f_transform@
hs_bindgen_a10d774ca7c5fe1f ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_a10d774ca7c5fe1f =
  RIP.fromFFIType hs_bindgen_a10d774ca7c5fe1f_base

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
  hs_bindgen_a10d774ca7c5fe1f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_from_pixman_transform@
foreign import ccall unsafe "hs_bindgen_ebc55d2d1056910a" hs_bindgen_ebc55d2d1056910a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_from_pixman_transform@
hs_bindgen_ebc55d2d1056910a ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO ()
hs_bindgen_ebc55d2d1056910a =
  RIP.fromFFIType hs_bindgen_ebc55d2d1056910a_base

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
  hs_bindgen_ebc55d2d1056910a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_invert@
foreign import ccall unsafe "hs_bindgen_86d667116b57925d" hs_bindgen_86d667116b57925d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_invert@
hs_bindgen_86d667116b57925d ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_86d667116b57925d =
  RIP.fromFFIType hs_bindgen_86d667116b57925d_base

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
  hs_bindgen_86d667116b57925d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point@
foreign import ccall unsafe "hs_bindgen_4feb1a82b73af9d1" hs_bindgen_4feb1a82b73af9d1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point@
hs_bindgen_4feb1a82b73af9d1 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO Pixman_bool_t
hs_bindgen_4feb1a82b73af9d1 =
  RIP.fromFFIType hs_bindgen_4feb1a82b73af9d1_base

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
  hs_bindgen_4feb1a82b73af9d1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_24cbcffde2c6062e" hs_bindgen_24cbcffde2c6062e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_point_3d@
hs_bindgen_24cbcffde2c6062e ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO ()
hs_bindgen_24cbcffde2c6062e =
  RIP.fromFFIType hs_bindgen_24cbcffde2c6062e_base

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
  hs_bindgen_24cbcffde2c6062e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_multiply@
foreign import ccall unsafe "hs_bindgen_764752c4b0477355" hs_bindgen_764752c4b0477355_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_multiply@
hs_bindgen_764752c4b0477355 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO ()
hs_bindgen_764752c4b0477355 =
  RIP.fromFFIType hs_bindgen_764752c4b0477355_base

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
  hs_bindgen_764752c4b0477355

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_feb981ce89546279" hs_bindgen_feb981ce89546279_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_scale@
hs_bindgen_feb981ce89546279 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_feb981ce89546279 =
  RIP.fromFFIType hs_bindgen_feb981ce89546279_base

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
  hs_bindgen_feb981ce89546279

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_scale@
foreign import ccall unsafe "hs_bindgen_92642c0145a73eb2" hs_bindgen_92642c0145a73eb2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_scale@
hs_bindgen_92642c0145a73eb2 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_92642c0145a73eb2 =
  RIP.fromFFIType hs_bindgen_92642c0145a73eb2_base

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
  hs_bindgen_92642c0145a73eb2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_b793e250484b9913" hs_bindgen_b793e250484b9913_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_rotate@
hs_bindgen_b793e250484b9913 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_b793e250484b9913 =
  RIP.fromFFIType hs_bindgen_b793e250484b9913_base

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
  hs_bindgen_b793e250484b9913

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_rotate@
foreign import ccall unsafe "hs_bindgen_26a59a73c80ac00c" hs_bindgen_26a59a73c80ac00c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_rotate@
hs_bindgen_26a59a73c80ac00c ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_26a59a73c80ac00c =
  RIP.fromFFIType hs_bindgen_26a59a73c80ac00c_base

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
  hs_bindgen_26a59a73c80ac00c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_5c4ba2b053ec2f40" hs_bindgen_5c4ba2b053ec2f40_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_translate@
hs_bindgen_5c4ba2b053ec2f40 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_5c4ba2b053ec2f40 =
  RIP.fromFFIType hs_bindgen_5c4ba2b053ec2f40_base

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
  hs_bindgen_5c4ba2b053ec2f40

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_translate@
foreign import ccall unsafe "hs_bindgen_63287dbf5e918075" hs_bindgen_63287dbf5e918075_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_translate@
hs_bindgen_63287dbf5e918075 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_63287dbf5e918075 =
  RIP.fromFFIType hs_bindgen_63287dbf5e918075_base

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
  hs_bindgen_63287dbf5e918075

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_bounds@
foreign import ccall unsafe "hs_bindgen_e998f863f3a2037f" hs_bindgen_e998f863f3a2037f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_bounds@
hs_bindgen_e998f863f3a2037f ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_e998f863f3a2037f =
  RIP.fromFFIType hs_bindgen_e998f863f3a2037f_base

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
  hs_bindgen_e998f863f3a2037f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_b9ea984611af3edc" hs_bindgen_b9ea984611af3edc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_f_transform_init_identity@
hs_bindgen_b9ea984611af3edc ::
     RIP.Ptr Pixman_f_transform
  -> IO ()
hs_bindgen_b9ea984611af3edc =
  RIP.fromFFIType hs_bindgen_b9ea984611af3edc_base

{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_init_identity =
  hs_bindgen_b9ea984611af3edc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_set_static_pointers@
foreign import ccall unsafe "hs_bindgen_7ae5a1513241c915" hs_bindgen_7ae5a1513241c915_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_set_static_pointers@
hs_bindgen_7ae5a1513241c915 ::
     RIP.Ptr Pixman_box16_t
  -> RIP.Ptr Pixman_region16_data_t
  -> RIP.Ptr Pixman_region16_data_t
  -> IO ()
hs_bindgen_7ae5a1513241c915 =
  RIP.fromFFIType hs_bindgen_7ae5a1513241c915_base

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
  hs_bindgen_7ae5a1513241c915

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init@
foreign import ccall unsafe "hs_bindgen_11ea79fe20c43102" hs_bindgen_11ea79fe20c43102_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init@
hs_bindgen_11ea79fe20c43102 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_11ea79fe20c43102 =
  RIP.fromFFIType hs_bindgen_11ea79fe20c43102_base

{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_init = hs_bindgen_11ea79fe20c43102

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rect@
foreign import ccall unsafe "hs_bindgen_0882dccfdec9d6e5" hs_bindgen_0882dccfdec9d6e5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rect@
hs_bindgen_0882dccfdec9d6e5 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_0882dccfdec9d6e5 =
  RIP.fromFFIType hs_bindgen_0882dccfdec9d6e5_base

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
pixman_region_init_rect = hs_bindgen_0882dccfdec9d6e5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rects@
foreign import ccall unsafe "hs_bindgen_d166b8c58a763f99" hs_bindgen_d166b8c58a763f99_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_rects@
hs_bindgen_d166b8c58a763f99 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_d166b8c58a763f99 =
  RIP.fromFFIType hs_bindgen_d166b8c58a763f99_base

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
  hs_bindgen_d166b8c58a763f99

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_with_extents@
foreign import ccall unsafe "hs_bindgen_54522b18ae0b36a0" hs_bindgen_54522b18ae0b36a0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_with_extents@
hs_bindgen_54522b18ae0b36a0 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_54522b18ae0b36a0 =
  RIP.fromFFIType hs_bindgen_54522b18ae0b36a0_base

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
  hs_bindgen_54522b18ae0b36a0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_from_image@
foreign import ccall unsafe "hs_bindgen_cebd83455c43f166" hs_bindgen_cebd83455c43f166_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_init_from_image@
hs_bindgen_cebd83455c43f166 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_cebd83455c43f166 =
  RIP.fromFFIType hs_bindgen_cebd83455c43f166_base

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
  hs_bindgen_cebd83455c43f166

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_fini@
foreign import ccall unsafe "hs_bindgen_38e0f26d9214945b" hs_bindgen_38e0f26d9214945b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_fini@
hs_bindgen_38e0f26d9214945b ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_38e0f26d9214945b =
  RIP.fromFFIType hs_bindgen_38e0f26d9214945b_base

{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_fini = hs_bindgen_38e0f26d9214945b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_translate@
foreign import ccall unsafe "hs_bindgen_692aeec51977f9ad" hs_bindgen_692aeec51977f9ad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_translate@
hs_bindgen_692aeec51977f9ad ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_692aeec51977f9ad =
  RIP.fromFFIType hs_bindgen_692aeec51977f9ad_base

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
pixman_region_translate = hs_bindgen_692aeec51977f9ad

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_copy@
foreign import ccall unsafe "hs_bindgen_fa3c4ab5c234268b" hs_bindgen_fa3c4ab5c234268b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_copy@
hs_bindgen_fa3c4ab5c234268b ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_fa3c4ab5c234268b =
  RIP.fromFFIType hs_bindgen_fa3c4ab5c234268b_base

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
pixman_region_copy = hs_bindgen_fa3c4ab5c234268b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect@
foreign import ccall unsafe "hs_bindgen_93e94b8346d50e61" hs_bindgen_93e94b8346d50e61_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect@
hs_bindgen_93e94b8346d50e61 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_93e94b8346d50e61 =
  RIP.fromFFIType hs_bindgen_93e94b8346d50e61_base

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
pixman_region_intersect = hs_bindgen_93e94b8346d50e61

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_union@
foreign import ccall unsafe "hs_bindgen_c624ad2ee102cd4f" hs_bindgen_c624ad2ee102cd4f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_union@
hs_bindgen_c624ad2ee102cd4f ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_c624ad2ee102cd4f =
  RIP.fromFFIType hs_bindgen_c624ad2ee102cd4f_base

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
pixman_region_union = hs_bindgen_c624ad2ee102cd4f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_union_rect@
foreign import ccall unsafe "hs_bindgen_be52fa94a0a6a1d6" hs_bindgen_be52fa94a0a6a1d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_union_rect@
hs_bindgen_be52fa94a0a6a1d6 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_be52fa94a0a6a1d6 =
  RIP.fromFFIType hs_bindgen_be52fa94a0a6a1d6_base

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
  hs_bindgen_be52fa94a0a6a1d6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect_rect@
foreign import ccall unsafe "hs_bindgen_38a6ec1f2b3987bc" hs_bindgen_38a6ec1f2b3987bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_intersect_rect@
hs_bindgen_38a6ec1f2b3987bc ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_38a6ec1f2b3987bc =
  RIP.fromFFIType hs_bindgen_38a6ec1f2b3987bc_base

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
  hs_bindgen_38a6ec1f2b3987bc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_subtract@
foreign import ccall unsafe "hs_bindgen_14d882d75941c137" hs_bindgen_14d882d75941c137_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_subtract@
hs_bindgen_14d882d75941c137 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_14d882d75941c137 =
  RIP.fromFFIType hs_bindgen_14d882d75941c137_base

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
pixman_region_subtract = hs_bindgen_14d882d75941c137

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_inverse@
foreign import ccall unsafe "hs_bindgen_558d516f575cf7ae" hs_bindgen_558d516f575cf7ae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_inverse@
hs_bindgen_558d516f575cf7ae ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_558d516f575cf7ae =
  RIP.fromFFIType hs_bindgen_558d516f575cf7ae_base

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
pixman_region_inverse = hs_bindgen_558d516f575cf7ae

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_point@
foreign import ccall unsafe "hs_bindgen_e22e0b5521717be1" hs_bindgen_e22e0b5521717be1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_point@
hs_bindgen_e22e0b5521717be1 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_e22e0b5521717be1 =
  RIP.fromFFIType hs_bindgen_e22e0b5521717be1_base

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
  hs_bindgen_e22e0b5521717be1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_8c035abaa7f658a1" hs_bindgen_8c035abaa7f658a1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_contains_rectangle@
hs_bindgen_8c035abaa7f658a1 ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_region_overlap_t
hs_bindgen_8c035abaa7f658a1 =
  RIP.fromFFIType hs_bindgen_8c035abaa7f658a1_base

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
  hs_bindgen_8c035abaa7f658a1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_empty@
foreign import ccall unsafe "hs_bindgen_55fbac6d560a11be" hs_bindgen_55fbac6d560a11be_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_empty@
hs_bindgen_55fbac6d560a11be ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_55fbac6d560a11be =
  RIP.fromFFIType hs_bindgen_55fbac6d560a11be_base

{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_empty = hs_bindgen_55fbac6d560a11be

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_not_empty@
foreign import ccall unsafe "hs_bindgen_7841920424df5182" hs_bindgen_7841920424df5182_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_not_empty@
hs_bindgen_7841920424df5182 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_7841920424df5182 =
  RIP.fromFFIType hs_bindgen_7841920424df5182_base

{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_not_empty = hs_bindgen_7841920424df5182

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_extents@
foreign import ccall unsafe "hs_bindgen_8f7af2dd117be8ea" hs_bindgen_8f7af2dd117be8ea_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_extents@
hs_bindgen_8f7af2dd117be8ea ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_8f7af2dd117be8ea =
  RIP.fromFFIType hs_bindgen_8f7af2dd117be8ea_base

{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_extents = hs_bindgen_8f7af2dd117be8ea

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_n_rects@
foreign import ccall unsafe "hs_bindgen_877576f483afe5e5" hs_bindgen_877576f483afe5e5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_n_rects@
hs_bindgen_877576f483afe5e5 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO RIP.CInt
hs_bindgen_877576f483afe5e5 =
  RIP.fromFFIType hs_bindgen_877576f483afe5e5_base

{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region_n_rects = hs_bindgen_877576f483afe5e5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_rectangles@
foreign import ccall unsafe "hs_bindgen_6dc7a6faa00e19ce" hs_bindgen_6dc7a6faa00e19ce_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_rectangles@
hs_bindgen_6dc7a6faa00e19ce ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_6dc7a6faa00e19ce =
  RIP.fromFFIType hs_bindgen_6dc7a6faa00e19ce_base

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
  hs_bindgen_6dc7a6faa00e19ce

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_equal@
foreign import ccall unsafe "hs_bindgen_b73b226c73cc564b" hs_bindgen_b73b226c73cc564b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_equal@
hs_bindgen_b73b226c73cc564b ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b73b226c73cc564b =
  RIP.fromFFIType hs_bindgen_b73b226c73cc564b_base

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
pixman_region_equal = hs_bindgen_b73b226c73cc564b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_selfcheck@
foreign import ccall unsafe "hs_bindgen_34a6221ba26bb931" hs_bindgen_34a6221ba26bb931_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_selfcheck@
hs_bindgen_34a6221ba26bb931 ::
     RIP.Ptr Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_34a6221ba26bb931 =
  RIP.fromFFIType hs_bindgen_34a6221ba26bb931_base

{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_selfcheck = hs_bindgen_34a6221ba26bb931

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_reset@
foreign import ccall unsafe "hs_bindgen_ab8cf6620697cdf2" hs_bindgen_ab8cf6620697cdf2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_reset@
hs_bindgen_ab8cf6620697cdf2 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_ab8cf6620697cdf2 =
  RIP.fromFFIType hs_bindgen_ab8cf6620697cdf2_base

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
pixman_region_reset = hs_bindgen_ab8cf6620697cdf2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_clear@
foreign import ccall unsafe "hs_bindgen_3c3c60beb8993dc5" hs_bindgen_3c3c60beb8993dc5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region_clear@
hs_bindgen_3c3c60beb8993dc5 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_3c3c60beb8993dc5 =
  RIP.fromFFIType hs_bindgen_3c3c60beb8993dc5_base

{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_clear = hs_bindgen_3c3c60beb8993dc5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init@
foreign import ccall unsafe "hs_bindgen_86bfdca2909f75b6" hs_bindgen_86bfdca2909f75b6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init@
hs_bindgen_86bfdca2909f75b6 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_86bfdca2909f75b6 =
  RIP.fromFFIType hs_bindgen_86bfdca2909f75b6_base

{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_init = hs_bindgen_86bfdca2909f75b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rect@
foreign import ccall unsafe "hs_bindgen_91c22e5e6c6d5368" hs_bindgen_91c22e5e6c6d5368_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rect@
hs_bindgen_91c22e5e6c6d5368 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_91c22e5e6c6d5368 =
  RIP.fromFFIType hs_bindgen_91c22e5e6c6d5368_base

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
  hs_bindgen_91c22e5e6c6d5368

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rects@
foreign import ccall unsafe "hs_bindgen_e04b01141f38f6fe" hs_bindgen_e04b01141f38f6fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_rects@
hs_bindgen_e04b01141f38f6fe ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_e04b01141f38f6fe =
  RIP.fromFFIType hs_bindgen_e04b01141f38f6fe_base

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
  hs_bindgen_e04b01141f38f6fe

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_with_extents@
foreign import ccall unsafe "hs_bindgen_d0ce0aa7aa2b6893" hs_bindgen_d0ce0aa7aa2b6893_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_with_extents@
hs_bindgen_d0ce0aa7aa2b6893 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_d0ce0aa7aa2b6893 =
  RIP.fromFFIType hs_bindgen_d0ce0aa7aa2b6893_base

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
  hs_bindgen_d0ce0aa7aa2b6893

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_from_image@
foreign import ccall unsafe "hs_bindgen_42287f8f08754df2" hs_bindgen_42287f8f08754df2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_init_from_image@
hs_bindgen_42287f8f08754df2 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_42287f8f08754df2 =
  RIP.fromFFIType hs_bindgen_42287f8f08754df2_base

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
  hs_bindgen_42287f8f08754df2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_fini@
foreign import ccall unsafe "hs_bindgen_2851e8362a4158d7" hs_bindgen_2851e8362a4158d7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_fini@
hs_bindgen_2851e8362a4158d7 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_2851e8362a4158d7 =
  RIP.fromFFIType hs_bindgen_2851e8362a4158d7_base

{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_fini = hs_bindgen_2851e8362a4158d7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_translate@
foreign import ccall unsafe "hs_bindgen_e328ea12e137059b" hs_bindgen_e328ea12e137059b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_translate@
hs_bindgen_e328ea12e137059b ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_e328ea12e137059b =
  RIP.fromFFIType hs_bindgen_e328ea12e137059b_base

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
  hs_bindgen_e328ea12e137059b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_copy@
foreign import ccall unsafe "hs_bindgen_ff47e3528fcd2bae" hs_bindgen_ff47e3528fcd2bae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_copy@
hs_bindgen_ff47e3528fcd2bae ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_ff47e3528fcd2bae =
  RIP.fromFFIType hs_bindgen_ff47e3528fcd2bae_base

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
pixman_region32_copy = hs_bindgen_ff47e3528fcd2bae

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect@
foreign import ccall unsafe "hs_bindgen_4b78dd852da51ae3" hs_bindgen_4b78dd852da51ae3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect@
hs_bindgen_4b78dd852da51ae3 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_4b78dd852da51ae3 =
  RIP.fromFFIType hs_bindgen_4b78dd852da51ae3_base

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
  hs_bindgen_4b78dd852da51ae3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_union@
foreign import ccall unsafe "hs_bindgen_a31ce4be3b30a117" hs_bindgen_a31ce4be3b30a117_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_union@
hs_bindgen_a31ce4be3b30a117 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_a31ce4be3b30a117 =
  RIP.fromFFIType hs_bindgen_a31ce4be3b30a117_base

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
pixman_region32_union = hs_bindgen_a31ce4be3b30a117

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect_rect@
foreign import ccall unsafe "hs_bindgen_0b3984ece3d1441b" hs_bindgen_0b3984ece3d1441b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_intersect_rect@
hs_bindgen_0b3984ece3d1441b ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_0b3984ece3d1441b =
  RIP.fromFFIType hs_bindgen_0b3984ece3d1441b_base

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
  hs_bindgen_0b3984ece3d1441b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_union_rect@
foreign import ccall unsafe "hs_bindgen_e53d7c7832f42101" hs_bindgen_e53d7c7832f42101_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_union_rect@
hs_bindgen_e53d7c7832f42101 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_e53d7c7832f42101 =
  RIP.fromFFIType hs_bindgen_e53d7c7832f42101_base

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
  hs_bindgen_e53d7c7832f42101

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_subtract@
foreign import ccall unsafe "hs_bindgen_67ec2d3b5c3b2db1" hs_bindgen_67ec2d3b5c3b2db1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_subtract@
hs_bindgen_67ec2d3b5c3b2db1 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_67ec2d3b5c3b2db1 =
  RIP.fromFFIType hs_bindgen_67ec2d3b5c3b2db1_base

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
  hs_bindgen_67ec2d3b5c3b2db1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_inverse@
foreign import ccall unsafe "hs_bindgen_760e49687c1d97c0" hs_bindgen_760e49687c1d97c0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_inverse@
hs_bindgen_760e49687c1d97c0 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_760e49687c1d97c0 =
  RIP.fromFFIType hs_bindgen_760e49687c1d97c0_base

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
pixman_region32_inverse = hs_bindgen_760e49687c1d97c0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_point@
foreign import ccall unsafe "hs_bindgen_8438b54b9e99a921" hs_bindgen_8438b54b9e99a921_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_point@
hs_bindgen_8438b54b9e99a921 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_8438b54b9e99a921 =
  RIP.fromFFIType hs_bindgen_8438b54b9e99a921_base

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
  hs_bindgen_8438b54b9e99a921

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_d3e1fed52a8ad529" hs_bindgen_d3e1fed52a8ad529_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_contains_rectangle@
hs_bindgen_d3e1fed52a8ad529 ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_region_overlap_t
hs_bindgen_d3e1fed52a8ad529 =
  RIP.fromFFIType hs_bindgen_d3e1fed52a8ad529_base

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
  hs_bindgen_d3e1fed52a8ad529

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_empty@
foreign import ccall unsafe "hs_bindgen_af76cfd678b4dded" hs_bindgen_af76cfd678b4dded_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_empty@
hs_bindgen_af76cfd678b4dded ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_af76cfd678b4dded =
  RIP.fromFFIType hs_bindgen_af76cfd678b4dded_base

{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_empty = hs_bindgen_af76cfd678b4dded

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_not_empty@
foreign import ccall unsafe "hs_bindgen_d300f6c8ce35a48f" hs_bindgen_d300f6c8ce35a48f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_not_empty@
hs_bindgen_d300f6c8ce35a48f ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_d300f6c8ce35a48f =
  RIP.fromFFIType hs_bindgen_d300f6c8ce35a48f_base

{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_not_empty =
  hs_bindgen_d300f6c8ce35a48f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_extents@
foreign import ccall unsafe "hs_bindgen_b909ca4525c863a3" hs_bindgen_b909ca4525c863a3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_extents@
hs_bindgen_b909ca4525c863a3 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_b909ca4525c863a3 =
  RIP.fromFFIType hs_bindgen_b909ca4525c863a3_base

{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_extents = hs_bindgen_b909ca4525c863a3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_n_rects@
foreign import ccall unsafe "hs_bindgen_755bab9a973b03d8" hs_bindgen_755bab9a973b03d8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_n_rects@
hs_bindgen_755bab9a973b03d8 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO RIP.CInt
hs_bindgen_755bab9a973b03d8 =
  RIP.fromFFIType hs_bindgen_755bab9a973b03d8_base

{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region32_n_rects = hs_bindgen_755bab9a973b03d8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_rectangles@
foreign import ccall unsafe "hs_bindgen_64f6998c8f512660" hs_bindgen_64f6998c8f512660_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_rectangles@
hs_bindgen_64f6998c8f512660 ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_64f6998c8f512660 =
  RIP.fromFFIType hs_bindgen_64f6998c8f512660_base

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
  hs_bindgen_64f6998c8f512660

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_equal@
foreign import ccall unsafe "hs_bindgen_0d615078f7b9c2b6" hs_bindgen_0d615078f7b9c2b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_equal@
hs_bindgen_0d615078f7b9c2b6 ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_0d615078f7b9c2b6 =
  RIP.fromFFIType hs_bindgen_0d615078f7b9c2b6_base

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
pixman_region32_equal = hs_bindgen_0d615078f7b9c2b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_selfcheck@
foreign import ccall unsafe "hs_bindgen_4947d831c5a730a5" hs_bindgen_4947d831c5a730a5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_selfcheck@
hs_bindgen_4947d831c5a730a5 ::
     RIP.Ptr Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_4947d831c5a730a5 =
  RIP.fromFFIType hs_bindgen_4947d831c5a730a5_base

{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_selfcheck =
  hs_bindgen_4947d831c5a730a5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_reset@
foreign import ccall unsafe "hs_bindgen_0a4c3cacb3024df7" hs_bindgen_0a4c3cacb3024df7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_reset@
hs_bindgen_0a4c3cacb3024df7 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_0a4c3cacb3024df7 =
  RIP.fromFFIType hs_bindgen_0a4c3cacb3024df7_base

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
pixman_region32_reset = hs_bindgen_0a4c3cacb3024df7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_clear@
foreign import ccall unsafe "hs_bindgen_c4f16cde3ba8f0a1" hs_bindgen_c4f16cde3ba8f0a1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region32_clear@
hs_bindgen_c4f16cde3ba8f0a1 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_c4f16cde3ba8f0a1 =
  RIP.fromFFIType hs_bindgen_c4f16cde3ba8f0a1_base

{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_clear = hs_bindgen_c4f16cde3ba8f0a1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init@
foreign import ccall unsafe "hs_bindgen_218c59bd5c35070a" hs_bindgen_218c59bd5c35070a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init@
hs_bindgen_218c59bd5c35070a ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_218c59bd5c35070a =
  RIP.fromFFIType hs_bindgen_218c59bd5c35070a_base

{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_init = hs_bindgen_218c59bd5c35070a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rect@
foreign import ccall unsafe "hs_bindgen_d02ad431dd1a8833" hs_bindgen_d02ad431dd1a8833_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rect@
hs_bindgen_d02ad431dd1a8833 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_d02ad431dd1a8833 =
  RIP.fromFFIType hs_bindgen_d02ad431dd1a8833_base

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
  hs_bindgen_d02ad431dd1a8833

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rectf@
foreign import ccall unsafe "hs_bindgen_8e6be7d2778de95f" hs_bindgen_8e6be7d2778de95f_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rectf@
hs_bindgen_8e6be7d2778de95f ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_8e6be7d2778de95f =
  RIP.fromFFIType hs_bindgen_8e6be7d2778de95f_base

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
  hs_bindgen_8e6be7d2778de95f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rects@
foreign import ccall unsafe "hs_bindgen_a425b81efa258160" hs_bindgen_a425b81efa258160_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_rects@
hs_bindgen_a425b81efa258160 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_a425b81efa258160 =
  RIP.fromFFIType hs_bindgen_a425b81efa258160_base

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
  hs_bindgen_a425b81efa258160

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_with_extents@
foreign import ccall unsafe "hs_bindgen_7930276a7f635dbc" hs_bindgen_7930276a7f635dbc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_with_extents@
hs_bindgen_7930276a7f635dbc ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_7930276a7f635dbc =
  RIP.fromFFIType hs_bindgen_7930276a7f635dbc_base

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
  hs_bindgen_7930276a7f635dbc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_from_image@
foreign import ccall unsafe "hs_bindgen_440b0b2ebdf03318" hs_bindgen_440b0b2ebdf03318_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_init_from_image@
hs_bindgen_440b0b2ebdf03318 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_440b0b2ebdf03318 =
  RIP.fromFFIType hs_bindgen_440b0b2ebdf03318_base

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
  hs_bindgen_440b0b2ebdf03318

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_fini@
foreign import ccall unsafe "hs_bindgen_c621fb89f72810f1" hs_bindgen_c621fb89f72810f1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_fini@
hs_bindgen_c621fb89f72810f1 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_c621fb89f72810f1 =
  RIP.fromFFIType hs_bindgen_c621fb89f72810f1_base

{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_fini = hs_bindgen_c621fb89f72810f1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translate@
foreign import ccall unsafe "hs_bindgen_515210fe44bc0b53" hs_bindgen_515210fe44bc0b53_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translate@
hs_bindgen_515210fe44bc0b53 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_515210fe44bc0b53 =
  RIP.fromFFIType hs_bindgen_515210fe44bc0b53_base

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
  hs_bindgen_515210fe44bc0b53

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translatef@
foreign import ccall unsafe "hs_bindgen_ed225dc6935678f7" hs_bindgen_ed225dc6935678f7_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_translatef@
hs_bindgen_ed225dc6935678f7 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_ed225dc6935678f7 =
  RIP.fromFFIType hs_bindgen_ed225dc6935678f7_base

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
  hs_bindgen_ed225dc6935678f7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_copy@
foreign import ccall unsafe "hs_bindgen_981fbcfd9b9d63ff" hs_bindgen_981fbcfd9b9d63ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_copy@
hs_bindgen_981fbcfd9b9d63ff ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_981fbcfd9b9d63ff =
  RIP.fromFFIType hs_bindgen_981fbcfd9b9d63ff_base

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
pixman_region64f_copy = hs_bindgen_981fbcfd9b9d63ff

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect@
foreign import ccall unsafe "hs_bindgen_ea6430db2c0ea1fe" hs_bindgen_ea6430db2c0ea1fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect@
hs_bindgen_ea6430db2c0ea1fe ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_ea6430db2c0ea1fe =
  RIP.fromFFIType hs_bindgen_ea6430db2c0ea1fe_base

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
  hs_bindgen_ea6430db2c0ea1fe

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union@
foreign import ccall unsafe "hs_bindgen_0ec78d6da403289b" hs_bindgen_0ec78d6da403289b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union@
hs_bindgen_0ec78d6da403289b ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_0ec78d6da403289b =
  RIP.fromFFIType hs_bindgen_0ec78d6da403289b_base

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
pixman_region64f_union = hs_bindgen_0ec78d6da403289b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rect@
foreign import ccall unsafe "hs_bindgen_7fd5f7980c8232f0" hs_bindgen_7fd5f7980c8232f0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rect@
hs_bindgen_7fd5f7980c8232f0 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_7fd5f7980c8232f0 =
  RIP.fromFFIType hs_bindgen_7fd5f7980c8232f0_base

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
  hs_bindgen_7fd5f7980c8232f0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rectf@
foreign import ccall unsafe "hs_bindgen_b70cf01e3a03c94a" hs_bindgen_b70cf01e3a03c94a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_intersect_rectf@
hs_bindgen_b70cf01e3a03c94a ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_b70cf01e3a03c94a =
  RIP.fromFFIType hs_bindgen_b70cf01e3a03c94a_base

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
  hs_bindgen_b70cf01e3a03c94a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rect@
foreign import ccall unsafe "hs_bindgen_a8bbd0a1113bce09" hs_bindgen_a8bbd0a1113bce09_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rect@
hs_bindgen_a8bbd0a1113bce09 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_a8bbd0a1113bce09 =
  RIP.fromFFIType hs_bindgen_a8bbd0a1113bce09_base

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
  hs_bindgen_a8bbd0a1113bce09

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rectf@
foreign import ccall unsafe "hs_bindgen_289b6dfa1a70fa66" hs_bindgen_289b6dfa1a70fa66_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_union_rectf@
hs_bindgen_289b6dfa1a70fa66 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_289b6dfa1a70fa66 =
  RIP.fromFFIType hs_bindgen_289b6dfa1a70fa66_base

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
  hs_bindgen_289b6dfa1a70fa66

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_subtract@
foreign import ccall unsafe "hs_bindgen_2686d28a5a7f1b20" hs_bindgen_2686d28a5a7f1b20_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_subtract@
hs_bindgen_2686d28a5a7f1b20 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_2686d28a5a7f1b20 =
  RIP.fromFFIType hs_bindgen_2686d28a5a7f1b20_base

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
  hs_bindgen_2686d28a5a7f1b20

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_inverse@
foreign import ccall unsafe "hs_bindgen_60330acd24477d9f" hs_bindgen_60330acd24477d9f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_inverse@
hs_bindgen_60330acd24477d9f ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_60330acd24477d9f =
  RIP.fromFFIType hs_bindgen_60330acd24477d9f_base

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
  hs_bindgen_60330acd24477d9f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_point@
foreign import ccall unsafe "hs_bindgen_5ccb0115bd39a1de" hs_bindgen_5ccb0115bd39a1de_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_point@
hs_bindgen_5ccb0115bd39a1de ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_5ccb0115bd39a1de =
  RIP.fromFFIType hs_bindgen_5ccb0115bd39a1de_base

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
  hs_bindgen_5ccb0115bd39a1de

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_pointf@
foreign import ccall unsafe "hs_bindgen_21c71abdcb70de24" hs_bindgen_21c71abdcb70de24_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_pointf@
hs_bindgen_21c71abdcb70de24 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_21c71abdcb70de24 =
  RIP.fromFFIType hs_bindgen_21c71abdcb70de24_base

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
  hs_bindgen_21c71abdcb70de24

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_1a5e48c55ba86760" hs_bindgen_1a5e48c55ba86760_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_contains_rectangle@
hs_bindgen_1a5e48c55ba86760 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_region_overlap_t
hs_bindgen_1a5e48c55ba86760 =
  RIP.fromFFIType hs_bindgen_1a5e48c55ba86760_base

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
  hs_bindgen_1a5e48c55ba86760

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_empty@
foreign import ccall unsafe "hs_bindgen_38b16f065ada117d" hs_bindgen_38b16f065ada117d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_empty@
hs_bindgen_38b16f065ada117d ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_38b16f065ada117d =
  RIP.fromFFIType hs_bindgen_38b16f065ada117d_base

{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_empty = hs_bindgen_38b16f065ada117d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_not_empty@
foreign import ccall unsafe "hs_bindgen_fda44b2b1ca71185" hs_bindgen_fda44b2b1ca71185_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_not_empty@
hs_bindgen_fda44b2b1ca71185 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_fda44b2b1ca71185 =
  RIP.fromFFIType hs_bindgen_fda44b2b1ca71185_base

{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_not_empty =
  hs_bindgen_fda44b2b1ca71185

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_extents@
foreign import ccall unsafe "hs_bindgen_f4c76499386df33f" hs_bindgen_f4c76499386df33f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_extents@
hs_bindgen_f4c76499386df33f ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_f4c76499386df33f =
  RIP.fromFFIType hs_bindgen_f4c76499386df33f_base

{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_extents =
  hs_bindgen_f4c76499386df33f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_n_rects@
foreign import ccall unsafe "hs_bindgen_7b9774c629b4e311" hs_bindgen_7b9774c629b4e311_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_n_rects@
hs_bindgen_7b9774c629b4e311 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO RIP.CInt
hs_bindgen_7b9774c629b4e311 =
  RIP.fromFFIType hs_bindgen_7b9774c629b4e311_base

{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region64f_n_rects =
  hs_bindgen_7b9774c629b4e311

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_rectangles@
foreign import ccall unsafe "hs_bindgen_a854cc7e9e176d85" hs_bindgen_a854cc7e9e176d85_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_rectangles@
hs_bindgen_a854cc7e9e176d85 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_a854cc7e9e176d85 =
  RIP.fromFFIType hs_bindgen_a854cc7e9e176d85_base

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
  hs_bindgen_a854cc7e9e176d85

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_equal@
foreign import ccall unsafe "hs_bindgen_7b0403d74f3860a3" hs_bindgen_7b0403d74f3860a3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_equal@
hs_bindgen_7b0403d74f3860a3 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_7b0403d74f3860a3 =
  RIP.fromFFIType hs_bindgen_7b0403d74f3860a3_base

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
pixman_region64f_equal = hs_bindgen_7b0403d74f3860a3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_selfcheck@
foreign import ccall unsafe "hs_bindgen_7224fa4d4eab4212" hs_bindgen_7224fa4d4eab4212_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_selfcheck@
hs_bindgen_7224fa4d4eab4212 ::
     RIP.Ptr Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_7224fa4d4eab4212 =
  RIP.fromFFIType hs_bindgen_7224fa4d4eab4212_base

{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_selfcheck =
  hs_bindgen_7224fa4d4eab4212

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_reset@
foreign import ccall unsafe "hs_bindgen_748045251552d712" hs_bindgen_748045251552d712_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_reset@
hs_bindgen_748045251552d712 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_748045251552d712 =
  RIP.fromFFIType hs_bindgen_748045251552d712_base

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
pixman_region64f_reset = hs_bindgen_748045251552d712

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_clear@
foreign import ccall unsafe "hs_bindgen_42e1bd9ce9da53b1" hs_bindgen_42e1bd9ce9da53b1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_region64f_clear@
hs_bindgen_42e1bd9ce9da53b1 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_42e1bd9ce9da53b1 =
  RIP.fromFFIType hs_bindgen_42e1bd9ce9da53b1_base

{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_clear = hs_bindgen_42e1bd9ce9da53b1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_blt@
foreign import ccall unsafe "hs_bindgen_114720d00b414b32" hs_bindgen_114720d00b414b32_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_blt@
hs_bindgen_114720d00b414b32 ::
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
hs_bindgen_114720d00b414b32 =
  RIP.fromFFIType hs_bindgen_114720d00b414b32_base

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
pixman_blt = hs_bindgen_114720d00b414b32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_fill@
foreign import ccall unsafe "hs_bindgen_9fe8dfbafc0c22f9" hs_bindgen_9fe8dfbafc0c22f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_fill@
hs_bindgen_9fe8dfbafc0c22f9 ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> HsBindgen.Runtime.LibC.Word32
  -> IO Pixman_bool_t
hs_bindgen_9fe8dfbafc0c22f9 =
  RIP.fromFFIType hs_bindgen_9fe8dfbafc0c22f9_base

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
pixman_fill = hs_bindgen_9fe8dfbafc0c22f9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_version@
foreign import ccall unsafe "hs_bindgen_51103296059e1228" hs_bindgen_51103296059e1228_base ::
     IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_version@
hs_bindgen_51103296059e1228 :: IO RIP.CInt
hs_bindgen_51103296059e1228 =
  RIP.fromFFIType hs_bindgen_51103296059e1228_base

{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: IO RIP.CInt
pixman_version = hs_bindgen_51103296059e1228

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_version_string@
foreign import ccall unsafe "hs_bindgen_8b5e66565e425d79" hs_bindgen_8b5e66565e425d79_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_version_string@
hs_bindgen_8b5e66565e425d79 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_8b5e66565e425d79 =
  RIP.fromFFIType hs_bindgen_8b5e66565e425d79_base

{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: IO (PtrConst.PtrConst RIP.CChar)
pixman_version_string = hs_bindgen_8b5e66565e425d79

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_destination@
foreign import ccall unsafe "hs_bindgen_7232fe4030c3805a" hs_bindgen_7232fe4030c3805a_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_destination@
hs_bindgen_7232fe4030c3805a ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_7232fe4030c3805a =
  RIP.fromFFIType hs_bindgen_7232fe4030c3805a_base

{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_destination =
  hs_bindgen_7232fe4030c3805a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_source@
foreign import ccall unsafe "hs_bindgen_be0ea2840846a7d7" hs_bindgen_be0ea2840846a7d7_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_format_supported_source@
hs_bindgen_be0ea2840846a7d7 ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_be0ea2840846a7d7 =
  RIP.fromFFIType hs_bindgen_be0ea2840846a7d7_base

{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_source =
  hs_bindgen_be0ea2840846a7d7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_solid_fill@
foreign import ccall unsafe "hs_bindgen_9ba5eba1f1c2a664" hs_bindgen_9ba5eba1f1c2a664_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_solid_fill@
hs_bindgen_9ba5eba1f1c2a664 ::
     PtrConst.PtrConst Pixman_color_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_9ba5eba1f1c2a664 =
  RIP.fromFFIType hs_bindgen_9ba5eba1f1c2a664_base

{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill ::
     PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_solid_fill =
  hs_bindgen_9ba5eba1f1c2a664

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_linear_gradient@
foreign import ccall unsafe "hs_bindgen_c4c0ebb0dde80837" hs_bindgen_c4c0ebb0dde80837_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_linear_gradient@
hs_bindgen_c4c0ebb0dde80837 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_c4c0ebb0dde80837 =
  RIP.fromFFIType hs_bindgen_c4c0ebb0dde80837_base

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
  hs_bindgen_c4c0ebb0dde80837

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_radial_gradient@
foreign import ccall unsafe "hs_bindgen_e8e8ba9b8214f9a1" hs_bindgen_e8e8ba9b8214f9a1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_radial_gradient@
hs_bindgen_e8e8ba9b8214f9a1 ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_e8e8ba9b8214f9a1 =
  RIP.fromFFIType hs_bindgen_e8e8ba9b8214f9a1_base

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
  hs_bindgen_e8e8ba9b8214f9a1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_conical_gradient@
foreign import ccall unsafe "hs_bindgen_a38daa420b25a6ff" hs_bindgen_a38daa420b25a6ff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_conical_gradient@
hs_bindgen_a38daa420b25a6ff ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_a38daa420b25a6ff =
  RIP.fromFFIType hs_bindgen_a38daa420b25a6ff_base

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
  hs_bindgen_a38daa420b25a6ff

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits@
foreign import ccall unsafe "hs_bindgen_0aa98f3558bcd807" hs_bindgen_0aa98f3558bcd807_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits@
hs_bindgen_0aa98f3558bcd807 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_0aa98f3558bcd807 =
  RIP.fromFFIType hs_bindgen_0aa98f3558bcd807_base

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
  hs_bindgen_0aa98f3558bcd807

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits_no_clear@
foreign import ccall unsafe "hs_bindgen_6404f8132b864d11" hs_bindgen_6404f8132b864d11_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_create_bits_no_clear@
hs_bindgen_6404f8132b864d11 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_6404f8132b864d11 =
  RIP.fromFFIType hs_bindgen_6404f8132b864d11_base

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
  hs_bindgen_6404f8132b864d11

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_ref@
foreign import ccall unsafe "hs_bindgen_32fd96d463fc0f50" hs_bindgen_32fd96d463fc0f50_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_ref@
hs_bindgen_32fd96d463fc0f50 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_32fd96d463fc0f50 =
  RIP.fromFFIType hs_bindgen_32fd96d463fc0f50_base

{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_ref = hs_bindgen_32fd96d463fc0f50

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_unref@
foreign import ccall unsafe "hs_bindgen_4c5f6935faca53f6" hs_bindgen_4c5f6935faca53f6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_unref@
hs_bindgen_4c5f6935faca53f6 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_4c5f6935faca53f6 =
  RIP.fromFFIType hs_bindgen_4c5f6935faca53f6_base

{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_unref = hs_bindgen_4c5f6935faca53f6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_destroy_function@
foreign import ccall unsafe "hs_bindgen_2d5edc6ebb86bbeb" hs_bindgen_2d5edc6ebb86bbeb_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_destroy_function@
hs_bindgen_2d5edc6ebb86bbeb ::
     RIP.Ptr Pixman_image_t
  -> Pixman_image_destroy_func_t
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2d5edc6ebb86bbeb =
  RIP.fromFFIType hs_bindgen_2d5edc6ebb86bbeb_base

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
  hs_bindgen_2d5edc6ebb86bbeb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_destroy_data@
foreign import ccall unsafe "hs_bindgen_bceaa431ef0437e3" hs_bindgen_bceaa431ef0437e3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_destroy_data@
hs_bindgen_bceaa431ef0437e3 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_bceaa431ef0437e3 =
  RIP.fromFFIType hs_bindgen_bceaa431ef0437e3_base

{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr RIP.Void)
pixman_image_get_destroy_data =
  hs_bindgen_bceaa431ef0437e3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region@
foreign import ccall unsafe "hs_bindgen_74151f04643333cf" hs_bindgen_74151f04643333cf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region@
hs_bindgen_74151f04643333cf ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_74151f04643333cf =
  RIP.fromFFIType hs_bindgen_74151f04643333cf_base

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
  hs_bindgen_74151f04643333cf

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region32@
foreign import ccall unsafe "hs_bindgen_bda2959e752162bf" hs_bindgen_bda2959e752162bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region32@
hs_bindgen_bda2959e752162bf ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_bda2959e752162bf =
  RIP.fromFFIType hs_bindgen_bda2959e752162bf_base

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
  hs_bindgen_bda2959e752162bf

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region64f@
foreign import ccall unsafe "hs_bindgen_f85aa0a4b40bd63d" hs_bindgen_f85aa0a4b40bd63d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_clip_region64f@
hs_bindgen_f85aa0a4b40bd63d ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_f85aa0a4b40bd63d =
  RIP.fromFFIType hs_bindgen_f85aa0a4b40bd63d_base

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
  hs_bindgen_f85aa0a4b40bd63d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_has_client_clip@
foreign import ccall unsafe "hs_bindgen_93a32f8d45b3a6b6" hs_bindgen_93a32f8d45b3a6b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_has_client_clip@
hs_bindgen_93a32f8d45b3a6b6 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_93a32f8d45b3a6b6 =
  RIP.fromFFIType hs_bindgen_93a32f8d45b3a6b6_base

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
  hs_bindgen_93a32f8d45b3a6b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_transform@
foreign import ccall unsafe "hs_bindgen_aa1c5916abd1ff8c" hs_bindgen_aa1c5916abd1ff8c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_transform@
hs_bindgen_aa1c5916abd1ff8c ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_transform_t
  -> IO Pixman_bool_t
hs_bindgen_aa1c5916abd1ff8c =
  RIP.fromFFIType hs_bindgen_aa1c5916abd1ff8c_base

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
  hs_bindgen_aa1c5916abd1ff8c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_repeat@
foreign import ccall unsafe "hs_bindgen_a7c968f5009f7ba1" hs_bindgen_a7c968f5009f7ba1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_repeat@
hs_bindgen_a7c968f5009f7ba1 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_repeat_t
  -> IO ()
hs_bindgen_a7c968f5009f7ba1 =
  RIP.fromFFIType hs_bindgen_a7c968f5009f7ba1_base

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
pixman_image_set_repeat = hs_bindgen_a7c968f5009f7ba1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither@
foreign import ccall unsafe "hs_bindgen_fbb2c64a6d78413f" hs_bindgen_fbb2c64a6d78413f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither@
hs_bindgen_fbb2c64a6d78413f ::
     RIP.Ptr Pixman_image_t
  -> Pixman_dither_t
  -> IO ()
hs_bindgen_fbb2c64a6d78413f =
  RIP.fromFFIType hs_bindgen_fbb2c64a6d78413f_base

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
pixman_image_set_dither = hs_bindgen_fbb2c64a6d78413f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither_offset@
foreign import ccall unsafe "hs_bindgen_a649b61233a31616" hs_bindgen_a649b61233a31616_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_dither_offset@
hs_bindgen_a649b61233a31616 ::
     RIP.Ptr Pixman_image_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_a649b61233a31616 =
  RIP.fromFFIType hs_bindgen_a649b61233a31616_base

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
  hs_bindgen_a649b61233a31616

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_filter@
foreign import ccall unsafe "hs_bindgen_2152f7e3ab8b9356" hs_bindgen_2152f7e3ab8b9356_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_filter@
hs_bindgen_2152f7e3ab8b9356 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_filter_t
  -> PtrConst.PtrConst Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_2152f7e3ab8b9356 =
  RIP.fromFFIType hs_bindgen_2152f7e3ab8b9356_base

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
pixman_image_set_filter = hs_bindgen_2152f7e3ab8b9356

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_source_clipping@
foreign import ccall unsafe "hs_bindgen_adf7134df249c24f" hs_bindgen_adf7134df249c24f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_source_clipping@
hs_bindgen_adf7134df249c24f ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_adf7134df249c24f =
  RIP.fromFFIType hs_bindgen_adf7134df249c24f_base

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
  hs_bindgen_adf7134df249c24f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_alpha_map@
foreign import ccall unsafe "hs_bindgen_5026a7fb7dda60b2" hs_bindgen_5026a7fb7dda60b2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_alpha_map@
hs_bindgen_5026a7fb7dda60b2 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> IO ()
hs_bindgen_5026a7fb7dda60b2 =
  RIP.fromFFIType hs_bindgen_5026a7fb7dda60b2_base

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
  hs_bindgen_5026a7fb7dda60b2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_component_alpha@
foreign import ccall unsafe "hs_bindgen_7ca42fcca4ad506f" hs_bindgen_7ca42fcca4ad506f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_component_alpha@
hs_bindgen_7ca42fcca4ad506f ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_7ca42fcca4ad506f =
  RIP.fromFFIType hs_bindgen_7ca42fcca4ad506f_base

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
  hs_bindgen_7ca42fcca4ad506f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_component_alpha@
foreign import ccall unsafe "hs_bindgen_0b037f2394e2b638" hs_bindgen_0b037f2394e2b638_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_component_alpha@
hs_bindgen_0b037f2394e2b638 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_0b037f2394e2b638 =
  RIP.fromFFIType hs_bindgen_0b037f2394e2b638_base

{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_get_component_alpha =
  hs_bindgen_0b037f2394e2b638

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_accessors@
foreign import ccall unsafe "hs_bindgen_6982ab514d6dacc5" hs_bindgen_6982ab514d6dacc5_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_accessors@
hs_bindgen_6982ab514d6dacc5 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_read_memory_func_t
  -> Pixman_write_memory_func_t
  -> IO ()
hs_bindgen_6982ab514d6dacc5 =
  RIP.fromFFIType hs_bindgen_6982ab514d6dacc5_base

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
  hs_bindgen_6982ab514d6dacc5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_indexed@
foreign import ccall unsafe "hs_bindgen_a6f7d4ea13b61ee8" hs_bindgen_a6f7d4ea13b61ee8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_set_indexed@
hs_bindgen_a6f7d4ea13b61ee8 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_indexed_t
  -> IO ()
hs_bindgen_a6f7d4ea13b61ee8 =
  RIP.fromFFIType hs_bindgen_a6f7d4ea13b61ee8_base

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
  hs_bindgen_a6f7d4ea13b61ee8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_data@
foreign import ccall unsafe "hs_bindgen_5077f5c34f6c4546" hs_bindgen_5077f5c34f6c4546_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_data@
hs_bindgen_5077f5c34f6c4546 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
hs_bindgen_5077f5c34f6c4546 =
  RIP.fromFFIType hs_bindgen_5077f5c34f6c4546_base

{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
pixman_image_get_data = hs_bindgen_5077f5c34f6c4546

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_width@
foreign import ccall unsafe "hs_bindgen_5c3d1e70a1176bf0" hs_bindgen_5c3d1e70a1176bf0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_width@
hs_bindgen_5c3d1e70a1176bf0 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_5c3d1e70a1176bf0 =
  RIP.fromFFIType hs_bindgen_5c3d1e70a1176bf0_base

{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_width = hs_bindgen_5c3d1e70a1176bf0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_height@
foreign import ccall unsafe "hs_bindgen_f390ea618ba7982f" hs_bindgen_f390ea618ba7982f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_height@
hs_bindgen_f390ea618ba7982f ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_f390ea618ba7982f =
  RIP.fromFFIType hs_bindgen_f390ea618ba7982f_base

{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_height = hs_bindgen_f390ea618ba7982f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_stride@
foreign import ccall unsafe "hs_bindgen_b3a0196c0b153e23" hs_bindgen_b3a0196c0b153e23_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_stride@
hs_bindgen_b3a0196c0b153e23 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_b3a0196c0b153e23 =
  RIP.fromFFIType hs_bindgen_b3a0196c0b153e23_base

{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_stride = hs_bindgen_b3a0196c0b153e23

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_depth@
foreign import ccall unsafe "hs_bindgen_d79985184355bfd2" hs_bindgen_d79985184355bfd2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_depth@
hs_bindgen_d79985184355bfd2 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_d79985184355bfd2 =
  RIP.fromFFIType hs_bindgen_d79985184355bfd2_base

{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_depth = hs_bindgen_d79985184355bfd2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_format@
foreign import ccall unsafe "hs_bindgen_071b4e803d59bbed" hs_bindgen_071b4e803d59bbed_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_get_format@
hs_bindgen_071b4e803d59bbed ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_format_code_t
hs_bindgen_071b4e803d59bbed =
  RIP.fromFFIType hs_bindgen_071b4e803d59bbed_base

{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_format_code_t
pixman_image_get_format = hs_bindgen_071b4e803d59bbed

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_filter_create_separable_convolution@
foreign import ccall unsafe "hs_bindgen_48518fa73b9068f9" hs_bindgen_48518fa73b9068f9_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_filter_create_separable_convolution@
hs_bindgen_48518fa73b9068f9 ::
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
hs_bindgen_48518fa73b9068f9 =
  RIP.fromFFIType hs_bindgen_48518fa73b9068f9_base

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
  hs_bindgen_48518fa73b9068f9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_rectangles@
foreign import ccall unsafe "hs_bindgen_ce2c0b050eadccdc" hs_bindgen_ce2c0b050eadccdc_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_rectangles@
hs_bindgen_ce2c0b050eadccdc ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_rectangle16_t
  -> IO Pixman_bool_t
hs_bindgen_ce2c0b050eadccdc =
  RIP.fromFFIType hs_bindgen_ce2c0b050eadccdc_base

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
  hs_bindgen_ce2c0b050eadccdc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_boxes@
foreign import ccall unsafe "hs_bindgen_65eb3eb415dad148" hs_bindgen_65eb3eb415dad148_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_fill_boxes@
hs_bindgen_65eb3eb415dad148 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_65eb3eb415dad148 =
  RIP.fromFFIType hs_bindgen_65eb3eb415dad148_base

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
pixman_image_fill_boxes = hs_bindgen_65eb3eb415dad148

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_compute_composite_region@
foreign import ccall unsafe "hs_bindgen_584e8c3ec7907161" hs_bindgen_584e8c3ec7907161_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_compute_composite_region@
hs_bindgen_584e8c3ec7907161 ::
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
hs_bindgen_584e8c3ec7907161 =
  RIP.fromFFIType hs_bindgen_584e8c3ec7907161_base

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
  hs_bindgen_584e8c3ec7907161

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_composite@
foreign import ccall unsafe "hs_bindgen_93b485a074265e91" hs_bindgen_93b485a074265e91_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_composite@
hs_bindgen_93b485a074265e91 ::
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
hs_bindgen_93b485a074265e91 =
  RIP.fromFFIType hs_bindgen_93b485a074265e91_base

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
pixman_image_composite = hs_bindgen_93b485a074265e91

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_composite32@
foreign import ccall unsafe "hs_bindgen_185573f5a71a031c" hs_bindgen_185573f5a71a031c_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_composite32@
hs_bindgen_185573f5a71a031c ::
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
hs_bindgen_185573f5a71a031c =
  RIP.fromFFIType hs_bindgen_185573f5a71a031c_base

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
  hs_bindgen_185573f5a71a031c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_composite64f@
foreign import ccall unsafe "hs_bindgen_983cd6bc06bd2921" hs_bindgen_983cd6bc06bd2921_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_image_composite64f@
hs_bindgen_983cd6bc06bd2921 ::
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
hs_bindgen_983cd6bc06bd2921 =
  RIP.fromFFIType hs_bindgen_983cd6bc06bd2921_base

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
  hs_bindgen_983cd6bc06bd2921

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_disable_out_of_bounds_workaround@
foreign import ccall unsafe "hs_bindgen_89b262220c1b3b7d" hs_bindgen_89b262220c1b3b7d_base ::
     IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_disable_out_of_bounds_workaround@
hs_bindgen_89b262220c1b3b7d :: IO ()
hs_bindgen_89b262220c1b3b7d =
  RIP.fromFFIType hs_bindgen_89b262220c1b3b7d_base

{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: IO ()
pixman_disable_out_of_bounds_workaround =
  hs_bindgen_89b262220c1b3b7d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_create@
foreign import ccall unsafe "hs_bindgen_6b3e6417f1bad155" hs_bindgen_6b3e6417f1bad155_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_create@
hs_bindgen_6b3e6417f1bad155 :: IO (RIP.Ptr Pixman_glyph_cache_t)
hs_bindgen_6b3e6417f1bad155 =
  RIP.fromFFIType hs_bindgen_6b3e6417f1bad155_base

{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: IO (RIP.Ptr Pixman_glyph_cache_t)
pixman_glyph_cache_create =
  hs_bindgen_6b3e6417f1bad155

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_destroy@
foreign import ccall unsafe "hs_bindgen_8f18b092993fd937" hs_bindgen_8f18b092993fd937_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_destroy@
hs_bindgen_8f18b092993fd937 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_8f18b092993fd937 =
  RIP.fromFFIType hs_bindgen_8f18b092993fd937_base

{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_destroy =
  hs_bindgen_8f18b092993fd937

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_freeze@
foreign import ccall unsafe "hs_bindgen_5b7113388edc649c" hs_bindgen_5b7113388edc649c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_freeze@
hs_bindgen_5b7113388edc649c ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_5b7113388edc649c =
  RIP.fromFFIType hs_bindgen_5b7113388edc649c_base

{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_freeze =
  hs_bindgen_5b7113388edc649c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_thaw@
foreign import ccall unsafe "hs_bindgen_3a53fa0e7537358c" hs_bindgen_3a53fa0e7537358c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_thaw@
hs_bindgen_3a53fa0e7537358c ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_3a53fa0e7537358c =
  RIP.fromFFIType hs_bindgen_3a53fa0e7537358c_base

{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_thaw = hs_bindgen_3a53fa0e7537358c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_lookup@
foreign import ccall unsafe "hs_bindgen_3270c793262ad671" hs_bindgen_3270c793262ad671_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_lookup@
hs_bindgen_3270c793262ad671 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_3270c793262ad671 =
  RIP.fromFFIType hs_bindgen_3270c793262ad671_base

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
  hs_bindgen_3270c793262ad671

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_insert@
foreign import ccall unsafe "hs_bindgen_7c435b0086a80da8" hs_bindgen_7c435b0086a80da8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_insert@
hs_bindgen_7c435b0086a80da8 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_image_t
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_7c435b0086a80da8 =
  RIP.fromFFIType hs_bindgen_7c435b0086a80da8_base

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
  hs_bindgen_7c435b0086a80da8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_remove@
foreign import ccall unsafe "hs_bindgen_1b4c225caeec6a1a" hs_bindgen_1b4c225caeec6a1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_cache_remove@
hs_bindgen_1b4c225caeec6a1a ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1b4c225caeec6a1a =
  RIP.fromFFIType hs_bindgen_1b4c225caeec6a1a_base

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
  hs_bindgen_1b4c225caeec6a1a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_extents@
foreign import ccall unsafe "hs_bindgen_4127bd6c0043179b" hs_bindgen_4127bd6c0043179b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_extents@
hs_bindgen_4127bd6c0043179b ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> RIP.Ptr Pixman_glyph_t
  -> RIP.Ptr Pixman_box32_t
  -> IO ()
hs_bindgen_4127bd6c0043179b =
  RIP.fromFFIType hs_bindgen_4127bd6c0043179b_base

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
  hs_bindgen_4127bd6c0043179b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_mask_format@
foreign import ccall unsafe "hs_bindgen_d1d1300cd6727dcd" hs_bindgen_d1d1300cd6727dcd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_glyph_get_mask_format@
hs_bindgen_d1d1300cd6727dcd ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO Pixman_format_code_t
hs_bindgen_d1d1300cd6727dcd =
  RIP.fromFFIType hs_bindgen_d1d1300cd6727dcd_base

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
  hs_bindgen_d1d1300cd6727dcd

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs@
foreign import ccall unsafe "hs_bindgen_60181a27baad2b83" hs_bindgen_60181a27baad2b83_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs@
hs_bindgen_60181a27baad2b83 ::
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
hs_bindgen_60181a27baad2b83 =
  RIP.fromFFIType hs_bindgen_60181a27baad2b83_base

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
pixman_composite_glyphs = hs_bindgen_60181a27baad2b83

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs_no_mask@
foreign import ccall unsafe "hs_bindgen_1fa27dcfd3356cf5" hs_bindgen_1fa27dcfd3356cf5_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_glyphs_no_mask@
hs_bindgen_1fa27dcfd3356cf5 ::
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
hs_bindgen_1fa27dcfd3356cf5 =
  RIP.fromFFIType hs_bindgen_1fa27dcfd3356cf5_base

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
  hs_bindgen_1fa27dcfd3356cf5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_sample_ceil_y@
foreign import ccall unsafe "hs_bindgen_34eb61c697dfd398" hs_bindgen_34eb61c697dfd398_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_sample_ceil_y@
hs_bindgen_34eb61c697dfd398 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_34eb61c697dfd398 =
  RIP.fromFFIType hs_bindgen_34eb61c697dfd398_base

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
pixman_sample_ceil_y = hs_bindgen_34eb61c697dfd398

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_sample_floor_y@
foreign import ccall unsafe "hs_bindgen_fcf2e8933f198de7" hs_bindgen_fcf2e8933f198de7_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_sample_floor_y@
hs_bindgen_fcf2e8933f198de7 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_fcf2e8933f198de7 =
  RIP.fromFFIType hs_bindgen_fcf2e8933f198de7_base

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
pixman_sample_floor_y = hs_bindgen_fcf2e8933f198de7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_edge_step@
foreign import ccall unsafe "hs_bindgen_b09e4f1133f1ba4d" hs_bindgen_b09e4f1133f1ba4d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_edge_step@
hs_bindgen_b09e4f1133f1ba4d ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> IO ()
hs_bindgen_b09e4f1133f1ba4d =
  RIP.fromFFIType hs_bindgen_b09e4f1133f1ba4d_base

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
pixman_edge_step = hs_bindgen_b09e4f1133f1ba4d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_edge_init@
foreign import ccall unsafe "hs_bindgen_ce47fb99b6526173" hs_bindgen_ce47fb99b6526173_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_edge_init@
hs_bindgen_ce47fb99b6526173 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_ce47fb99b6526173 =
  RIP.fromFFIType hs_bindgen_ce47fb99b6526173_base

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
pixman_edge_init = hs_bindgen_ce47fb99b6526173

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_line_fixed_edge_init@
foreign import ccall unsafe "hs_bindgen_9164bcb16f9dffc7" hs_bindgen_9164bcb16f9dffc7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_line_fixed_edge_init@
hs_bindgen_9164bcb16f9dffc7 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_line_fixed_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_9164bcb16f9dffc7 =
  RIP.fromFFIType hs_bindgen_9164bcb16f9dffc7_base

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
  hs_bindgen_9164bcb16f9dffc7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_edges@
foreign import ccall unsafe "hs_bindgen_149e66915232be95" hs_bindgen_149e66915232be95_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_edges@
hs_bindgen_149e66915232be95 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_edge_t
  -> RIP.Ptr Pixman_edge_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_149e66915232be95 =
  RIP.fromFFIType hs_bindgen_149e66915232be95_base

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
pixman_rasterize_edges = hs_bindgen_149e66915232be95

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_add_traps@
foreign import ccall unsafe "hs_bindgen_0584a8643b7d1a56" hs_bindgen_0584a8643b7d1a56_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_add_traps@
hs_bindgen_0584a8643b7d1a56 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trap_t
  -> IO ()
hs_bindgen_0584a8643b7d1a56 =
  RIP.fromFFIType hs_bindgen_0584a8643b7d1a56_base

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
pixman_add_traps = hs_bindgen_0584a8643b7d1a56

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_add_trapezoids@
foreign import ccall unsafe "hs_bindgen_9861ca3066f3a896" hs_bindgen_9861ca3066f3a896_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_add_trapezoids@
hs_bindgen_9861ca3066f3a896 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_9861ca3066f3a896 =
  RIP.fromFFIType hs_bindgen_9861ca3066f3a896_base

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
pixman_add_trapezoids = hs_bindgen_9861ca3066f3a896

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_trapezoid@
foreign import ccall unsafe "hs_bindgen_db32fc2c5ec38d74" hs_bindgen_db32fc2c5ec38d74_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_rasterize_trapezoid@
hs_bindgen_db32fc2c5ec38d74 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_db32fc2c5ec38d74 =
  RIP.fromFFIType hs_bindgen_db32fc2c5ec38d74_base

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
  hs_bindgen_db32fc2c5ec38d74

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_trapezoids@
foreign import ccall unsafe "hs_bindgen_9e9c5d1de1c6cc4f" hs_bindgen_9e9c5d1de1c6cc4f_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_trapezoids@
hs_bindgen_9e9c5d1de1c6cc4f ::
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
hs_bindgen_9e9c5d1de1c6cc4f =
  RIP.fromFFIType hs_bindgen_9e9c5d1de1c6cc4f_base

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
  hs_bindgen_9e9c5d1de1c6cc4f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_triangles@
foreign import ccall unsafe "hs_bindgen_118007b928d49a7e" hs_bindgen_118007b928d49a7e_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_composite_triangles@
hs_bindgen_118007b928d49a7e ::
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
hs_bindgen_118007b928d49a7e =
  RIP.fromFFIType hs_bindgen_118007b928d49a7e_base

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
  hs_bindgen_118007b928d49a7e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_add_triangles@
foreign import ccall unsafe "hs_bindgen_f6b8954b7a0f13f4" hs_bindgen_f6b8954b7a0f13f4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Unsafe_pixman_add_triangles@
hs_bindgen_f6b8954b7a0f13f4 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_f6b8954b7a0f13f4 =
  RIP.fromFFIType hs_bindgen_f6b8954b7a0f13f4_base

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
pixman_add_triangles = hs_bindgen_f6b8954b7a0f13f4
