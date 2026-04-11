{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Pixman.Generated.FunPtr
    ( Bindings.Pixman.Generated.FunPtr.pixman_transform_init_identity
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_point_3d
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_point
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_multiply
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_init_scale
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_scale
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_init_rotate
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_rotate
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_init_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_bounds
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_invert
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_is_identity
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_is_scale
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_is_int_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_is_inverse
    , Bindings.Pixman.Generated.FunPtr.pixman_transform_from_pixman_f_transform
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_from_pixman_transform
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_invert
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_point
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_point_3d
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_multiply
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_init_scale
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_scale
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_init_rotate
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_rotate
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_init_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_bounds
    , Bindings.Pixman.Generated.FunPtr.pixman_f_transform_init_identity
    , Bindings.Pixman.Generated.FunPtr.pixman_region_set_static_pointers
    , Bindings.Pixman.Generated.FunPtr.pixman_region_init
    , Bindings.Pixman.Generated.FunPtr.pixman_region_init_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region_init_rects
    , Bindings.Pixman.Generated.FunPtr.pixman_region_init_with_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_region_init_from_image
    , Bindings.Pixman.Generated.FunPtr.pixman_region_fini
    , Bindings.Pixman.Generated.FunPtr.pixman_region_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_region_copy
    , Bindings.Pixman.Generated.FunPtr.pixman_region_intersect
    , Bindings.Pixman.Generated.FunPtr.pixman_region_union
    , Bindings.Pixman.Generated.FunPtr.pixman_region_union_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region_intersect_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region_subtract
    , Bindings.Pixman.Generated.FunPtr.pixman_region_inverse
    , Bindings.Pixman.Generated.FunPtr.pixman_region_contains_point
    , Bindings.Pixman.Generated.FunPtr.pixman_region_contains_rectangle
    , Bindings.Pixman.Generated.FunPtr.pixman_region_empty
    , Bindings.Pixman.Generated.FunPtr.pixman_region_not_empty
    , Bindings.Pixman.Generated.FunPtr.pixman_region_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_region_n_rects
    , Bindings.Pixman.Generated.FunPtr.pixman_region_rectangles
    , Bindings.Pixman.Generated.FunPtr.pixman_region_equal
    , Bindings.Pixman.Generated.FunPtr.pixman_region_selfcheck
    , Bindings.Pixman.Generated.FunPtr.pixman_region_reset
    , Bindings.Pixman.Generated.FunPtr.pixman_region_clear
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_init
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_init_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_init_rects
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_init_with_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_init_from_image
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_fini
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_copy
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_intersect
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_union
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_intersect_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_union_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_subtract
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_inverse
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_contains_point
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_contains_rectangle
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_empty
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_not_empty
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_n_rects
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_rectangles
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_equal
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_selfcheck
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_reset
    , Bindings.Pixman.Generated.FunPtr.pixman_region32_clear
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_init
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_init_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_init_rectf
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_init_rects
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_init_with_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_init_from_image
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_fini
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_translate
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_translatef
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_copy
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_intersect
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_union
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_intersect_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_intersect_rectf
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_union_rect
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_union_rectf
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_subtract
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_inverse
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_contains_point
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_contains_pointf
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_contains_rectangle
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_empty
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_not_empty
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_n_rects
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_rectangles
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_equal
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_selfcheck
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_reset
    , Bindings.Pixman.Generated.FunPtr.pixman_region64f_clear
    , Bindings.Pixman.Generated.FunPtr.pixman_blt
    , Bindings.Pixman.Generated.FunPtr.pixman_fill
    , Bindings.Pixman.Generated.FunPtr.pixman_version
    , Bindings.Pixman.Generated.FunPtr.pixman_version_string
    , Bindings.Pixman.Generated.FunPtr.pixman_format_supported_destination
    , Bindings.Pixman.Generated.FunPtr.pixman_format_supported_source
    , Bindings.Pixman.Generated.FunPtr.pixman_image_create_solid_fill
    , Bindings.Pixman.Generated.FunPtr.pixman_image_create_linear_gradient
    , Bindings.Pixman.Generated.FunPtr.pixman_image_create_radial_gradient
    , Bindings.Pixman.Generated.FunPtr.pixman_image_create_conical_gradient
    , Bindings.Pixman.Generated.FunPtr.pixman_image_create_bits
    , Bindings.Pixman.Generated.FunPtr.pixman_image_create_bits_no_clear
    , Bindings.Pixman.Generated.FunPtr.pixman_image_ref
    , Bindings.Pixman.Generated.FunPtr.pixman_image_unref
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_destroy_function
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_destroy_data
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_clip_region
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_clip_region32
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_clip_region64f
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_has_client_clip
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_transform
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_repeat
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_dither
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_dither_offset
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_filter
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_source_clipping
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_alpha_map
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_component_alpha
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_component_alpha
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_accessors
    , Bindings.Pixman.Generated.FunPtr.pixman_image_set_indexed
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_data
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_width
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_height
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_stride
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_depth
    , Bindings.Pixman.Generated.FunPtr.pixman_image_get_format
    , Bindings.Pixman.Generated.FunPtr.pixman_filter_create_separable_convolution
    , Bindings.Pixman.Generated.FunPtr.pixman_image_fill_rectangles
    , Bindings.Pixman.Generated.FunPtr.pixman_image_fill_boxes
    , Bindings.Pixman.Generated.FunPtr.pixman_compute_composite_region
    , Bindings.Pixman.Generated.FunPtr.pixman_image_composite
    , Bindings.Pixman.Generated.FunPtr.pixman_image_composite32
    , Bindings.Pixman.Generated.FunPtr.pixman_image_composite64f
    , Bindings.Pixman.Generated.FunPtr.pixman_disable_out_of_bounds_workaround
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_create
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_destroy
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_freeze
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_thaw
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_lookup
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_insert
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_cache_remove
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_get_extents
    , Bindings.Pixman.Generated.FunPtr.pixman_glyph_get_mask_format
    , Bindings.Pixman.Generated.FunPtr.pixman_composite_glyphs
    , Bindings.Pixman.Generated.FunPtr.pixman_composite_glyphs_no_mask
    , Bindings.Pixman.Generated.FunPtr.pixman_sample_ceil_y
    , Bindings.Pixman.Generated.FunPtr.pixman_sample_floor_y
    , Bindings.Pixman.Generated.FunPtr.pixman_edge_step
    , Bindings.Pixman.Generated.FunPtr.pixman_edge_init
    , Bindings.Pixman.Generated.FunPtr.pixman_line_fixed_edge_init
    , Bindings.Pixman.Generated.FunPtr.pixman_rasterize_edges
    , Bindings.Pixman.Generated.FunPtr.pixman_add_traps
    , Bindings.Pixman.Generated.FunPtr.pixman_add_trapezoids
    , Bindings.Pixman.Generated.FunPtr.pixman_rasterize_trapezoid
    , Bindings.Pixman.Generated.FunPtr.pixman_composite_trapezoids
    , Bindings.Pixman.Generated.FunPtr.pixman_composite_triangles
    , Bindings.Pixman.Generated.FunPtr.pixman_add_triangles
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Pixman.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <pixman.h>"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_identity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_94b1d38b94e2ecac (void)) ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_init_identity;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_point_3d */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f81b20e0cb550595 (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_point_3d;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b3796a10824227c9 (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_point;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_multiply */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_471033db03c89e3b (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_multiply;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ef49443589c49bf4 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_scale;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f6b3482f63c07a8f (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_scale;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_rotate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ed5e6dac8a80964a (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_rotate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_rotate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_362d8bce7d2e1be9 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_rotate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7ae9d859df59f21d (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8d5ed8786331f4cc (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_bounds */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_fe7429c92b2d29ff (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_bounds;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_invert */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_56f4b8a65e6bd020 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_invert;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_identity */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c8fefa1d5b0c824e (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_identity;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_18e72c279d616b0e (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_scale;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_int_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5bdbc88e72dde90a (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_int_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_cccb9ba45c42c5dd (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_is_inverse;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_from_pixman_f_transform */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_41ae3fd6457cbbc6 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_from_pixman_f_transform;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_from_pixman_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_42b1357cc07c6640 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_from_pixman_transform;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_invert */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_fcd308176ca0f0d6 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_invert;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_0a303bf70beaaa5a (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_point;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_point_3d */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4b7977ac76767261 (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_point_3d;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_multiply */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3355826c35a230aa (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_multiply;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8502e0347e85e717 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_scale;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c1b9d5659be25154 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_scale;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_rotate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f438c95351cc5ac4 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_rotate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_rotate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_25d68519ae079297 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_rotate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7bf22fded343e539 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_afc38a187b8dfa53 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_bounds */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ec45ad571c87c5b6 (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_bounds;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_identity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68e889213e5874e5 (void)) ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_identity;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_set_static_pointers */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d26b3bf0e6a818ab (void)) ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_set_static_pointers;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_09173651f878bafa (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_init;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3e12e98aa693b0b5 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region_init_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_24511b27f48e8f85 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region_init_rects;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68e0b94e7dd8cc7e (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_init_with_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6b17ed5c53f231cf (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_init_from_image;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_aa7b290039036f66 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_fini;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_beb7b986dea7eb77 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b2747d06505e1b44 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_copy;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_0f63e40ee176743e (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_intersect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e1245df29fbb94e4 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_union;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f911ebb606f4c264 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return &pixman_region_union_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4aad439ac6102cc4 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return &pixman_region_intersect_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f45beca0a28c172a (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_subtract;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_bc534aa4d074a272 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_inverse;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_23403db7179771cc (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region_contains_point;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_32ab2b395f094391 (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_contains_rectangle;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_65720d8956170e97 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_empty;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_1866234146102ffc (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_not_empty;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_extents */"
  , "__attribute__ ((const))"
  , "pixman_box16_t *(*hs_bindgen_88bd2032290e86b2 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7dca60707723491e (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_n_rects;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box16_t *(*hs_bindgen_5e1bdc9023bafe9b (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_rectangles;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_7da6b3ab3466816d (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_equal;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_260523b0f13149b6 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_selfcheck;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1c856678f27f146a (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_reset;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ac3ab0a555a33847 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_clear;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_25b46a18078f87fa (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_init;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f0cfa0e3b0720b59 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region32_init_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d4583103aecbf75c (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_init_rects;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d9d43ff5ac0b3bb (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_init_with_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_535800273ee90a97 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_init_from_image;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a23f129f21c72621 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_fini;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6f6c200c7ecd2cf1 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_777258633b128357 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_copy;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_02aa5e45f142a9ae (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_intersect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_47ba9b67546087d9 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_union;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_410879a111760753 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return &pixman_region32_intersect_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9ed71f6305f835db (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return &pixman_region32_union_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_fda907ea6e1976e3 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_subtract;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a8bf3f2c1744b9b2 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_inverse;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f8749cc5ecda31f2 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region32_contains_point;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_36212da66e36ad34 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_contains_rectangle;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9443670e9b9b4f02 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_empty;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e2f1fa48fbc4cb3c (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_not_empty;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_extents */"
  , "__attribute__ ((const))"
  , "pixman_box32_t *(*hs_bindgen_ee22212108bbaa71 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2dd596010ebc003 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_n_rects;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box32_t *(*hs_bindgen_155be445b57a9df8 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_rectangles;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ef8f199a505ca635 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_equal;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_75ccbe536910ce88 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_selfcheck;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_af06135d44b16911 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_reset;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_68a6397b81908d86 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_clear;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1abe3d9f355d0b90 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_init;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_579398f98f121a83 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rectf */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d771e50b4c039de (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rectf;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b7921c5c8090c15d (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rects;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ae61a6fc53c0035f (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_with_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_056e329a08dfb0ee (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_from_image;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9a624ac173faac43 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_fini;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4bd83c26baf406c6 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_translate;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_translatef */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c720831c7451ba94 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_translatef;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_1adeb1a8800fb526 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_copy;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_7744679c9d338bfc (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_intersect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_0072f8554ddf93e8 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_union;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8a7b9d1d730918ac (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return &pixman_region64f_intersect_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rectf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_54a956166345dfeb (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5,"
  , "  double arg6"
  , ")"
  , "{"
  , "  return &pixman_region64f_intersect_rectf;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_52364a0d90b733ec (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  unsigned int arg5,"
  , "  unsigned int arg6"
  , ")"
  , "{"
  , "  return &pixman_region64f_union_rect;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union_rectf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a772de80cf8434d6 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5,"
  , "  double arg6"
  , ")"
  , "{"
  , "  return &pixman_region64f_union_rectf;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_46e5703fa2e5669f (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_subtract;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_243d1b4f9e911d71 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_inverse;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4547db634f6b4e6b (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_point;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_pointf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_bf33220cb5f00074 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_pointf;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_e8d9fadf3580e5d9 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_rectangle;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5f5a800ca537d100 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_empty;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_79c44026be12c8b9 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_not_empty;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_extents */"
  , "__attribute__ ((const))"
  , "pixman_box64f_t *(*hs_bindgen_9a2d518e279802b7 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b9c5f3c571f59e12 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_n_rects;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box64f_t *(*hs_bindgen_0d850b53bd3cb01a (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_rectangles;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3299593e0a2aa9e7 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_equal;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_2d6a0f8e1bc100c6 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_selfcheck;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d34acb051bebb624 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_reset;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f25fcabdafa1cb79 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_clear;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_blt */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_6617ebd1c56aaa58 (void)) ("
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
  , "  return &pixman_blt;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_fill */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_038bb181ecb8a0b4 (void)) ("
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
  , "  return &pixman_fill;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_version */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_413d248853445593 (void)) (void)"
  , "{"
  , "  return &pixman_version;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_2b32ebf25b574e04 (void)) (void)"
  , "{"
  , "  return &pixman_version_string;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_format_supported_destination */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_558512fba8bfdc84 (void)) ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return &pixman_format_supported_destination;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_format_supported_source */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ac6949e7ab167a70 (void)) ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return &pixman_format_supported_source;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_solid_fill */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_bbdd5f17f1e64cf7 (void)) ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_create_solid_fill;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_linear_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_8d90a14012ee71ef (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_create_linear_gradient;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_radial_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_dce51d8e3db83989 (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_gradient_stop_t const *arg5,"
  , "  signed int arg6"
  , ")"
  , "{"
  , "  return &pixman_image_create_radial_gradient;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_conical_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_6d665122296e032b (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_create_conical_gradient;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_bits */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_bbd6095849b35764 (void)) ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return &pixman_image_create_bits;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_bits_no_clear */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_81221fe15310be6e (void)) ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return &pixman_image_create_bits_no_clear;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_ref */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_f601206160f48e7b (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_ref;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_unref */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ab88a077c35c5961 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_unref;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_destroy_function */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_39fb8c84b0a6ff13 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_destroy_function;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_destroy_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_8e093af3c661fe69 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_destroy_data;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c8027a8aa4bb06e9 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region32 */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5208e1312c74acec (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region32;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region64f */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b1a47db5a178d5ba (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region64f;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_has_client_clip */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c86e102f2e7a6d45 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_has_client_clip;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_transform */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_51b341567d11cd41 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_transform;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_repeat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_24f8ab485d9766eb (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_repeat;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_dither */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e92fd9b96561f28 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_dither;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_dither_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a5d1f25d70790ec7 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_dither_offset;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_filter */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_38ea194d95ec151e (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_set_filter;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_source_clipping */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c61fcf81fff9d334 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_source_clipping;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_alpha_map */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0bbcca785e454324 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  return &pixman_image_set_alpha_map;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_component_alpha */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a75bbc7813dfebbe (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_component_alpha;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_component_alpha */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9a92cd1b859aaf68 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_component_alpha;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_accessors */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_59e039758f9f3be7 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_accessors;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_indexed */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fa71a943970e9d27 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_indexed;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_data */"
  , "__attribute__ ((const))"
  , "uint32_t *(*hs_bindgen_4167ba2b03d8bbf8 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_data;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_width */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31c81d190df5d1c5 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_width;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_height */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f82ce1ab24a70ad (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_height;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_stride */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_40de456738b35ddc (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_stride;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_depth */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f00c9827dc1281f0 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_depth;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_format */"
  , "__attribute__ ((const))"
  , "pixman_format_code_t (*hs_bindgen_624a5900936aa666 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_format;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_filter_create_separable_convolution */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t *(*hs_bindgen_09befa06bb2890e4 (void)) ("
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
  , "  return &pixman_filter_create_separable_convolution;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_fill_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_dd1c3322bedf538a (void)) ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_image_fill_rectangles;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_fill_boxes */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_449efad52ff46a5a (void)) ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_image_fill_boxes;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_compute_composite_region */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_916e106134b67ab0 (void)) ("
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
  , "  return &pixman_compute_composite_region;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9a9a552d9879e617 (void)) ("
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
  , "  return &pixman_image_composite;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite32 */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8f7d9269d59d34ef (void)) ("
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
  , "  return &pixman_image_composite32;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite64f */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1ce4667e9188d19d (void)) ("
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
  , "  return &pixman_image_composite64f;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_disable_out_of_bounds_workaround */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e295cffa600089c5 (void)) (void)"
  , "{"
  , "  return &pixman_disable_out_of_bounds_workaround;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_create */"
  , "__attribute__ ((const))"
  , "pixman_glyph_cache_t *(*hs_bindgen_4b624b9a15df3b33 (void)) (void)"
  , "{"
  , "  return &pixman_glyph_cache_create;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dbdbf23fe8c20de6 (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_destroy;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_freeze */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9f472a55b79d9cee (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_freeze;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_thaw */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4e5c8d34a917e9e8 (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_thaw;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_lookup */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_d125c38313ff8cc6 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_lookup;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_insert */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_b3b8c94dd2df879a (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3,"
  , "  signed int arg4,"
  , "  signed int arg5,"
  , "  pixman_image_t *arg6"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_insert;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_remove */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0c7ed7f44f5df4b1 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_remove;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_get_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_05cd12e658049fcf (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_glyph_get_extents;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_get_mask_format */"
  , "__attribute__ ((const))"
  , "pixman_format_code_t (*hs_bindgen_ebb5131a2415f6d6 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_get_mask_format;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_glyphs */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3dbd9e6917704c91 (void)) ("
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
  , "  return &pixman_composite_glyphs;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_glyphs_no_mask */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3cf7ed8d06944c1a (void)) ("
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
  , "  return &pixman_composite_glyphs_no_mask;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_sample_ceil_y */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t (*hs_bindgen_bfdb2df41a163497 (void)) ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_sample_ceil_y;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_sample_floor_y */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t (*hs_bindgen_f98eb3010e43c859 (void)) ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_sample_floor_y;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_edge_step */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8b4d54b8dc87572e (void)) ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_edge_step;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_edge_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8ccde2c19a4d8b13 (void)) ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5,"
  , "  pixman_fixed_t arg6,"
  , "  pixman_fixed_t arg7"
  , ")"
  , "{"
  , "  return &pixman_edge_init;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_line_fixed_edge_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_99f7daecdf6752e9 (void)) ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_line_fixed_t const *arg4,"
  , "  signed int arg5,"
  , "  signed int arg6"
  , ")"
  , "{"
  , "  return &pixman_line_fixed_edge_init;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_rasterize_edges */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_31dbf187f362514c (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  return &pixman_rasterize_edges;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_traps */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b90df7842b0e21c4 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_traps;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_trapezoids */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b2e1a481987a83ab (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_trapezoids;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_rasterize_trapezoid */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1acc24a031280c72 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_rasterize_trapezoid;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_trapezoids */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6f6d6ae1cd0c95a1 (void)) ("
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
  , "  return &pixman_composite_trapezoids;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_triangles */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_26f07b3fd9d9d91e (void)) ("
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
  , "  return &pixman_composite_triangles;"
  , "}"
  , "/* hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_triangles */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_26727bd1606365f9 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  signed int arg4,"
  , "  pixman_triangle_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_triangles;"
  , "}"
  ]))

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_94b1d38b94e2ecac" hs_bindgen_94b1d38b94e2ecac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_identity@
hs_bindgen_94b1d38b94e2ecac :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> IO ()))
hs_bindgen_94b1d38b94e2ecac =
  RIP.fromFFIType hs_bindgen_94b1d38b94e2ecac_base

{-# NOINLINE pixman_transform_init_identity #-}
{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> IO ())
pixman_transform_init_identity =
  RIP.unsafePerformIO hs_bindgen_94b1d38b94e2ecac

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_f81b20e0cb550595" hs_bindgen_f81b20e0cb550595_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_point_3d@
hs_bindgen_f81b20e0cb550595 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t))
hs_bindgen_f81b20e0cb550595 =
  RIP.fromFFIType hs_bindgen_f81b20e0cb550595_base

{-# NOINLINE pixman_transform_point_3d #-}
{-| __C declaration:__ @pixman_transform_point_3d@

    __defined at:__ @pixman.h 191:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point_3d :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t)
pixman_transform_point_3d =
  RIP.unsafePerformIO hs_bindgen_f81b20e0cb550595

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_point@
foreign import ccall unsafe "hs_bindgen_b3796a10824227c9" hs_bindgen_b3796a10824227c9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_point@
hs_bindgen_b3796a10824227c9 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t))
hs_bindgen_b3796a10824227c9 =
  RIP.fromFFIType hs_bindgen_b3796a10824227c9_base

{-# NOINLINE pixman_transform_point #-}
{-| __C declaration:__ @pixman_transform_point@

    __defined at:__ @pixman.h 195:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t)
pixman_transform_point =
  RIP.unsafePerformIO hs_bindgen_b3796a10824227c9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_multiply@
foreign import ccall unsafe "hs_bindgen_471033db03c89e3b" hs_bindgen_471033db03c89e3b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_multiply@
hs_bindgen_471033db03c89e3b :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_471033db03c89e3b =
  RIP.fromFFIType hs_bindgen_471033db03c89e3b_base

{-# NOINLINE pixman_transform_multiply #-}
{-| __C declaration:__ @pixman_transform_multiply@

    __defined at:__ @pixman.h 199:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_multiply :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_multiply =
  RIP.unsafePerformIO hs_bindgen_471033db03c89e3b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_ef49443589c49bf4" hs_bindgen_ef49443589c49bf4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_scale@
hs_bindgen_ef49443589c49bf4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_ef49443589c49bf4 =
  RIP.fromFFIType hs_bindgen_ef49443589c49bf4_base

{-# NOINLINE pixman_transform_init_scale #-}
{-| __C declaration:__ @pixman_transform_init_scale@

    __defined at:__ @pixman.h 204:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_scale :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_scale =
  RIP.unsafePerformIO hs_bindgen_ef49443589c49bf4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_scale@
foreign import ccall unsafe "hs_bindgen_f6b3482f63c07a8f" hs_bindgen_f6b3482f63c07a8f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_scale@
hs_bindgen_f6b3482f63c07a8f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_f6b3482f63c07a8f =
  RIP.fromFFIType hs_bindgen_f6b3482f63c07a8f_base

{-# NOINLINE pixman_transform_scale #-}
{-| __C declaration:__ @pixman_transform_scale@

    __defined at:__ @pixman.h 209:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_scale :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_scale =
  RIP.unsafePerformIO hs_bindgen_f6b3482f63c07a8f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_ed5e6dac8a80964a" hs_bindgen_ed5e6dac8a80964a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_rotate@
hs_bindgen_ed5e6dac8a80964a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_ed5e6dac8a80964a =
  RIP.fromFFIType hs_bindgen_ed5e6dac8a80964a_base

{-# NOINLINE pixman_transform_init_rotate #-}
{-| __C declaration:__ @pixman_transform_init_rotate@

    __defined at:__ @pixman.h 215:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_rotate =
  RIP.unsafePerformIO hs_bindgen_ed5e6dac8a80964a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_rotate@
foreign import ccall unsafe "hs_bindgen_362d8bce7d2e1be9" hs_bindgen_362d8bce7d2e1be9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_rotate@
hs_bindgen_362d8bce7d2e1be9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_362d8bce7d2e1be9 =
  RIP.fromFFIType hs_bindgen_362d8bce7d2e1be9_base

{-# NOINLINE pixman_transform_rotate #-}
{-| __C declaration:__ @pixman_transform_rotate@

    __defined at:__ @pixman.h 220:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_rotate =
  RIP.unsafePerformIO hs_bindgen_362d8bce7d2e1be9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_7ae9d859df59f21d" hs_bindgen_7ae9d859df59f21d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_init_translate@
hs_bindgen_7ae9d859df59f21d :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_7ae9d859df59f21d =
  RIP.fromFFIType hs_bindgen_7ae9d859df59f21d_base

{-# NOINLINE pixman_transform_init_translate #-}
{-| __C declaration:__ @pixman_transform_init_translate@

    __defined at:__ @pixman.h 226:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_translate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_translate =
  RIP.unsafePerformIO hs_bindgen_7ae9d859df59f21d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_translate@
foreign import ccall unsafe "hs_bindgen_8d5ed8786331f4cc" hs_bindgen_8d5ed8786331f4cc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_translate@
hs_bindgen_8d5ed8786331f4cc :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_8d5ed8786331f4cc =
  RIP.fromFFIType hs_bindgen_8d5ed8786331f4cc_base

{-# NOINLINE pixman_transform_translate #-}
{-| __C declaration:__ @pixman_transform_translate@

    __defined at:__ @pixman.h 231:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_translate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_translate =
  RIP.unsafePerformIO hs_bindgen_8d5ed8786331f4cc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_bounds@
foreign import ccall unsafe "hs_bindgen_fe7429c92b2d29ff" hs_bindgen_fe7429c92b2d29ff_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_bounds@
hs_bindgen_fe7429c92b2d29ff :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t))
hs_bindgen_fe7429c92b2d29ff =
  RIP.fromFFIType hs_bindgen_fe7429c92b2d29ff_base

{-# NOINLINE pixman_transform_bounds #-}
{-| __C declaration:__ @pixman_transform_bounds@

    __defined at:__ @pixman.h 237:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_bounds :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t)
pixman_transform_bounds =
  RIP.unsafePerformIO hs_bindgen_fe7429c92b2d29ff

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_invert@
foreign import ccall unsafe "hs_bindgen_56f4b8a65e6bd020" hs_bindgen_56f4b8a65e6bd020_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_invert@
hs_bindgen_56f4b8a65e6bd020 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_56f4b8a65e6bd020 =
  RIP.fromFFIType hs_bindgen_56f4b8a65e6bd020_base

{-# NOINLINE pixman_transform_invert #-}
{-| __C declaration:__ @pixman_transform_invert@

    __defined at:__ @pixman.h 241:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_invert :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_invert =
  RIP.unsafePerformIO hs_bindgen_56f4b8a65e6bd020

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_identity@
foreign import ccall unsafe "hs_bindgen_c8fefa1d5b0c824e" hs_bindgen_c8fefa1d5b0c824e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_identity@
hs_bindgen_c8fefa1d5b0c824e :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_c8fefa1d5b0c824e =
  RIP.fromFFIType hs_bindgen_c8fefa1d5b0c824e_base

{-# NOINLINE pixman_transform_is_identity #-}
{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_identity =
  RIP.unsafePerformIO hs_bindgen_c8fefa1d5b0c824e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_scale@
foreign import ccall unsafe "hs_bindgen_18e72c279d616b0e" hs_bindgen_18e72c279d616b0e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_scale@
hs_bindgen_18e72c279d616b0e :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_18e72c279d616b0e =
  RIP.fromFFIType hs_bindgen_18e72c279d616b0e_base

{-# NOINLINE pixman_transform_is_scale #-}
{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_scale =
  RIP.unsafePerformIO hs_bindgen_18e72c279d616b0e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_int_translate@
foreign import ccall unsafe "hs_bindgen_5bdbc88e72dde90a" hs_bindgen_5bdbc88e72dde90a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_int_translate@
hs_bindgen_5bdbc88e72dde90a :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_5bdbc88e72dde90a =
  RIP.fromFFIType hs_bindgen_5bdbc88e72dde90a_base

{-# NOINLINE pixman_transform_is_int_translate #-}
{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_int_translate =
  RIP.unsafePerformIO hs_bindgen_5bdbc88e72dde90a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_inverse@
foreign import ccall unsafe "hs_bindgen_cccb9ba45c42c5dd" hs_bindgen_cccb9ba45c42c5dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_is_inverse@
hs_bindgen_cccb9ba45c42c5dd :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_cccb9ba45c42c5dd =
  RIP.fromFFIType hs_bindgen_cccb9ba45c42c5dd_base

{-# NOINLINE pixman_transform_is_inverse #-}
{-| __C declaration:__ @pixman_transform_is_inverse@

    __defined at:__ @pixman.h 254:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_inverse :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_inverse =
  RIP.unsafePerformIO hs_bindgen_cccb9ba45c42c5dd

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_from_pixman_f_transform@
foreign import ccall unsafe "hs_bindgen_41ae3fd6457cbbc6" hs_bindgen_41ae3fd6457cbbc6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_transform_from_pixman_f_transform@
hs_bindgen_41ae3fd6457cbbc6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t))
hs_bindgen_41ae3fd6457cbbc6 =
  RIP.fromFFIType hs_bindgen_41ae3fd6457cbbc6_base

{-# NOINLINE pixman_transform_from_pixman_f_transform #-}
{-| __C declaration:__ @pixman_transform_from_pixman_f_transform@

    __defined at:__ @pixman.h 275:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_from_pixman_f_transform :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t)
pixman_transform_from_pixman_f_transform =
  RIP.unsafePerformIO hs_bindgen_41ae3fd6457cbbc6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_from_pixman_transform@
foreign import ccall unsafe "hs_bindgen_42b1357cc07c6640" hs_bindgen_42b1357cc07c6640_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_from_pixman_transform@
hs_bindgen_42b1357cc07c6640 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO ()))
hs_bindgen_42b1357cc07c6640 =
  RIP.fromFFIType hs_bindgen_42b1357cc07c6640_base

{-# NOINLINE pixman_f_transform_from_pixman_transform #-}
{-| __C declaration:__ @pixman_f_transform_from_pixman_transform@

    __defined at:__ @pixman.h 279:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_from_pixman_transform :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO ())
pixman_f_transform_from_pixman_transform =
  RIP.unsafePerformIO hs_bindgen_42b1357cc07c6640

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_invert@
foreign import ccall unsafe "hs_bindgen_fcd308176ca0f0d6" hs_bindgen_fcd308176ca0f0d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_invert@
hs_bindgen_fcd308176ca0f0d6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t))
hs_bindgen_fcd308176ca0f0d6 =
  RIP.fromFFIType hs_bindgen_fcd308176ca0f0d6_base

{-# NOINLINE pixman_f_transform_invert #-}
{-| __C declaration:__ @pixman_f_transform_invert@

    __defined at:__ @pixman.h 283:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_invert :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t)
pixman_f_transform_invert =
  RIP.unsafePerformIO hs_bindgen_fcd308176ca0f0d6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_point@
foreign import ccall unsafe "hs_bindgen_0a303bf70beaaa5a" hs_bindgen_0a303bf70beaaa5a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_point@
hs_bindgen_0a303bf70beaaa5a :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO Pixman_bool_t))
hs_bindgen_0a303bf70beaaa5a =
  RIP.fromFFIType hs_bindgen_0a303bf70beaaa5a_base

{-# NOINLINE pixman_f_transform_point #-}
{-| __C declaration:__ @pixman_f_transform_point@

    __defined at:__ @pixman.h 287:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO Pixman_bool_t)
pixman_f_transform_point =
  RIP.unsafePerformIO hs_bindgen_0a303bf70beaaa5a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_4b7977ac76767261" hs_bindgen_4b7977ac76767261_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_point_3d@
hs_bindgen_4b7977ac76767261 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO ()))
hs_bindgen_4b7977ac76767261 =
  RIP.fromFFIType hs_bindgen_4b7977ac76767261_base

{-# NOINLINE pixman_f_transform_point_3d #-}
{-| __C declaration:__ @pixman_f_transform_point_3d@

    __defined at:__ @pixman.h 291:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point_3d :: RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO ())
pixman_f_transform_point_3d =
  RIP.unsafePerformIO hs_bindgen_4b7977ac76767261

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_multiply@
foreign import ccall unsafe "hs_bindgen_3355826c35a230aa" hs_bindgen_3355826c35a230aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_multiply@
hs_bindgen_3355826c35a230aa :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO ()))
hs_bindgen_3355826c35a230aa =
  RIP.fromFFIType hs_bindgen_3355826c35a230aa_base

{-# NOINLINE pixman_f_transform_multiply #-}
{-| __C declaration:__ @pixman_f_transform_multiply@

    __defined at:__ @pixman.h 295:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_multiply :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO ())
pixman_f_transform_multiply =
  RIP.unsafePerformIO hs_bindgen_3355826c35a230aa

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_8502e0347e85e717" hs_bindgen_8502e0347e85e717_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_scale@
hs_bindgen_8502e0347e85e717 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_8502e0347e85e717 =
  RIP.fromFFIType hs_bindgen_8502e0347e85e717_base

{-# NOINLINE pixman_f_transform_init_scale #-}
{-| __C declaration:__ @pixman_f_transform_init_scale@

    __defined at:__ @pixman.h 300:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_scale :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_scale =
  RIP.unsafePerformIO hs_bindgen_8502e0347e85e717

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_scale@
foreign import ccall unsafe "hs_bindgen_c1b9d5659be25154" hs_bindgen_c1b9d5659be25154_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_scale@
hs_bindgen_c1b9d5659be25154 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_c1b9d5659be25154 =
  RIP.fromFFIType hs_bindgen_c1b9d5659be25154_base

{-# NOINLINE pixman_f_transform_scale #-}
{-| __C declaration:__ @pixman_f_transform_scale@

    __defined at:__ @pixman.h 305:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_scale :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_scale =
  RIP.unsafePerformIO hs_bindgen_c1b9d5659be25154

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_f438c95351cc5ac4" hs_bindgen_f438c95351cc5ac4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_rotate@
hs_bindgen_f438c95351cc5ac4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_f438c95351cc5ac4 =
  RIP.fromFFIType hs_bindgen_f438c95351cc5ac4_base

{-# NOINLINE pixman_f_transform_init_rotate #-}
{-| __C declaration:__ @pixman_f_transform_init_rotate@

    __defined at:__ @pixman.h 311:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_rotate =
  RIP.unsafePerformIO hs_bindgen_f438c95351cc5ac4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_rotate@
foreign import ccall unsafe "hs_bindgen_25d68519ae079297" hs_bindgen_25d68519ae079297_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_rotate@
hs_bindgen_25d68519ae079297 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_25d68519ae079297 =
  RIP.fromFFIType hs_bindgen_25d68519ae079297_base

{-# NOINLINE pixman_f_transform_rotate #-}
{-| __C declaration:__ @pixman_f_transform_rotate@

    __defined at:__ @pixman.h 316:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_rotate =
  RIP.unsafePerformIO hs_bindgen_25d68519ae079297

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_7bf22fded343e539" hs_bindgen_7bf22fded343e539_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_translate@
hs_bindgen_7bf22fded343e539 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_7bf22fded343e539 =
  RIP.fromFFIType hs_bindgen_7bf22fded343e539_base

{-# NOINLINE pixman_f_transform_init_translate #-}
{-| __C declaration:__ @pixman_f_transform_init_translate@

    __defined at:__ @pixman.h 322:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_translate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_translate =
  RIP.unsafePerformIO hs_bindgen_7bf22fded343e539

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_translate@
foreign import ccall unsafe "hs_bindgen_afc38a187b8dfa53" hs_bindgen_afc38a187b8dfa53_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_translate@
hs_bindgen_afc38a187b8dfa53 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_afc38a187b8dfa53 =
  RIP.fromFFIType hs_bindgen_afc38a187b8dfa53_base

{-# NOINLINE pixman_f_transform_translate #-}
{-| __C declaration:__ @pixman_f_transform_translate@

    __defined at:__ @pixman.h 327:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_translate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_translate =
  RIP.unsafePerformIO hs_bindgen_afc38a187b8dfa53

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_bounds@
foreign import ccall unsafe "hs_bindgen_ec45ad571c87c5b6" hs_bindgen_ec45ad571c87c5b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_bounds@
hs_bindgen_ec45ad571c87c5b6 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t))
hs_bindgen_ec45ad571c87c5b6 =
  RIP.fromFFIType hs_bindgen_ec45ad571c87c5b6_base

{-# NOINLINE pixman_f_transform_bounds #-}
{-| __C declaration:__ @pixman_f_transform_bounds@

    __defined at:__ @pixman.h 333:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_bounds :: RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t)
pixman_f_transform_bounds =
  RIP.unsafePerformIO hs_bindgen_ec45ad571c87c5b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_68e889213e5874e5" hs_bindgen_68e889213e5874e5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_f_transform_init_identity@
hs_bindgen_68e889213e5874e5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> IO ()))
hs_bindgen_68e889213e5874e5 =
  RIP.fromFFIType hs_bindgen_68e889213e5874e5_base

{-# NOINLINE pixman_f_transform_init_identity #-}
{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> IO ())
pixman_f_transform_init_identity =
  RIP.unsafePerformIO hs_bindgen_68e889213e5874e5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_set_static_pointers@
foreign import ccall unsafe "hs_bindgen_d26b3bf0e6a818ab" hs_bindgen_d26b3bf0e6a818ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_set_static_pointers@
hs_bindgen_d26b3bf0e6a818ab :: IO (RIP.FunPtr ((RIP.Ptr Pixman_box16_t) -> (RIP.Ptr Pixman_region16_data_t) -> (RIP.Ptr Pixman_region16_data_t) -> IO ()))
hs_bindgen_d26b3bf0e6a818ab =
  RIP.fromFFIType hs_bindgen_d26b3bf0e6a818ab_base

{-# NOINLINE pixman_region_set_static_pointers #-}
{-| __C declaration:__ @pixman_region_set_static_pointers@

    __defined at:__ @pixman.h 496:6@

    __exported by:__ @pixman.h@
-}
pixman_region_set_static_pointers :: RIP.FunPtr ((RIP.Ptr Pixman_box16_t) -> (RIP.Ptr Pixman_region16_data_t) -> (RIP.Ptr Pixman_region16_data_t) -> IO ())
pixman_region_set_static_pointers =
  RIP.unsafePerformIO hs_bindgen_d26b3bf0e6a818ab

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init@
foreign import ccall unsafe "hs_bindgen_09173651f878bafa" hs_bindgen_09173651f878bafa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init@
hs_bindgen_09173651f878bafa :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ()))
hs_bindgen_09173651f878bafa =
  RIP.fromFFIType hs_bindgen_09173651f878bafa_base

{-# NOINLINE pixman_region_init #-}
{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ())
pixman_region_init =
  RIP.unsafePerformIO hs_bindgen_09173651f878bafa

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_rect@
foreign import ccall unsafe "hs_bindgen_3e12e98aa693b0b5" hs_bindgen_3e12e98aa693b0b5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_rect@
hs_bindgen_3e12e98aa693b0b5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_3e12e98aa693b0b5 =
  RIP.fromFFIType hs_bindgen_3e12e98aa693b0b5_base

{-# NOINLINE pixman_region_init_rect #-}
{-| __C declaration:__ @pixman_region_init_rect@

    __defined at:__ @pixman.h 505:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region_init_rect =
  RIP.unsafePerformIO hs_bindgen_3e12e98aa693b0b5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_rects@
foreign import ccall unsafe "hs_bindgen_24511b27f48e8f85" hs_bindgen_24511b27f48e8f85_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_rects@
hs_bindgen_24511b27f48e8f85 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_24511b27f48e8f85 =
  RIP.fromFFIType hs_bindgen_24511b27f48e8f85_base

{-# NOINLINE pixman_region_init_rects #-}
{-| __C declaration:__ @pixman_region_init_rects@

    __defined at:__ @pixman.h 512:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rects :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_region_init_rects =
  RIP.unsafePerformIO hs_bindgen_24511b27f48e8f85

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_with_extents@
foreign import ccall unsafe "hs_bindgen_68e0b94e7dd8cc7e" hs_bindgen_68e0b94e7dd8cc7e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_with_extents@
hs_bindgen_68e0b94e7dd8cc7e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ()))
hs_bindgen_68e0b94e7dd8cc7e =
  RIP.fromFFIType hs_bindgen_68e0b94e7dd8cc7e_base

{-# NOINLINE pixman_region_init_with_extents #-}
{-| __C declaration:__ @pixman_region_init_with_extents@

    __defined at:__ @pixman.h 517:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_with_extents :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ())
pixman_region_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_68e0b94e7dd8cc7e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_from_image@
foreign import ccall unsafe "hs_bindgen_6b17ed5c53f231cf" hs_bindgen_6b17ed5c53f231cf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_init_from_image@
hs_bindgen_6b17ed5c53f231cf :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> IO ()))
hs_bindgen_6b17ed5c53f231cf =
  RIP.fromFFIType hs_bindgen_6b17ed5c53f231cf_base

{-# NOINLINE pixman_region_init_from_image #-}
{-| __C declaration:__ @pixman_region_init_from_image@

    __defined at:__ @pixman.h 521:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_from_image :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> IO ())
pixman_region_init_from_image =
  RIP.unsafePerformIO hs_bindgen_6b17ed5c53f231cf

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_fini@
foreign import ccall unsafe "hs_bindgen_aa7b290039036f66" hs_bindgen_aa7b290039036f66_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_fini@
hs_bindgen_aa7b290039036f66 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ()))
hs_bindgen_aa7b290039036f66 =
  RIP.fromFFIType hs_bindgen_aa7b290039036f66_base

{-# NOINLINE pixman_region_fini #-}
{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ())
pixman_region_fini =
  RIP.unsafePerformIO hs_bindgen_aa7b290039036f66

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_translate@
foreign import ccall unsafe "hs_bindgen_beb7b986dea7eb77" hs_bindgen_beb7b986dea7eb77_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_translate@
hs_bindgen_beb7b986dea7eb77 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_beb7b986dea7eb77 =
  RIP.fromFFIType hs_bindgen_beb7b986dea7eb77_base

{-# NOINLINE pixman_region_translate #-}
{-| __C declaration:__ @pixman_region_translate@

    __defined at:__ @pixman.h 530:25@

    __exported by:__ @pixman.h@
-}
pixman_region_translate :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region_translate =
  RIP.unsafePerformIO hs_bindgen_beb7b986dea7eb77

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_copy@
foreign import ccall unsafe "hs_bindgen_b2747d06505e1b44" hs_bindgen_b2747d06505e1b44_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_copy@
hs_bindgen_b2747d06505e1b44 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_b2747d06505e1b44 =
  RIP.fromFFIType hs_bindgen_b2747d06505e1b44_base

{-# NOINLINE pixman_region_copy #-}
{-| __C declaration:__ @pixman_region_copy@

    __defined at:__ @pixman.h 535:25@

    __exported by:__ @pixman.h@
-}
pixman_region_copy :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_copy =
  RIP.unsafePerformIO hs_bindgen_b2747d06505e1b44

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_intersect@
foreign import ccall unsafe "hs_bindgen_0f63e40ee176743e" hs_bindgen_0f63e40ee176743e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_intersect@
hs_bindgen_0f63e40ee176743e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_0f63e40ee176743e =
  RIP.fromFFIType hs_bindgen_0f63e40ee176743e_base

{-# NOINLINE pixman_region_intersect #-}
{-| __C declaration:__ @pixman_region_intersect@

    __defined at:__ @pixman.h 539:25@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_intersect =
  RIP.unsafePerformIO hs_bindgen_0f63e40ee176743e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_union@
foreign import ccall unsafe "hs_bindgen_e1245df29fbb94e4" hs_bindgen_e1245df29fbb94e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_union@
hs_bindgen_e1245df29fbb94e4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_e1245df29fbb94e4 =
  RIP.fromFFIType hs_bindgen_e1245df29fbb94e4_base

{-# NOINLINE pixman_region_union #-}
{-| __C declaration:__ @pixman_region_union@

    __defined at:__ @pixman.h 544:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_union =
  RIP.unsafePerformIO hs_bindgen_e1245df29fbb94e4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_union_rect@
foreign import ccall unsafe "hs_bindgen_f911ebb606f4c264" hs_bindgen_f911ebb606f4c264_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_union_rect@
hs_bindgen_f911ebb606f4c264 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_f911ebb606f4c264 =
  RIP.fromFFIType hs_bindgen_f911ebb606f4c264_base

{-# NOINLINE pixman_region_union_rect #-}
{-| __C declaration:__ @pixman_region_union_rect@

    __defined at:__ @pixman.h 549:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region_union_rect =
  RIP.unsafePerformIO hs_bindgen_f911ebb606f4c264

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_intersect_rect@
foreign import ccall unsafe "hs_bindgen_4aad439ac6102cc4" hs_bindgen_4aad439ac6102cc4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_intersect_rect@
hs_bindgen_4aad439ac6102cc4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_4aad439ac6102cc4 =
  RIP.fromFFIType hs_bindgen_4aad439ac6102cc4_base

{-# NOINLINE pixman_region_intersect_rect #-}
{-| __C declaration:__ @pixman_region_intersect_rect@

    __defined at:__ @pixman.h 557:16@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_4aad439ac6102cc4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_subtract@
foreign import ccall unsafe "hs_bindgen_f45beca0a28c172a" hs_bindgen_f45beca0a28c172a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_subtract@
hs_bindgen_f45beca0a28c172a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_f45beca0a28c172a =
  RIP.fromFFIType hs_bindgen_f45beca0a28c172a_base

{-# NOINLINE pixman_region_subtract #-}
{-| __C declaration:__ @pixman_region_subtract@

    __defined at:__ @pixman.h 565:25@

    __exported by:__ @pixman.h@
-}
pixman_region_subtract :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_subtract =
  RIP.unsafePerformIO hs_bindgen_f45beca0a28c172a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_inverse@
foreign import ccall unsafe "hs_bindgen_bc534aa4d074a272" hs_bindgen_bc534aa4d074a272_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_inverse@
hs_bindgen_bc534aa4d074a272 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_bool_t))
hs_bindgen_bc534aa4d074a272 =
  RIP.fromFFIType hs_bindgen_bc534aa4d074a272_base

{-# NOINLINE pixman_region_inverse #-}
{-| __C declaration:__ @pixman_region_inverse@

    __defined at:__ @pixman.h 570:25@

    __exported by:__ @pixman.h@
-}
pixman_region_inverse :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_bool_t)
pixman_region_inverse =
  RIP.unsafePerformIO hs_bindgen_bc534aa4d074a272

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_contains_point@
foreign import ccall unsafe "hs_bindgen_23403db7179771cc" hs_bindgen_23403db7179771cc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_contains_point@
hs_bindgen_23403db7179771cc :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box16_t) -> IO Pixman_bool_t))
hs_bindgen_23403db7179771cc =
  RIP.fromFFIType hs_bindgen_23403db7179771cc_base

{-# NOINLINE pixman_region_contains_point #-}
{-| __C declaration:__ @pixman_region_contains_point@

    __defined at:__ @pixman.h 575:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box16_t) -> IO Pixman_bool_t)
pixman_region_contains_point =
  RIP.unsafePerformIO hs_bindgen_23403db7179771cc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_32ab2b395f094391" hs_bindgen_32ab2b395f094391_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_contains_rectangle@
hs_bindgen_32ab2b395f094391 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_region_overlap_t))
hs_bindgen_32ab2b395f094391 =
  RIP.fromFFIType hs_bindgen_32ab2b395f094391_base

{-# NOINLINE pixman_region_contains_rectangle #-}
{-| __C declaration:__ @pixman_region_contains_rectangle@

    __defined at:__ @pixman.h 581:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_rectangle :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_region_overlap_t)
pixman_region_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_32ab2b395f094391

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_empty@
foreign import ccall unsafe "hs_bindgen_65720d8956170e97" hs_bindgen_65720d8956170e97_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_empty@
hs_bindgen_65720d8956170e97 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_65720d8956170e97 =
  RIP.fromFFIType hs_bindgen_65720d8956170e97_base

{-# NOINLINE pixman_region_empty #-}
{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_empty =
  RIP.unsafePerformIO hs_bindgen_65720d8956170e97

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_not_empty@
foreign import ccall unsafe "hs_bindgen_1866234146102ffc" hs_bindgen_1866234146102ffc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_not_empty@
hs_bindgen_1866234146102ffc :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_1866234146102ffc =
  RIP.fromFFIType hs_bindgen_1866234146102ffc_base

{-# NOINLINE pixman_region_not_empty #-}
{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_not_empty =
  RIP.unsafePerformIO hs_bindgen_1866234146102ffc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_extents@
foreign import ccall unsafe "hs_bindgen_88bd2032290e86b2" hs_bindgen_88bd2032290e86b2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_extents@
hs_bindgen_88bd2032290e86b2 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO (RIP.Ptr Pixman_box16_t)))
hs_bindgen_88bd2032290e86b2 =
  RIP.fromFFIType hs_bindgen_88bd2032290e86b2_base

{-# NOINLINE pixman_region_extents #-}
{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO (RIP.Ptr Pixman_box16_t))
pixman_region_extents =
  RIP.unsafePerformIO hs_bindgen_88bd2032290e86b2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_n_rects@
foreign import ccall unsafe "hs_bindgen_7dca60707723491e" hs_bindgen_7dca60707723491e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_n_rects@
hs_bindgen_7dca60707723491e :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO RIP.CInt))
hs_bindgen_7dca60707723491e =
  RIP.fromFFIType hs_bindgen_7dca60707723491e_base

{-# NOINLINE pixman_region_n_rects #-}
{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO RIP.CInt)
pixman_region_n_rects =
  RIP.unsafePerformIO hs_bindgen_7dca60707723491e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_rectangles@
foreign import ccall unsafe "hs_bindgen_5e1bdc9023bafe9b" hs_bindgen_5e1bdc9023bafe9b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_rectangles@
hs_bindgen_5e1bdc9023bafe9b :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box16_t)))
hs_bindgen_5e1bdc9023bafe9b =
  RIP.fromFFIType hs_bindgen_5e1bdc9023bafe9b_base

{-# NOINLINE pixman_region_rectangles #-}
{-| __C declaration:__ @pixman_region_rectangles@

    __defined at:__ @pixman.h 597:25@

    __exported by:__ @pixman.h@
-}
pixman_region_rectangles :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box16_t))
pixman_region_rectangles =
  RIP.unsafePerformIO hs_bindgen_5e1bdc9023bafe9b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_equal@
foreign import ccall unsafe "hs_bindgen_7da6b3ab3466816d" hs_bindgen_7da6b3ab3466816d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_equal@
hs_bindgen_7da6b3ab3466816d :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_7da6b3ab3466816d =
  RIP.fromFFIType hs_bindgen_7da6b3ab3466816d_base

{-# NOINLINE pixman_region_equal #-}
{-| __C declaration:__ @pixman_region_equal@

    __defined at:__ @pixman.h 601:25@

    __exported by:__ @pixman.h@
-}
pixman_region_equal :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_equal =
  RIP.unsafePerformIO hs_bindgen_7da6b3ab3466816d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_selfcheck@
foreign import ccall unsafe "hs_bindgen_260523b0f13149b6" hs_bindgen_260523b0f13149b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_selfcheck@
hs_bindgen_260523b0f13149b6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_260523b0f13149b6 =
  RIP.fromFFIType hs_bindgen_260523b0f13149b6_base

{-# NOINLINE pixman_region_selfcheck #-}
{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_selfcheck =
  RIP.unsafePerformIO hs_bindgen_260523b0f13149b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_reset@
foreign import ccall unsafe "hs_bindgen_1c856678f27f146a" hs_bindgen_1c856678f27f146a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_reset@
hs_bindgen_1c856678f27f146a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ()))
hs_bindgen_1c856678f27f146a =
  RIP.fromFFIType hs_bindgen_1c856678f27f146a_base

{-# NOINLINE pixman_region_reset #-}
{-| __C declaration:__ @pixman_region_reset@

    __defined at:__ @pixman.h 608:25@

    __exported by:__ @pixman.h@
-}
pixman_region_reset :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ())
pixman_region_reset =
  RIP.unsafePerformIO hs_bindgen_1c856678f27f146a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_clear@
foreign import ccall unsafe "hs_bindgen_ac3ab0a555a33847" hs_bindgen_ac3ab0a555a33847_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region_clear@
hs_bindgen_ac3ab0a555a33847 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ()))
hs_bindgen_ac3ab0a555a33847 =
  RIP.fromFFIType hs_bindgen_ac3ab0a555a33847_base

{-# NOINLINE pixman_region_clear #-}
{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ())
pixman_region_clear =
  RIP.unsafePerformIO hs_bindgen_ac3ab0a555a33847

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init@
foreign import ccall unsafe "hs_bindgen_25b46a18078f87fa" hs_bindgen_25b46a18078f87fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init@
hs_bindgen_25b46a18078f87fa :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ()))
hs_bindgen_25b46a18078f87fa =
  RIP.fromFFIType hs_bindgen_25b46a18078f87fa_base

{-# NOINLINE pixman_region32_init #-}
{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ())
pixman_region32_init =
  RIP.unsafePerformIO hs_bindgen_25b46a18078f87fa

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_rect@
foreign import ccall unsafe "hs_bindgen_f0cfa0e3b0720b59" hs_bindgen_f0cfa0e3b0720b59_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_rect@
hs_bindgen_f0cfa0e3b0720b59 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_f0cfa0e3b0720b59 =
  RIP.fromFFIType hs_bindgen_f0cfa0e3b0720b59_base

{-# NOINLINE pixman_region32_init_rect #-}
{-| __C declaration:__ @pixman_region32_init_rect@

    __defined at:__ @pixman.h 649:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region32_init_rect =
  RIP.unsafePerformIO hs_bindgen_f0cfa0e3b0720b59

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_rects@
foreign import ccall unsafe "hs_bindgen_d4583103aecbf75c" hs_bindgen_d4583103aecbf75c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_rects@
hs_bindgen_d4583103aecbf75c :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_d4583103aecbf75c =
  RIP.fromFFIType hs_bindgen_d4583103aecbf75c_base

{-# NOINLINE pixman_region32_init_rects #-}
{-| __C declaration:__ @pixman_region32_init_rects@

    __defined at:__ @pixman.h 656:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rects :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_region32_init_rects =
  RIP.unsafePerformIO hs_bindgen_d4583103aecbf75c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_with_extents@
foreign import ccall unsafe "hs_bindgen_4d9d43ff5ac0b3bb" hs_bindgen_4d9d43ff5ac0b3bb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_with_extents@
hs_bindgen_4d9d43ff5ac0b3bb :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ()))
hs_bindgen_4d9d43ff5ac0b3bb =
  RIP.fromFFIType hs_bindgen_4d9d43ff5ac0b3bb_base

{-# NOINLINE pixman_region32_init_with_extents #-}
{-| __C declaration:__ @pixman_region32_init_with_extents@

    __defined at:__ @pixman.h 661:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_with_extents :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ())
pixman_region32_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_4d9d43ff5ac0b3bb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_from_image@
foreign import ccall unsafe "hs_bindgen_535800273ee90a97" hs_bindgen_535800273ee90a97_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_init_from_image@
hs_bindgen_535800273ee90a97 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (RIP.Ptr Pixman_image_t) -> IO ()))
hs_bindgen_535800273ee90a97 =
  RIP.fromFFIType hs_bindgen_535800273ee90a97_base

{-# NOINLINE pixman_region32_init_from_image #-}
{-| __C declaration:__ @pixman_region32_init_from_image@

    __defined at:__ @pixman.h 665:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_from_image :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (RIP.Ptr Pixman_image_t) -> IO ())
pixman_region32_init_from_image =
  RIP.unsafePerformIO hs_bindgen_535800273ee90a97

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_fini@
foreign import ccall unsafe "hs_bindgen_a23f129f21c72621" hs_bindgen_a23f129f21c72621_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_fini@
hs_bindgen_a23f129f21c72621 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ()))
hs_bindgen_a23f129f21c72621 =
  RIP.fromFFIType hs_bindgen_a23f129f21c72621_base

{-# NOINLINE pixman_region32_fini #-}
{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ())
pixman_region32_fini =
  RIP.unsafePerformIO hs_bindgen_a23f129f21c72621

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_translate@
foreign import ccall unsafe "hs_bindgen_6f6c200c7ecd2cf1" hs_bindgen_6f6c200c7ecd2cf1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_translate@
hs_bindgen_6f6c200c7ecd2cf1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_6f6c200c7ecd2cf1 =
  RIP.fromFFIType hs_bindgen_6f6c200c7ecd2cf1_base

{-# NOINLINE pixman_region32_translate #-}
{-| __C declaration:__ @pixman_region32_translate@

    __defined at:__ @pixman.h 674:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_translate :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region32_translate =
  RIP.unsafePerformIO hs_bindgen_6f6c200c7ecd2cf1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_copy@
foreign import ccall unsafe "hs_bindgen_777258633b128357" hs_bindgen_777258633b128357_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_copy@
hs_bindgen_777258633b128357 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_777258633b128357 =
  RIP.fromFFIType hs_bindgen_777258633b128357_base

{-# NOINLINE pixman_region32_copy #-}
{-| __C declaration:__ @pixman_region32_copy@

    __defined at:__ @pixman.h 679:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_copy :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_copy =
  RIP.unsafePerformIO hs_bindgen_777258633b128357

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_intersect@
foreign import ccall unsafe "hs_bindgen_02aa5e45f142a9ae" hs_bindgen_02aa5e45f142a9ae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_intersect@
hs_bindgen_02aa5e45f142a9ae :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_02aa5e45f142a9ae =
  RIP.fromFFIType hs_bindgen_02aa5e45f142a9ae_base

{-# NOINLINE pixman_region32_intersect #-}
{-| __C declaration:__ @pixman_region32_intersect@

    __defined at:__ @pixman.h 683:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_intersect =
  RIP.unsafePerformIO hs_bindgen_02aa5e45f142a9ae

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_union@
foreign import ccall unsafe "hs_bindgen_47ba9b67546087d9" hs_bindgen_47ba9b67546087d9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_union@
hs_bindgen_47ba9b67546087d9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_47ba9b67546087d9 =
  RIP.fromFFIType hs_bindgen_47ba9b67546087d9_base

{-# NOINLINE pixman_region32_union #-}
{-| __C declaration:__ @pixman_region32_union@

    __defined at:__ @pixman.h 688:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_union =
  RIP.unsafePerformIO hs_bindgen_47ba9b67546087d9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_intersect_rect@
foreign import ccall unsafe "hs_bindgen_410879a111760753" hs_bindgen_410879a111760753_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_intersect_rect@
hs_bindgen_410879a111760753 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_410879a111760753 =
  RIP.fromFFIType hs_bindgen_410879a111760753_base

{-# NOINLINE pixman_region32_intersect_rect #-}
{-| __C declaration:__ @pixman_region32_intersect_rect@

    __defined at:__ @pixman.h 693:16@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region32_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_410879a111760753

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_union_rect@
foreign import ccall unsafe "hs_bindgen_9ed71f6305f835db" hs_bindgen_9ed71f6305f835db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_union_rect@
hs_bindgen_9ed71f6305f835db :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_9ed71f6305f835db =
  RIP.fromFFIType hs_bindgen_9ed71f6305f835db_base

{-# NOINLINE pixman_region32_union_rect #-}
{-| __C declaration:__ @pixman_region32_union_rect@

    __defined at:__ @pixman.h 701:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region32_union_rect =
  RIP.unsafePerformIO hs_bindgen_9ed71f6305f835db

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_subtract@
foreign import ccall unsafe "hs_bindgen_fda907ea6e1976e3" hs_bindgen_fda907ea6e1976e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_subtract@
hs_bindgen_fda907ea6e1976e3 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_fda907ea6e1976e3 =
  RIP.fromFFIType hs_bindgen_fda907ea6e1976e3_base

{-# NOINLINE pixman_region32_subtract #-}
{-| __C declaration:__ @pixman_region32_subtract@

    __defined at:__ @pixman.h 709:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_subtract :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_subtract =
  RIP.unsafePerformIO hs_bindgen_fda907ea6e1976e3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_inverse@
foreign import ccall unsafe "hs_bindgen_a8bf3f2c1744b9b2" hs_bindgen_a8bf3f2c1744b9b2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_inverse@
hs_bindgen_a8bf3f2c1744b9b2 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t))
hs_bindgen_a8bf3f2c1744b9b2 =
  RIP.fromFFIType hs_bindgen_a8bf3f2c1744b9b2_base

{-# NOINLINE pixman_region32_inverse #-}
{-| __C declaration:__ @pixman_region32_inverse@

    __defined at:__ @pixman.h 714:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_inverse :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t)
pixman_region32_inverse =
  RIP.unsafePerformIO hs_bindgen_a8bf3f2c1744b9b2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_contains_point@
foreign import ccall unsafe "hs_bindgen_f8749cc5ecda31f2" hs_bindgen_f8749cc5ecda31f2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_contains_point@
hs_bindgen_f8749cc5ecda31f2 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box32_t) -> IO Pixman_bool_t))
hs_bindgen_f8749cc5ecda31f2 =
  RIP.fromFFIType hs_bindgen_f8749cc5ecda31f2_base

{-# NOINLINE pixman_region32_contains_point #-}
{-| __C declaration:__ @pixman_region32_contains_point@

    __defined at:__ @pixman.h 719:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box32_t) -> IO Pixman_bool_t)
pixman_region32_contains_point =
  RIP.unsafePerformIO hs_bindgen_f8749cc5ecda31f2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_36212da66e36ad34" hs_bindgen_36212da66e36ad34_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_contains_rectangle@
hs_bindgen_36212da66e36ad34 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_region_overlap_t))
hs_bindgen_36212da66e36ad34 =
  RIP.fromFFIType hs_bindgen_36212da66e36ad34_base

{-# NOINLINE pixman_region32_contains_rectangle #-}
{-| __C declaration:__ @pixman_region32_contains_rectangle@

    __defined at:__ @pixman.h 725:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_rectangle :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_region_overlap_t)
pixman_region32_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_36212da66e36ad34

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_empty@
foreign import ccall unsafe "hs_bindgen_9443670e9b9b4f02" hs_bindgen_9443670e9b9b4f02_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_empty@
hs_bindgen_9443670e9b9b4f02 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_9443670e9b9b4f02 =
  RIP.fromFFIType hs_bindgen_9443670e9b9b4f02_base

{-# NOINLINE pixman_region32_empty #-}
{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_empty =
  RIP.unsafePerformIO hs_bindgen_9443670e9b9b4f02

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_not_empty@
foreign import ccall unsafe "hs_bindgen_e2f1fa48fbc4cb3c" hs_bindgen_e2f1fa48fbc4cb3c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_not_empty@
hs_bindgen_e2f1fa48fbc4cb3c :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_e2f1fa48fbc4cb3c =
  RIP.fromFFIType hs_bindgen_e2f1fa48fbc4cb3c_base

{-# NOINLINE pixman_region32_not_empty #-}
{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_not_empty =
  RIP.unsafePerformIO hs_bindgen_e2f1fa48fbc4cb3c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_extents@
foreign import ccall unsafe "hs_bindgen_ee22212108bbaa71" hs_bindgen_ee22212108bbaa71_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_extents@
hs_bindgen_ee22212108bbaa71 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO (RIP.Ptr Pixman_box32_t)))
hs_bindgen_ee22212108bbaa71 =
  RIP.fromFFIType hs_bindgen_ee22212108bbaa71_base

{-# NOINLINE pixman_region32_extents #-}
{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO (RIP.Ptr Pixman_box32_t))
pixman_region32_extents =
  RIP.unsafePerformIO hs_bindgen_ee22212108bbaa71

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_n_rects@
foreign import ccall unsafe "hs_bindgen_d2dd596010ebc003" hs_bindgen_d2dd596010ebc003_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_n_rects@
hs_bindgen_d2dd596010ebc003 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO RIP.CInt))
hs_bindgen_d2dd596010ebc003 =
  RIP.fromFFIType hs_bindgen_d2dd596010ebc003_base

{-# NOINLINE pixman_region32_n_rects #-}
{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO RIP.CInt)
pixman_region32_n_rects =
  RIP.unsafePerformIO hs_bindgen_d2dd596010ebc003

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_rectangles@
foreign import ccall unsafe "hs_bindgen_155be445b57a9df8" hs_bindgen_155be445b57a9df8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_rectangles@
hs_bindgen_155be445b57a9df8 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box32_t)))
hs_bindgen_155be445b57a9df8 =
  RIP.fromFFIType hs_bindgen_155be445b57a9df8_base

{-# NOINLINE pixman_region32_rectangles #-}
{-| __C declaration:__ @pixman_region32_rectangles@

    __defined at:__ @pixman.h 741:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_rectangles :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box32_t))
pixman_region32_rectangles =
  RIP.unsafePerformIO hs_bindgen_155be445b57a9df8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_equal@
foreign import ccall unsafe "hs_bindgen_ef8f199a505ca635" hs_bindgen_ef8f199a505ca635_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_equal@
hs_bindgen_ef8f199a505ca635 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_ef8f199a505ca635 =
  RIP.fromFFIType hs_bindgen_ef8f199a505ca635_base

{-# NOINLINE pixman_region32_equal #-}
{-| __C declaration:__ @pixman_region32_equal@

    __defined at:__ @pixman.h 745:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_equal :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_equal =
  RIP.unsafePerformIO hs_bindgen_ef8f199a505ca635

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_selfcheck@
foreign import ccall unsafe "hs_bindgen_75ccbe536910ce88" hs_bindgen_75ccbe536910ce88_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_selfcheck@
hs_bindgen_75ccbe536910ce88 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_75ccbe536910ce88 =
  RIP.fromFFIType hs_bindgen_75ccbe536910ce88_base

{-# NOINLINE pixman_region32_selfcheck #-}
{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_selfcheck =
  RIP.unsafePerformIO hs_bindgen_75ccbe536910ce88

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_reset@
foreign import ccall unsafe "hs_bindgen_af06135d44b16911" hs_bindgen_af06135d44b16911_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_reset@
hs_bindgen_af06135d44b16911 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ()))
hs_bindgen_af06135d44b16911 =
  RIP.fromFFIType hs_bindgen_af06135d44b16911_base

{-# NOINLINE pixman_region32_reset #-}
{-| __C declaration:__ @pixman_region32_reset@

    __defined at:__ @pixman.h 752:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_reset :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ())
pixman_region32_reset =
  RIP.unsafePerformIO hs_bindgen_af06135d44b16911

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_clear@
foreign import ccall unsafe "hs_bindgen_68a6397b81908d86" hs_bindgen_68a6397b81908d86_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region32_clear@
hs_bindgen_68a6397b81908d86 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ()))
hs_bindgen_68a6397b81908d86 =
  RIP.fromFFIType hs_bindgen_68a6397b81908d86_base

{-# NOINLINE pixman_region32_clear #-}
{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ())
pixman_region32_clear =
  RIP.unsafePerformIO hs_bindgen_68a6397b81908d86

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init@
foreign import ccall unsafe "hs_bindgen_1abe3d9f355d0b90" hs_bindgen_1abe3d9f355d0b90_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init@
hs_bindgen_1abe3d9f355d0b90 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ()))
hs_bindgen_1abe3d9f355d0b90 =
  RIP.fromFFIType hs_bindgen_1abe3d9f355d0b90_base

{-# NOINLINE pixman_region64f_init #-}
{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ())
pixman_region64f_init =
  RIP.unsafePerformIO hs_bindgen_1abe3d9f355d0b90

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rect@
foreign import ccall unsafe "hs_bindgen_579398f98f121a83" hs_bindgen_579398f98f121a83_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rect@
hs_bindgen_579398f98f121a83 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_579398f98f121a83 =
  RIP.fromFFIType hs_bindgen_579398f98f121a83_base

{-# NOINLINE pixman_region64f_init_rect #-}
{-| __C declaration:__ @pixman_region64f_init_rect@

    __defined at:__ @pixman.h 793:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region64f_init_rect =
  RIP.unsafePerformIO hs_bindgen_579398f98f121a83

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rectf@
foreign import ccall unsafe "hs_bindgen_1d771e50b4c039de" hs_bindgen_1d771e50b4c039de_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rectf@
hs_bindgen_1d771e50b4c039de :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_1d771e50b4c039de =
  RIP.fromFFIType hs_bindgen_1d771e50b4c039de_base

{-# NOINLINE pixman_region64f_init_rectf #-}
{-| __C declaration:__ @pixman_region64f_init_rectf@

    __defined at:__ @pixman.h 800:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rectf :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_region64f_init_rectf =
  RIP.unsafePerformIO hs_bindgen_1d771e50b4c039de

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rects@
foreign import ccall unsafe "hs_bindgen_b7921c5c8090c15d" hs_bindgen_b7921c5c8090c15d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_rects@
hs_bindgen_b7921c5c8090c15d :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_b7921c5c8090c15d =
  RIP.fromFFIType hs_bindgen_b7921c5c8090c15d_base

{-# NOINLINE pixman_region64f_init_rects #-}
{-| __C declaration:__ @pixman_region64f_init_rects@

    __defined at:__ @pixman.h 807:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rects :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_region64f_init_rects =
  RIP.unsafePerformIO hs_bindgen_b7921c5c8090c15d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_with_extents@
foreign import ccall unsafe "hs_bindgen_ae61a6fc53c0035f" hs_bindgen_ae61a6fc53c0035f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_with_extents@
hs_bindgen_ae61a6fc53c0035f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ()))
hs_bindgen_ae61a6fc53c0035f =
  RIP.fromFFIType hs_bindgen_ae61a6fc53c0035f_base

{-# NOINLINE pixman_region64f_init_with_extents #-}
{-| __C declaration:__ @pixman_region64f_init_with_extents@

    __defined at:__ @pixman.h 812:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_with_extents :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ())
pixman_region64f_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_ae61a6fc53c0035f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_from_image@
foreign import ccall unsafe "hs_bindgen_056e329a08dfb0ee" hs_bindgen_056e329a08dfb0ee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_init_from_image@
hs_bindgen_056e329a08dfb0ee :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (RIP.Ptr Pixman_image_t) -> IO ()))
hs_bindgen_056e329a08dfb0ee =
  RIP.fromFFIType hs_bindgen_056e329a08dfb0ee_base

{-# NOINLINE pixman_region64f_init_from_image #-}
{-| __C declaration:__ @pixman_region64f_init_from_image@

    __defined at:__ @pixman.h 816:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_from_image :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (RIP.Ptr Pixman_image_t) -> IO ())
pixman_region64f_init_from_image =
  RIP.unsafePerformIO hs_bindgen_056e329a08dfb0ee

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_fini@
foreign import ccall unsafe "hs_bindgen_9a624ac173faac43" hs_bindgen_9a624ac173faac43_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_fini@
hs_bindgen_9a624ac173faac43 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ()))
hs_bindgen_9a624ac173faac43 =
  RIP.fromFFIType hs_bindgen_9a624ac173faac43_base

{-# NOINLINE pixman_region64f_fini #-}
{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ())
pixman_region64f_fini =
  RIP.unsafePerformIO hs_bindgen_9a624ac173faac43

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_translate@
foreign import ccall unsafe "hs_bindgen_4bd83c26baf406c6" hs_bindgen_4bd83c26baf406c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_translate@
hs_bindgen_4bd83c26baf406c6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_4bd83c26baf406c6 =
  RIP.fromFFIType hs_bindgen_4bd83c26baf406c6_base

{-# NOINLINE pixman_region64f_translate #-}
{-| __C declaration:__ @pixman_region64f_translate@

    __defined at:__ @pixman.h 825:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translate :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region64f_translate =
  RIP.unsafePerformIO hs_bindgen_4bd83c26baf406c6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_translatef@
foreign import ccall unsafe "hs_bindgen_c720831c7451ba94" hs_bindgen_c720831c7451ba94_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_translatef@
hs_bindgen_c720831c7451ba94 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_c720831c7451ba94 =
  RIP.fromFFIType hs_bindgen_c720831c7451ba94_base

{-# NOINLINE pixman_region64f_translatef #-}
{-| __C declaration:__ @pixman_region64f_translatef@

    __defined at:__ @pixman.h 830:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translatef :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_region64f_translatef =
  RIP.unsafePerformIO hs_bindgen_c720831c7451ba94

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_copy@
foreign import ccall unsafe "hs_bindgen_1adeb1a8800fb526" hs_bindgen_1adeb1a8800fb526_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_copy@
hs_bindgen_1adeb1a8800fb526 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_1adeb1a8800fb526 =
  RIP.fromFFIType hs_bindgen_1adeb1a8800fb526_base

{-# NOINLINE pixman_region64f_copy #-}
{-| __C declaration:__ @pixman_region64f_copy@

    __defined at:__ @pixman.h 835:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_copy :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_copy =
  RIP.unsafePerformIO hs_bindgen_1adeb1a8800fb526

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect@
foreign import ccall unsafe "hs_bindgen_7744679c9d338bfc" hs_bindgen_7744679c9d338bfc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect@
hs_bindgen_7744679c9d338bfc :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_7744679c9d338bfc =
  RIP.fromFFIType hs_bindgen_7744679c9d338bfc_base

{-# NOINLINE pixman_region64f_intersect #-}
{-| __C declaration:__ @pixman_region64f_intersect@

    __defined at:__ @pixman.h 839:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_intersect =
  RIP.unsafePerformIO hs_bindgen_7744679c9d338bfc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union@
foreign import ccall unsafe "hs_bindgen_0072f8554ddf93e8" hs_bindgen_0072f8554ddf93e8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union@
hs_bindgen_0072f8554ddf93e8 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_0072f8554ddf93e8 =
  RIP.fromFFIType hs_bindgen_0072f8554ddf93e8_base

{-# NOINLINE pixman_region64f_union #-}
{-| __C declaration:__ @pixman_region64f_union@

    __defined at:__ @pixman.h 844:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_union =
  RIP.unsafePerformIO hs_bindgen_0072f8554ddf93e8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rect@
foreign import ccall unsafe "hs_bindgen_8a7b9d1d730918ac" hs_bindgen_8a7b9d1d730918ac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rect@
hs_bindgen_8a7b9d1d730918ac :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_8a7b9d1d730918ac =
  RIP.fromFFIType hs_bindgen_8a7b9d1d730918ac_base

{-# NOINLINE pixman_region64f_intersect_rect #-}
{-| __C declaration:__ @pixman_region64f_intersect_rect@

    __defined at:__ @pixman.h 849:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region64f_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_8a7b9d1d730918ac

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rectf@
foreign import ccall unsafe "hs_bindgen_54a956166345dfeb" hs_bindgen_54a956166345dfeb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rectf@
hs_bindgen_54a956166345dfeb :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_54a956166345dfeb =
  RIP.fromFFIType hs_bindgen_54a956166345dfeb_base

{-# NOINLINE pixman_region64f_intersect_rectf #-}
{-| __C declaration:__ @pixman_region64f_intersect_rectf@

    __defined at:__ @pixman.h 857:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rectf :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_region64f_intersect_rectf =
  RIP.unsafePerformIO hs_bindgen_54a956166345dfeb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union_rect@
foreign import ccall unsafe "hs_bindgen_52364a0d90b733ec" hs_bindgen_52364a0d90b733ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union_rect@
hs_bindgen_52364a0d90b733ec :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_52364a0d90b733ec =
  RIP.fromFFIType hs_bindgen_52364a0d90b733ec_base

{-# NOINLINE pixman_region64f_union_rect #-}
{-| __C declaration:__ @pixman_region64f_union_rect@

    __defined at:__ @pixman.h 865:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region64f_union_rect =
  RIP.unsafePerformIO hs_bindgen_52364a0d90b733ec

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union_rectf@
foreign import ccall unsafe "hs_bindgen_a772de80cf8434d6" hs_bindgen_a772de80cf8434d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_union_rectf@
hs_bindgen_a772de80cf8434d6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_a772de80cf8434d6 =
  RIP.fromFFIType hs_bindgen_a772de80cf8434d6_base

{-# NOINLINE pixman_region64f_union_rectf #-}
{-| __C declaration:__ @pixman_region64f_union_rectf@

    __defined at:__ @pixman.h 873:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rectf :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_region64f_union_rectf =
  RIP.unsafePerformIO hs_bindgen_a772de80cf8434d6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_subtract@
foreign import ccall unsafe "hs_bindgen_46e5703fa2e5669f" hs_bindgen_46e5703fa2e5669f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_subtract@
hs_bindgen_46e5703fa2e5669f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_46e5703fa2e5669f =
  RIP.fromFFIType hs_bindgen_46e5703fa2e5669f_base

{-# NOINLINE pixman_region64f_subtract #-}
{-| __C declaration:__ @pixman_region64f_subtract@

    __defined at:__ @pixman.h 881:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_subtract :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_subtract =
  RIP.unsafePerformIO hs_bindgen_46e5703fa2e5669f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_inverse@
foreign import ccall unsafe "hs_bindgen_243d1b4f9e911d71" hs_bindgen_243d1b4f9e911d71_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_inverse@
hs_bindgen_243d1b4f9e911d71 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_bool_t))
hs_bindgen_243d1b4f9e911d71 =
  RIP.fromFFIType hs_bindgen_243d1b4f9e911d71_base

{-# NOINLINE pixman_region64f_inverse #-}
{-| __C declaration:__ @pixman_region64f_inverse@

    __defined at:__ @pixman.h 886:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_inverse :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_bool_t)
pixman_region64f_inverse =
  RIP.unsafePerformIO hs_bindgen_243d1b4f9e911d71

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_point@
foreign import ccall unsafe "hs_bindgen_4547db634f6b4e6b" hs_bindgen_4547db634f6b4e6b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_point@
hs_bindgen_4547db634f6b4e6b :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t))
hs_bindgen_4547db634f6b4e6b =
  RIP.fromFFIType hs_bindgen_4547db634f6b4e6b_base

{-# NOINLINE pixman_region64f_contains_point #-}
{-| __C declaration:__ @pixman_region64f_contains_point@

    __defined at:__ @pixman.h 891:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t)
pixman_region64f_contains_point =
  RIP.unsafePerformIO hs_bindgen_4547db634f6b4e6b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_pointf@
foreign import ccall unsafe "hs_bindgen_bf33220cb5f00074" hs_bindgen_bf33220cb5f00074_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_pointf@
hs_bindgen_bf33220cb5f00074 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t))
hs_bindgen_bf33220cb5f00074 =
  RIP.fromFFIType hs_bindgen_bf33220cb5f00074_base

{-# NOINLINE pixman_region64f_contains_pointf #-}
{-| __C declaration:__ @pixman_region64f_contains_pointf@

    __defined at:__ @pixman.h 897:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_pointf :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t)
pixman_region64f_contains_pointf =
  RIP.unsafePerformIO hs_bindgen_bf33220cb5f00074

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_e8d9fadf3580e5d9" hs_bindgen_e8d9fadf3580e5d9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_contains_rectangle@
hs_bindgen_e8d9fadf3580e5d9 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_region_overlap_t))
hs_bindgen_e8d9fadf3580e5d9 =
  RIP.fromFFIType hs_bindgen_e8d9fadf3580e5d9_base

{-# NOINLINE pixman_region64f_contains_rectangle #-}
{-| __C declaration:__ @pixman_region64f_contains_rectangle@

    __defined at:__ @pixman.h 903:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_rectangle :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_region_overlap_t)
pixman_region64f_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_e8d9fadf3580e5d9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_empty@
foreign import ccall unsafe "hs_bindgen_5f5a800ca537d100" hs_bindgen_5f5a800ca537d100_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_empty@
hs_bindgen_5f5a800ca537d100 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_5f5a800ca537d100 =
  RIP.fromFFIType hs_bindgen_5f5a800ca537d100_base

{-# NOINLINE pixman_region64f_empty #-}
{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_empty =
  RIP.unsafePerformIO hs_bindgen_5f5a800ca537d100

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_not_empty@
foreign import ccall unsafe "hs_bindgen_79c44026be12c8b9" hs_bindgen_79c44026be12c8b9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_not_empty@
hs_bindgen_79c44026be12c8b9 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_79c44026be12c8b9 =
  RIP.fromFFIType hs_bindgen_79c44026be12c8b9_base

{-# NOINLINE pixman_region64f_not_empty #-}
{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_not_empty =
  RIP.unsafePerformIO hs_bindgen_79c44026be12c8b9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_extents@
foreign import ccall unsafe "hs_bindgen_9a2d518e279802b7" hs_bindgen_9a2d518e279802b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_extents@
hs_bindgen_9a2d518e279802b7 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO (RIP.Ptr Pixman_box64f_t)))
hs_bindgen_9a2d518e279802b7 =
  RIP.fromFFIType hs_bindgen_9a2d518e279802b7_base

{-# NOINLINE pixman_region64f_extents #-}
{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO (RIP.Ptr Pixman_box64f_t))
pixman_region64f_extents =
  RIP.unsafePerformIO hs_bindgen_9a2d518e279802b7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_n_rects@
foreign import ccall unsafe "hs_bindgen_b9c5f3c571f59e12" hs_bindgen_b9c5f3c571f59e12_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_n_rects@
hs_bindgen_b9c5f3c571f59e12 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO RIP.CInt))
hs_bindgen_b9c5f3c571f59e12 =
  RIP.fromFFIType hs_bindgen_b9c5f3c571f59e12_base

{-# NOINLINE pixman_region64f_n_rects #-}
{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO RIP.CInt)
pixman_region64f_n_rects =
  RIP.unsafePerformIO hs_bindgen_b9c5f3c571f59e12

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_rectangles@
foreign import ccall unsafe "hs_bindgen_0d850b53bd3cb01a" hs_bindgen_0d850b53bd3cb01a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_rectangles@
hs_bindgen_0d850b53bd3cb01a :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box64f_t)))
hs_bindgen_0d850b53bd3cb01a =
  RIP.fromFFIType hs_bindgen_0d850b53bd3cb01a_base

{-# NOINLINE pixman_region64f_rectangles #-}
{-| __C declaration:__ @pixman_region64f_rectangles@

    __defined at:__ @pixman.h 919:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_rectangles :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box64f_t))
pixman_region64f_rectangles =
  RIP.unsafePerformIO hs_bindgen_0d850b53bd3cb01a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_equal@
foreign import ccall unsafe "hs_bindgen_3299593e0a2aa9e7" hs_bindgen_3299593e0a2aa9e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_equal@
hs_bindgen_3299593e0a2aa9e7 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_3299593e0a2aa9e7 =
  RIP.fromFFIType hs_bindgen_3299593e0a2aa9e7_base

{-# NOINLINE pixman_region64f_equal #-}
{-| __C declaration:__ @pixman_region64f_equal@

    __defined at:__ @pixman.h 923:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_equal :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_equal =
  RIP.unsafePerformIO hs_bindgen_3299593e0a2aa9e7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_selfcheck@
foreign import ccall unsafe "hs_bindgen_2d6a0f8e1bc100c6" hs_bindgen_2d6a0f8e1bc100c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_selfcheck@
hs_bindgen_2d6a0f8e1bc100c6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_2d6a0f8e1bc100c6 =
  RIP.fromFFIType hs_bindgen_2d6a0f8e1bc100c6_base

{-# NOINLINE pixman_region64f_selfcheck #-}
{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_selfcheck =
  RIP.unsafePerformIO hs_bindgen_2d6a0f8e1bc100c6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_reset@
foreign import ccall unsafe "hs_bindgen_d34acb051bebb624" hs_bindgen_d34acb051bebb624_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_reset@
hs_bindgen_d34acb051bebb624 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ()))
hs_bindgen_d34acb051bebb624 =
  RIP.fromFFIType hs_bindgen_d34acb051bebb624_base

{-# NOINLINE pixman_region64f_reset #-}
{-| __C declaration:__ @pixman_region64f_reset@

    __defined at:__ @pixman.h 930:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_reset :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ())
pixman_region64f_reset =
  RIP.unsafePerformIO hs_bindgen_d34acb051bebb624

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_clear@
foreign import ccall unsafe "hs_bindgen_f25fcabdafa1cb79" hs_bindgen_f25fcabdafa1cb79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_region64f_clear@
hs_bindgen_f25fcabdafa1cb79 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ()))
hs_bindgen_f25fcabdafa1cb79 =
  RIP.fromFFIType hs_bindgen_f25fcabdafa1cb79_base

{-# NOINLINE pixman_region64f_clear #-}
{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ())
pixman_region64f_clear =
  RIP.unsafePerformIO hs_bindgen_f25fcabdafa1cb79

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_blt@
foreign import ccall unsafe "hs_bindgen_6617ebd1c56aaa58" hs_bindgen_6617ebd1c56aaa58_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_blt@
hs_bindgen_6617ebd1c56aaa58 :: IO (RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_6617ebd1c56aaa58 =
  RIP.fromFFIType hs_bindgen_6617ebd1c56aaa58_base

{-# NOINLINE pixman_blt #-}
{-| __C declaration:__ @pixman_blt@

    __defined at:__ @pixman.h 939:15@

    __exported by:__ @pixman.h@
-}
pixman_blt :: RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> IO Pixman_bool_t)
pixman_blt =
  RIP.unsafePerformIO hs_bindgen_6617ebd1c56aaa58

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_fill@
foreign import ccall unsafe "hs_bindgen_038bb181ecb8a0b4" hs_bindgen_038bb181ecb8a0b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_fill@
hs_bindgen_038bb181ecb8a0b4 :: IO (RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> HsBindgen.Runtime.LibC.Word32 -> IO Pixman_bool_t))
hs_bindgen_038bb181ecb8a0b4 =
  RIP.fromFFIType hs_bindgen_038bb181ecb8a0b4_base

{-# NOINLINE pixman_fill #-}
{-| __C declaration:__ @pixman_fill@

    __defined at:__ @pixman.h 953:15@

    __exported by:__ @pixman.h@
-}
pixman_fill :: RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> HsBindgen.Runtime.LibC.Word32 -> IO Pixman_bool_t)
pixman_fill =
  RIP.unsafePerformIO hs_bindgen_038bb181ecb8a0b4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_version@
foreign import ccall unsafe "hs_bindgen_413d248853445593" hs_bindgen_413d248853445593_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_version@
hs_bindgen_413d248853445593 :: IO (RIP.FunPtr (IO RIP.CInt))
hs_bindgen_413d248853445593 =
  RIP.fromFFIType hs_bindgen_413d248853445593_base

{-# NOINLINE pixman_version #-}
{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: RIP.FunPtr (IO RIP.CInt)
pixman_version =
  RIP.unsafePerformIO hs_bindgen_413d248853445593

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_version_string@
foreign import ccall unsafe "hs_bindgen_2b32ebf25b574e04" hs_bindgen_2b32ebf25b574e04_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_version_string@
hs_bindgen_2b32ebf25b574e04 :: IO (RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_2b32ebf25b574e04 =
  RIP.fromFFIType hs_bindgen_2b32ebf25b574e04_base

{-# NOINLINE pixman_version_string #-}
{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar))
pixman_version_string =
  RIP.unsafePerformIO hs_bindgen_2b32ebf25b574e04

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_format_supported_destination@
foreign import ccall unsafe "hs_bindgen_558512fba8bfdc84" hs_bindgen_558512fba8bfdc84_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_format_supported_destination@
hs_bindgen_558512fba8bfdc84 :: IO (RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t))
hs_bindgen_558512fba8bfdc84 =
  RIP.fromFFIType hs_bindgen_558512fba8bfdc84_base

{-# NOINLINE pixman_format_supported_destination #-}
{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination :: RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t)
pixman_format_supported_destination =
  RIP.unsafePerformIO hs_bindgen_558512fba8bfdc84

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_format_supported_source@
foreign import ccall unsafe "hs_bindgen_ac6949e7ab167a70" hs_bindgen_ac6949e7ab167a70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_format_supported_source@
hs_bindgen_ac6949e7ab167a70 :: IO (RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t))
hs_bindgen_ac6949e7ab167a70 =
  RIP.fromFFIType hs_bindgen_ac6949e7ab167a70_base

{-# NOINLINE pixman_format_supported_source #-}
{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source :: RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t)
pixman_format_supported_source =
  RIP.unsafePerformIO hs_bindgen_ac6949e7ab167a70

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_solid_fill@
foreign import ccall unsafe "hs_bindgen_bbdd5f17f1e64cf7" hs_bindgen_bbdd5f17f1e64cf7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_solid_fill@
hs_bindgen_bbdd5f17f1e64cf7 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_color_t) -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_bbdd5f17f1e64cf7 =
  RIP.fromFFIType hs_bindgen_bbdd5f17f1e64cf7_base

{-# NOINLINE pixman_image_create_solid_fill #-}
{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill :: RIP.FunPtr ((PtrConst.PtrConst Pixman_color_t) -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_solid_fill =
  RIP.unsafePerformIO hs_bindgen_bbdd5f17f1e64cf7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_linear_gradient@
foreign import ccall unsafe "hs_bindgen_8d90a14012ee71ef" hs_bindgen_8d90a14012ee71ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_linear_gradient@
hs_bindgen_8d90a14012ee71ef :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_8d90a14012ee71ef =
  RIP.fromFFIType hs_bindgen_8d90a14012ee71ef_base

{-# NOINLINE pixman_image_create_linear_gradient #-}
{-| __C declaration:__ @pixman_image_create_linear_gradient@

    __defined at:__ @pixman.h 1148:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_linear_gradient :: RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_linear_gradient =
  RIP.unsafePerformIO hs_bindgen_8d90a14012ee71ef

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_radial_gradient@
foreign import ccall unsafe "hs_bindgen_dce51d8e3db83989" hs_bindgen_dce51d8e3db83989_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_radial_gradient@
hs_bindgen_dce51d8e3db83989 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_dce51d8e3db83989 =
  RIP.fromFFIType hs_bindgen_dce51d8e3db83989_base

{-# NOINLINE pixman_image_create_radial_gradient #-}
{-| __C declaration:__ @pixman_image_create_radial_gradient@

    __defined at:__ @pixman.h 1154:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_radial_gradient :: RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_radial_gradient =
  RIP.unsafePerformIO hs_bindgen_dce51d8e3db83989

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_conical_gradient@
foreign import ccall unsafe "hs_bindgen_6d665122296e032b" hs_bindgen_6d665122296e032b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_conical_gradient@
hs_bindgen_6d665122296e032b :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_6d665122296e032b =
  RIP.fromFFIType hs_bindgen_6d665122296e032b_base

{-# NOINLINE pixman_image_create_conical_gradient #-}
{-| __C declaration:__ @pixman_image_create_conical_gradient@

    __defined at:__ @pixman.h 1162:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_conical_gradient :: RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_conical_gradient =
  RIP.unsafePerformIO hs_bindgen_6d665122296e032b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_bits@
foreign import ccall unsafe "hs_bindgen_bbd6095849b35764" hs_bindgen_bbd6095849b35764_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_bits@
hs_bindgen_bbd6095849b35764 :: IO (RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_bbd6095849b35764 =
  RIP.fromFFIType hs_bindgen_bbd6095849b35764_base

{-# NOINLINE pixman_image_create_bits #-}
{-| __C declaration:__ @pixman_image_create_bits@

    __defined at:__ @pixman.h 1168:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits :: RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_bits =
  RIP.unsafePerformIO hs_bindgen_bbd6095849b35764

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_bits_no_clear@
foreign import ccall unsafe "hs_bindgen_81221fe15310be6e" hs_bindgen_81221fe15310be6e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_create_bits_no_clear@
hs_bindgen_81221fe15310be6e :: IO (RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_81221fe15310be6e =
  RIP.fromFFIType hs_bindgen_81221fe15310be6e_base

{-# NOINLINE pixman_image_create_bits_no_clear #-}
{-| __C declaration:__ @pixman_image_create_bits_no_clear@

    __defined at:__ @pixman.h 1175:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits_no_clear :: RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_bits_no_clear =
  RIP.unsafePerformIO hs_bindgen_81221fe15310be6e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_ref@
foreign import ccall unsafe "hs_bindgen_f601206160f48e7b" hs_bindgen_f601206160f48e7b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_ref@
hs_bindgen_f601206160f48e7b :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_f601206160f48e7b =
  RIP.fromFFIType hs_bindgen_f601206160f48e7b_base

{-# NOINLINE pixman_image_ref #-}
{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr Pixman_image_t))
pixman_image_ref =
  RIP.unsafePerformIO hs_bindgen_f601206160f48e7b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_unref@
foreign import ccall unsafe "hs_bindgen_ab88a077c35c5961" hs_bindgen_ab88a077c35c5961_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_unref@
hs_bindgen_ab88a077c35c5961 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t))
hs_bindgen_ab88a077c35c5961 =
  RIP.fromFFIType hs_bindgen_ab88a077c35c5961_base

{-# NOINLINE pixman_image_unref #-}
{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t)
pixman_image_unref =
  RIP.unsafePerformIO hs_bindgen_ab88a077c35c5961

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_destroy_function@
foreign import ccall unsafe "hs_bindgen_39fb8c84b0a6ff13" hs_bindgen_39fb8c84b0a6ff13_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_destroy_function@
hs_bindgen_39fb8c84b0a6ff13 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_image_destroy_func_t -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_39fb8c84b0a6ff13 =
  RIP.fromFFIType hs_bindgen_39fb8c84b0a6ff13_base

{-# NOINLINE pixman_image_set_destroy_function #-}
{-| __C declaration:__ @pixman_image_set_destroy_function@

    __defined at:__ @pixman.h 1190:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_destroy_function :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_image_destroy_func_t -> (RIP.Ptr RIP.Void) -> IO ())
pixman_image_set_destroy_function =
  RIP.unsafePerformIO hs_bindgen_39fb8c84b0a6ff13

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_destroy_data@
foreign import ccall unsafe "hs_bindgen_8e093af3c661fe69" hs_bindgen_8e093af3c661fe69_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_destroy_data@
hs_bindgen_8e093af3c661fe69 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_8e093af3c661fe69 =
  RIP.fromFFIType hs_bindgen_8e093af3c661fe69_base

{-# NOINLINE pixman_image_get_destroy_data #-}
{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr RIP.Void))
pixman_image_get_destroy_data =
  RIP.unsafePerformIO hs_bindgen_8e093af3c661fe69

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region@
foreign import ccall unsafe "hs_bindgen_c8027a8aa4bb06e9" hs_bindgen_c8027a8aa4bb06e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region@
hs_bindgen_c8027a8aa4bb06e9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_c8027a8aa4bb06e9 =
  RIP.fromFFIType hs_bindgen_c8027a8aa4bb06e9_base

{-# NOINLINE pixman_image_set_clip_region #-}
{-| __C declaration:__ @pixman_image_set_clip_region@

    __defined at:__ @pixman.h 1199:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_image_set_clip_region =
  RIP.unsafePerformIO hs_bindgen_c8027a8aa4bb06e9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region32@
foreign import ccall unsafe "hs_bindgen_5208e1312c74acec" hs_bindgen_5208e1312c74acec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region32@
hs_bindgen_5208e1312c74acec :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_5208e1312c74acec =
  RIP.fromFFIType hs_bindgen_5208e1312c74acec_base

{-# NOINLINE pixman_image_set_clip_region32 #-}
{-| __C declaration:__ @pixman_image_set_clip_region32@

    __defined at:__ @pixman.h 1203:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region32 :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_image_set_clip_region32 =
  RIP.unsafePerformIO hs_bindgen_5208e1312c74acec

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region64f@
foreign import ccall unsafe "hs_bindgen_b1a47db5a178d5ba" hs_bindgen_b1a47db5a178d5ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_clip_region64f@
hs_bindgen_b1a47db5a178d5ba :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_b1a47db5a178d5ba =
  RIP.fromFFIType hs_bindgen_b1a47db5a178d5ba_base

{-# NOINLINE pixman_image_set_clip_region64f #-}
{-| __C declaration:__ @pixman_image_set_clip_region64f@

    __defined at:__ @pixman.h 1207:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region64f :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_image_set_clip_region64f =
  RIP.unsafePerformIO hs_bindgen_b1a47db5a178d5ba

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_has_client_clip@
foreign import ccall unsafe "hs_bindgen_c86e102f2e7a6d45" hs_bindgen_c86e102f2e7a6d45_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_has_client_clip@
hs_bindgen_c86e102f2e7a6d45 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ()))
hs_bindgen_c86e102f2e7a6d45 =
  RIP.fromFFIType hs_bindgen_c86e102f2e7a6d45_base

{-# NOINLINE pixman_image_set_has_client_clip #-}
{-| __C declaration:__ @pixman_image_set_has_client_clip@

    __defined at:__ @pixman.h 1211:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_has_client_clip :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ())
pixman_image_set_has_client_clip =
  RIP.unsafePerformIO hs_bindgen_c86e102f2e7a6d45

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_transform@
foreign import ccall unsafe "hs_bindgen_51b341567d11cd41" hs_bindgen_51b341567d11cd41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_transform@
hs_bindgen_51b341567d11cd41 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_transform_t) -> IO Pixman_bool_t))
hs_bindgen_51b341567d11cd41 =
  RIP.fromFFIType hs_bindgen_51b341567d11cd41_base

{-# NOINLINE pixman_image_set_transform #-}
{-| __C declaration:__ @pixman_image_set_transform@

    __defined at:__ @pixman.h 1215:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_transform :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_transform_t) -> IO Pixman_bool_t)
pixman_image_set_transform =
  RIP.unsafePerformIO hs_bindgen_51b341567d11cd41

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_repeat@
foreign import ccall unsafe "hs_bindgen_24f8ab485d9766eb" hs_bindgen_24f8ab485d9766eb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_repeat@
hs_bindgen_24f8ab485d9766eb :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_repeat_t -> IO ()))
hs_bindgen_24f8ab485d9766eb =
  RIP.fromFFIType hs_bindgen_24f8ab485d9766eb_base

{-# NOINLINE pixman_image_set_repeat #-}
{-| __C declaration:__ @pixman_image_set_repeat@

    __defined at:__ @pixman.h 1219:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_repeat :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_repeat_t -> IO ())
pixman_image_set_repeat =
  RIP.unsafePerformIO hs_bindgen_24f8ab485d9766eb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_dither@
foreign import ccall unsafe "hs_bindgen_2e92fd9b96561f28" hs_bindgen_2e92fd9b96561f28_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_dither@
hs_bindgen_2e92fd9b96561f28 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_dither_t -> IO ()))
hs_bindgen_2e92fd9b96561f28 =
  RIP.fromFFIType hs_bindgen_2e92fd9b96561f28_base

{-# NOINLINE pixman_image_set_dither #-}
{-| __C declaration:__ @pixman_image_set_dither@

    __defined at:__ @pixman.h 1223:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_dither_t -> IO ())
pixman_image_set_dither =
  RIP.unsafePerformIO hs_bindgen_2e92fd9b96561f28

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_dither_offset@
foreign import ccall unsafe "hs_bindgen_a5d1f25d70790ec7" hs_bindgen_a5d1f25d70790ec7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_dither_offset@
hs_bindgen_a5d1f25d70790ec7 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_a5d1f25d70790ec7 =
  RIP.fromFFIType hs_bindgen_a5d1f25d70790ec7_base

{-# NOINLINE pixman_image_set_dither_offset #-}
{-| __C declaration:__ @pixman_image_set_dither_offset@

    __defined at:__ @pixman.h 1227:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither_offset :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_image_set_dither_offset =
  RIP.unsafePerformIO hs_bindgen_a5d1f25d70790ec7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_filter@
foreign import ccall unsafe "hs_bindgen_38ea194d95ec151e" hs_bindgen_38ea194d95ec151e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_filter@
hs_bindgen_38ea194d95ec151e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_filter_t -> (PtrConst.PtrConst Pixman_fixed_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_38ea194d95ec151e =
  RIP.fromFFIType hs_bindgen_38ea194d95ec151e_base

{-# NOINLINE pixman_image_set_filter #-}
{-| __C declaration:__ @pixman_image_set_filter@

    __defined at:__ @pixman.h 1232:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_filter :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_filter_t -> (PtrConst.PtrConst Pixman_fixed_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_image_set_filter =
  RIP.unsafePerformIO hs_bindgen_38ea194d95ec151e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_source_clipping@
foreign import ccall unsafe "hs_bindgen_c61fcf81fff9d334" hs_bindgen_c61fcf81fff9d334_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_source_clipping@
hs_bindgen_c61fcf81fff9d334 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ()))
hs_bindgen_c61fcf81fff9d334 =
  RIP.fromFFIType hs_bindgen_c61fcf81fff9d334_base

{-# NOINLINE pixman_image_set_source_clipping #-}
{-| __C declaration:__ @pixman_image_set_source_clipping@

    __defined at:__ @pixman.h 1238:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_source_clipping :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ())
pixman_image_set_source_clipping =
  RIP.unsafePerformIO hs_bindgen_c61fcf81fff9d334

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_alpha_map@
foreign import ccall unsafe "hs_bindgen_0bbcca785e454324" hs_bindgen_0bbcca785e454324_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_alpha_map@
hs_bindgen_0bbcca785e454324 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> IO ()))
hs_bindgen_0bbcca785e454324 =
  RIP.fromFFIType hs_bindgen_0bbcca785e454324_base

{-# NOINLINE pixman_image_set_alpha_map #-}
{-| __C declaration:__ @pixman_image_set_alpha_map@

    __defined at:__ @pixman.h 1242:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_alpha_map :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> IO ())
pixman_image_set_alpha_map =
  RIP.unsafePerformIO hs_bindgen_0bbcca785e454324

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_component_alpha@
foreign import ccall unsafe "hs_bindgen_a75bbc7813dfebbe" hs_bindgen_a75bbc7813dfebbe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_component_alpha@
hs_bindgen_a75bbc7813dfebbe :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ()))
hs_bindgen_a75bbc7813dfebbe =
  RIP.fromFFIType hs_bindgen_a75bbc7813dfebbe_base

{-# NOINLINE pixman_image_set_component_alpha #-}
{-| __C declaration:__ @pixman_image_set_component_alpha@

    __defined at:__ @pixman.h 1248:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_component_alpha :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ())
pixman_image_set_component_alpha =
  RIP.unsafePerformIO hs_bindgen_a75bbc7813dfebbe

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_component_alpha@
foreign import ccall unsafe "hs_bindgen_9a92cd1b859aaf68" hs_bindgen_9a92cd1b859aaf68_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_component_alpha@
hs_bindgen_9a92cd1b859aaf68 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t))
hs_bindgen_9a92cd1b859aaf68 =
  RIP.fromFFIType hs_bindgen_9a92cd1b859aaf68_base

{-# NOINLINE pixman_image_get_component_alpha #-}
{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t)
pixman_image_get_component_alpha =
  RIP.unsafePerformIO hs_bindgen_9a92cd1b859aaf68

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_accessors@
foreign import ccall unsafe "hs_bindgen_59e039758f9f3be7" hs_bindgen_59e039758f9f3be7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_accessors@
hs_bindgen_59e039758f9f3be7 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_read_memory_func_t -> Pixman_write_memory_func_t -> IO ()))
hs_bindgen_59e039758f9f3be7 =
  RIP.fromFFIType hs_bindgen_59e039758f9f3be7_base

{-# NOINLINE pixman_image_set_accessors #-}
{-| __C declaration:__ @pixman_image_set_accessors@

    __defined at:__ @pixman.h 1255:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_accessors :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_read_memory_func_t -> Pixman_write_memory_func_t -> IO ())
pixman_image_set_accessors =
  RIP.unsafePerformIO hs_bindgen_59e039758f9f3be7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_indexed@
foreign import ccall unsafe "hs_bindgen_fa71a943970e9d27" hs_bindgen_fa71a943970e9d27_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_set_indexed@
hs_bindgen_fa71a943970e9d27 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_indexed_t) -> IO ()))
hs_bindgen_fa71a943970e9d27 =
  RIP.fromFFIType hs_bindgen_fa71a943970e9d27_base

{-# NOINLINE pixman_image_set_indexed #-}
{-| __C declaration:__ @pixman_image_set_indexed@

    __defined at:__ @pixman.h 1260:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_indexed :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_indexed_t) -> IO ())
pixman_image_set_indexed =
  RIP.unsafePerformIO hs_bindgen_fa71a943970e9d27

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_data@
foreign import ccall unsafe "hs_bindgen_4167ba2b03d8bbf8" hs_bindgen_4167ba2b03d8bbf8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_data@
hs_bindgen_4167ba2b03d8bbf8 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)))
hs_bindgen_4167ba2b03d8bbf8 =
  RIP.fromFFIType hs_bindgen_4167ba2b03d8bbf8_base

{-# NOINLINE pixman_image_get_data #-}
{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32))
pixman_image_get_data =
  RIP.unsafePerformIO hs_bindgen_4167ba2b03d8bbf8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_width@
foreign import ccall unsafe "hs_bindgen_31c81d190df5d1c5" hs_bindgen_31c81d190df5d1c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_width@
hs_bindgen_31c81d190df5d1c5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_31c81d190df5d1c5 =
  RIP.fromFFIType hs_bindgen_31c81d190df5d1c5_base

{-# NOINLINE pixman_image_get_width #-}
{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_width =
  RIP.unsafePerformIO hs_bindgen_31c81d190df5d1c5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_height@
foreign import ccall unsafe "hs_bindgen_5f82ce1ab24a70ad" hs_bindgen_5f82ce1ab24a70ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_height@
hs_bindgen_5f82ce1ab24a70ad :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_5f82ce1ab24a70ad =
  RIP.fromFFIType hs_bindgen_5f82ce1ab24a70ad_base

{-# NOINLINE pixman_image_get_height #-}
{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_height =
  RIP.unsafePerformIO hs_bindgen_5f82ce1ab24a70ad

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_stride@
foreign import ccall unsafe "hs_bindgen_40de456738b35ddc" hs_bindgen_40de456738b35ddc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_stride@
hs_bindgen_40de456738b35ddc :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_40de456738b35ddc =
  RIP.fromFFIType hs_bindgen_40de456738b35ddc_base

{-# NOINLINE pixman_image_get_stride #-}
{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_stride =
  RIP.unsafePerformIO hs_bindgen_40de456738b35ddc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_depth@
foreign import ccall unsafe "hs_bindgen_f00c9827dc1281f0" hs_bindgen_f00c9827dc1281f0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_depth@
hs_bindgen_f00c9827dc1281f0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_f00c9827dc1281f0 =
  RIP.fromFFIType hs_bindgen_f00c9827dc1281f0_base

{-# NOINLINE pixman_image_get_depth #-}
{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_depth =
  RIP.unsafePerformIO hs_bindgen_f00c9827dc1281f0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_format@
foreign import ccall unsafe "hs_bindgen_624a5900936aa666" hs_bindgen_624a5900936aa666_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_get_format@
hs_bindgen_624a5900936aa666 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_format_code_t))
hs_bindgen_624a5900936aa666 =
  RIP.fromFFIType hs_bindgen_624a5900936aa666_base

{-# NOINLINE pixman_image_get_format #-}
{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_format_code_t)
pixman_image_get_format =
  RIP.unsafePerformIO hs_bindgen_624a5900936aa666

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_filter_create_separable_convolution@
foreign import ccall unsafe "hs_bindgen_09befa06bb2890e4" hs_bindgen_09befa06bb2890e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_filter_create_separable_convolution@
hs_bindgen_09befa06bb2890e4 :: IO (RIP.FunPtr ((RIP.Ptr RIP.CInt) -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> RIP.CInt -> RIP.CInt -> IO (RIP.Ptr Pixman_fixed_t)))
hs_bindgen_09befa06bb2890e4 =
  RIP.fromFFIType hs_bindgen_09befa06bb2890e4_base

{-# NOINLINE pixman_filter_create_separable_convolution #-}
{-| __C declaration:__ @pixman_filter_create_separable_convolution@

    __defined at:__ @pixman.h 1298:1@

    __exported by:__ @pixman.h@
-}
pixman_filter_create_separable_convolution :: RIP.FunPtr ((RIP.Ptr RIP.CInt) -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> RIP.CInt -> RIP.CInt -> IO (RIP.Ptr Pixman_fixed_t))
pixman_filter_create_separable_convolution =
  RIP.unsafePerformIO hs_bindgen_09befa06bb2890e4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_fill_rectangles@
foreign import ccall unsafe "hs_bindgen_dd1c3322bedf538a" hs_bindgen_dd1c3322bedf538a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_fill_rectangles@
hs_bindgen_dd1c3322bedf538a :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_rectangle16_t) -> IO Pixman_bool_t))
hs_bindgen_dd1c3322bedf538a =
  RIP.fromFFIType hs_bindgen_dd1c3322bedf538a_base

{-# NOINLINE pixman_image_fill_rectangles #-}
{-| __C declaration:__ @pixman_image_fill_rectangles@

    __defined at:__ @pixman.h 1310:15@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_rectangles :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_rectangle16_t) -> IO Pixman_bool_t)
pixman_image_fill_rectangles =
  RIP.unsafePerformIO hs_bindgen_dd1c3322bedf538a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_fill_boxes@
foreign import ccall unsafe "hs_bindgen_449efad52ff46a5a" hs_bindgen_449efad52ff46a5a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_fill_boxes@
hs_bindgen_449efad52ff46a5a :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t))
hs_bindgen_449efad52ff46a5a =
  RIP.fromFFIType hs_bindgen_449efad52ff46a5a_base

{-# NOINLINE pixman_image_fill_boxes #-}
{-| __C declaration:__ @pixman_image_fill_boxes@

    __defined at:__ @pixman.h 1317:17@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_boxes :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t)
pixman_image_fill_boxes =
  RIP.unsafePerformIO hs_bindgen_449efad52ff46a5a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_compute_composite_region@
foreign import ccall unsafe "hs_bindgen_916e106134b67ab0" hs_bindgen_916e106134b67ab0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_compute_composite_region@
hs_bindgen_916e106134b67ab0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO Pixman_bool_t))
hs_bindgen_916e106134b67ab0 =
  RIP.fromFFIType hs_bindgen_916e106134b67ab0_base

{-# NOINLINE pixman_compute_composite_region #-}
{-| __C declaration:__ @pixman_compute_composite_region@

    __defined at:__ @pixman.h 1325:15@

    __exported by:__ @pixman.h@
-}
pixman_compute_composite_region :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO Pixman_bool_t)
pixman_compute_composite_region =
  RIP.unsafePerformIO hs_bindgen_916e106134b67ab0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite@
foreign import ccall unsafe "hs_bindgen_9a9a552d9879e617" hs_bindgen_9a9a552d9879e617_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite@
hs_bindgen_9a9a552d9879e617 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO ()))
hs_bindgen_9a9a552d9879e617 =
  RIP.fromFFIType hs_bindgen_9a9a552d9879e617_base

{-# NOINLINE pixman_image_composite #-}
{-| __C declaration:__ @pixman_image_composite@

    __defined at:__ @pixman.h 1339:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO ())
pixman_image_composite =
  RIP.unsafePerformIO hs_bindgen_9a9a552d9879e617

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite32@
foreign import ccall unsafe "hs_bindgen_8f7d9269d59d34ef" hs_bindgen_8f7d9269d59d34ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite32@
hs_bindgen_8f7d9269d59d34ef :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_8f7d9269d59d34ef =
  RIP.fromFFIType hs_bindgen_8f7d9269d59d34ef_base

{-# NOINLINE pixman_image_composite32 #-}
{-| __C declaration:__ @pixman_image_composite32@

    __defined at:__ @pixman.h 1353:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite32 :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
pixman_image_composite32 =
  RIP.unsafePerformIO hs_bindgen_8f7d9269d59d34ef

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite64f@
foreign import ccall unsafe "hs_bindgen_1ce4667e9188d19d" hs_bindgen_1ce4667e9188d19d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_image_composite64f@
hs_bindgen_1ce4667e9188d19d :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_1ce4667e9188d19d =
  RIP.fromFFIType hs_bindgen_1ce4667e9188d19d_base

{-# NOINLINE pixman_image_composite64f #-}
{-| __C declaration:__ @pixman_image_composite64f@

    __defined at:__ @pixman.h 1367:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite64f :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_image_composite64f =
  RIP.unsafePerformIO hs_bindgen_1ce4667e9188d19d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_disable_out_of_bounds_workaround@
foreign import ccall unsafe "hs_bindgen_e295cffa600089c5" hs_bindgen_e295cffa600089c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_disable_out_of_bounds_workaround@
hs_bindgen_e295cffa600089c5 :: IO (RIP.FunPtr (IO ()))
hs_bindgen_e295cffa600089c5 =
  RIP.fromFFIType hs_bindgen_e295cffa600089c5_base

{-# NOINLINE pixman_disable_out_of_bounds_workaround #-}
{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: RIP.FunPtr (IO ())
pixman_disable_out_of_bounds_workaround =
  RIP.unsafePerformIO hs_bindgen_e295cffa600089c5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_create@
foreign import ccall unsafe "hs_bindgen_4b624b9a15df3b33" hs_bindgen_4b624b9a15df3b33_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_create@
hs_bindgen_4b624b9a15df3b33 :: IO (RIP.FunPtr (IO (RIP.Ptr Pixman_glyph_cache_t)))
hs_bindgen_4b624b9a15df3b33 =
  RIP.fromFFIType hs_bindgen_4b624b9a15df3b33_base

{-# NOINLINE pixman_glyph_cache_create #-}
{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: RIP.FunPtr (IO (RIP.Ptr Pixman_glyph_cache_t))
pixman_glyph_cache_create =
  RIP.unsafePerformIO hs_bindgen_4b624b9a15df3b33

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_destroy@
foreign import ccall unsafe "hs_bindgen_dbdbf23fe8c20de6" hs_bindgen_dbdbf23fe8c20de6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_destroy@
hs_bindgen_dbdbf23fe8c20de6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ()))
hs_bindgen_dbdbf23fe8c20de6 =
  RIP.fromFFIType hs_bindgen_dbdbf23fe8c20de6_base

{-# NOINLINE pixman_glyph_cache_destroy #-}
{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ())
pixman_glyph_cache_destroy =
  RIP.unsafePerformIO hs_bindgen_dbdbf23fe8c20de6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_freeze@
foreign import ccall unsafe "hs_bindgen_9f472a55b79d9cee" hs_bindgen_9f472a55b79d9cee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_freeze@
hs_bindgen_9f472a55b79d9cee :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ()))
hs_bindgen_9f472a55b79d9cee =
  RIP.fromFFIType hs_bindgen_9f472a55b79d9cee_base

{-# NOINLINE pixman_glyph_cache_freeze #-}
{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ())
pixman_glyph_cache_freeze =
  RIP.unsafePerformIO hs_bindgen_9f472a55b79d9cee

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_thaw@
foreign import ccall unsafe "hs_bindgen_4e5c8d34a917e9e8" hs_bindgen_4e5c8d34a917e9e8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_thaw@
hs_bindgen_4e5c8d34a917e9e8 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ()))
hs_bindgen_4e5c8d34a917e9e8 =
  RIP.fromFFIType hs_bindgen_4e5c8d34a917e9e8_base

{-# NOINLINE pixman_glyph_cache_thaw #-}
{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ())
pixman_glyph_cache_thaw =
  RIP.unsafePerformIO hs_bindgen_4e5c8d34a917e9e8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_lookup@
foreign import ccall unsafe "hs_bindgen_d125c38313ff8cc6" hs_bindgen_d125c38313ff8cc6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_lookup@
hs_bindgen_d125c38313ff8cc6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_d125c38313ff8cc6 =
  RIP.fromFFIType hs_bindgen_d125c38313ff8cc6_base

{-# NOINLINE pixman_glyph_cache_lookup #-}
{-| __C declaration:__ @pixman_glyph_cache_lookup@

    __defined at:__ @pixman.h 1424:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_lookup :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO (PtrConst.PtrConst RIP.Void))
pixman_glyph_cache_lookup =
  RIP.unsafePerformIO hs_bindgen_d125c38313ff8cc6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_insert@
foreign import ccall unsafe "hs_bindgen_b3b8c94dd2df879a" hs_bindgen_b3b8c94dd2df879a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_insert@
hs_bindgen_b3b8c94dd2df879a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_image_t) -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_b3b8c94dd2df879a =
  RIP.fromFFIType hs_bindgen_b3b8c94dd2df879a_base

{-# NOINLINE pixman_glyph_cache_insert #-}
{-| __C declaration:__ @pixman_glyph_cache_insert@

    __defined at:__ @pixman.h 1429:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_insert :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_image_t) -> IO (PtrConst.PtrConst RIP.Void))
pixman_glyph_cache_insert =
  RIP.unsafePerformIO hs_bindgen_b3b8c94dd2df879a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_remove@
foreign import ccall unsafe "hs_bindgen_0c7ed7f44f5df4b1" hs_bindgen_0c7ed7f44f5df4b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_cache_remove@
hs_bindgen_0c7ed7f44f5df4b1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_0c7ed7f44f5df4b1 =
  RIP.fromFFIType hs_bindgen_0c7ed7f44f5df4b1_base

{-# NOINLINE pixman_glyph_cache_remove #-}
{-| __C declaration:__ @pixman_glyph_cache_remove@

    __defined at:__ @pixman.h 1437:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_remove :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
pixman_glyph_cache_remove =
  RIP.unsafePerformIO hs_bindgen_0c7ed7f44f5df4b1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_get_extents@
foreign import ccall unsafe "hs_bindgen_05cd12e658049fcf" hs_bindgen_05cd12e658049fcf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_get_extents@
hs_bindgen_05cd12e658049fcf :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (RIP.Ptr Pixman_glyph_t) -> (RIP.Ptr Pixman_box32_t) -> IO ()))
hs_bindgen_05cd12e658049fcf =
  RIP.fromFFIType hs_bindgen_05cd12e658049fcf_base

{-# NOINLINE pixman_glyph_get_extents #-}
{-| __C declaration:__ @pixman_glyph_get_extents@

    __defined at:__ @pixman.h 1442:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_extents :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (RIP.Ptr Pixman_glyph_t) -> (RIP.Ptr Pixman_box32_t) -> IO ())
pixman_glyph_get_extents =
  RIP.unsafePerformIO hs_bindgen_05cd12e658049fcf

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_get_mask_format@
foreign import ccall unsafe "hs_bindgen_ebb5131a2415f6d6" hs_bindgen_ebb5131a2415f6d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_glyph_get_mask_format@
hs_bindgen_ebb5131a2415f6d6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO Pixman_format_code_t))
hs_bindgen_ebb5131a2415f6d6 =
  RIP.fromFFIType hs_bindgen_ebb5131a2415f6d6_base

{-# NOINLINE pixman_glyph_get_mask_format #-}
{-| __C declaration:__ @pixman_glyph_get_mask_format@

    __defined at:__ @pixman.h 1448:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_mask_format :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO Pixman_format_code_t)
pixman_glyph_get_mask_format =
  RIP.unsafePerformIO hs_bindgen_ebb5131a2415f6d6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_glyphs@
foreign import ccall unsafe "hs_bindgen_3dbd9e6917704c91" hs_bindgen_3dbd9e6917704c91_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_glyphs@
hs_bindgen_3dbd9e6917704c91 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ()))
hs_bindgen_3dbd9e6917704c91 =
  RIP.fromFFIType hs_bindgen_3dbd9e6917704c91_base

{-# NOINLINE pixman_composite_glyphs #-}
{-| __C declaration:__ @pixman_composite_glyphs@

    __defined at:__ @pixman.h 1453:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ())
pixman_composite_glyphs =
  RIP.unsafePerformIO hs_bindgen_3dbd9e6917704c91

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_glyphs_no_mask@
foreign import ccall unsafe "hs_bindgen_3cf7ed8d06944c1a" hs_bindgen_3cf7ed8d06944c1a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_glyphs_no_mask@
hs_bindgen_3cf7ed8d06944c1a :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ()))
hs_bindgen_3cf7ed8d06944c1a =
  RIP.fromFFIType hs_bindgen_3cf7ed8d06944c1a_base

{-# NOINLINE pixman_composite_glyphs_no_mask #-}
{-| __C declaration:__ @pixman_composite_glyphs_no_mask@

    __defined at:__ @pixman.h 1470:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs_no_mask :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ())
pixman_composite_glyphs_no_mask =
  RIP.unsafePerformIO hs_bindgen_3cf7ed8d06944c1a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_sample_ceil_y@
foreign import ccall unsafe "hs_bindgen_bfdb2df41a163497" hs_bindgen_bfdb2df41a163497_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_sample_ceil_y@
hs_bindgen_bfdb2df41a163497 :: IO (RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t))
hs_bindgen_bfdb2df41a163497 =
  RIP.fromFFIType hs_bindgen_bfdb2df41a163497_base

{-# NOINLINE pixman_sample_ceil_y #-}
{-| __C declaration:__ @pixman_sample_ceil_y@

    __defined at:__ @pixman.h 1538:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_ceil_y :: RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t)
pixman_sample_ceil_y =
  RIP.unsafePerformIO hs_bindgen_bfdb2df41a163497

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_sample_floor_y@
foreign import ccall unsafe "hs_bindgen_f98eb3010e43c859" hs_bindgen_f98eb3010e43c859_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_sample_floor_y@
hs_bindgen_f98eb3010e43c859 :: IO (RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t))
hs_bindgen_f98eb3010e43c859 =
  RIP.fromFFIType hs_bindgen_f98eb3010e43c859_base

{-# NOINLINE pixman_sample_floor_y #-}
{-| __C declaration:__ @pixman_sample_floor_y@

    __defined at:__ @pixman.h 1542:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_floor_y :: RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t)
pixman_sample_floor_y =
  RIP.unsafePerformIO hs_bindgen_f98eb3010e43c859

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_edge_step@
foreign import ccall unsafe "hs_bindgen_8b4d54b8dc87572e" hs_bindgen_8b4d54b8dc87572e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_edge_step@
hs_bindgen_8b4d54b8dc87572e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> IO ()))
hs_bindgen_8b4d54b8dc87572e =
  RIP.fromFFIType hs_bindgen_8b4d54b8dc87572e_base

{-# NOINLINE pixman_edge_step #-}
{-| __C declaration:__ @pixman_edge_step@

    __defined at:__ @pixman.h 1546:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_step :: RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> IO ())
pixman_edge_step =
  RIP.unsafePerformIO hs_bindgen_8b4d54b8dc87572e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_edge_init@
foreign import ccall unsafe "hs_bindgen_8ccde2c19a4d8b13" hs_bindgen_8ccde2c19a4d8b13_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_edge_init@
hs_bindgen_8ccde2c19a4d8b13 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_8ccde2c19a4d8b13 =
  RIP.fromFFIType hs_bindgen_8ccde2c19a4d8b13_base

{-# NOINLINE pixman_edge_init #-}
{-| __C declaration:__ @pixman_edge_init@

    __defined at:__ @pixman.h 1550:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_init :: RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_edge_init =
  RIP.unsafePerformIO hs_bindgen_8ccde2c19a4d8b13

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_line_fixed_edge_init@
foreign import ccall unsafe "hs_bindgen_99f7daecdf6752e9" hs_bindgen_99f7daecdf6752e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_line_fixed_edge_init@
hs_bindgen_99f7daecdf6752e9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_line_fixed_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_99f7daecdf6752e9 =
  RIP.fromFFIType hs_bindgen_99f7daecdf6752e9_base

{-# NOINLINE pixman_line_fixed_edge_init #-}
{-| __C declaration:__ @pixman_line_fixed_edge_init@

    __defined at:__ @pixman.h 1559:16@

    __exported by:__ @pixman.h@
-}
pixman_line_fixed_edge_init :: RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_line_fixed_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_line_fixed_edge_init =
  RIP.unsafePerformIO hs_bindgen_99f7daecdf6752e9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_rasterize_edges@
foreign import ccall unsafe "hs_bindgen_31dbf187f362514c" hs_bindgen_31dbf187f362514c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_rasterize_edges@
hs_bindgen_31dbf187f362514c :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_edge_t) -> (RIP.Ptr Pixman_edge_t) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_31dbf187f362514c =
  RIP.fromFFIType hs_bindgen_31dbf187f362514c_base

{-# NOINLINE pixman_rasterize_edges #-}
{-| __C declaration:__ @pixman_rasterize_edges@

    __defined at:__ @pixman.h 1567:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_edges :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_edge_t) -> (RIP.Ptr Pixman_edge_t) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_rasterize_edges =
  RIP.unsafePerformIO hs_bindgen_31dbf187f362514c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_traps@
foreign import ccall unsafe "hs_bindgen_b90df7842b0e21c4" hs_bindgen_b90df7842b0e21c4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_traps@
hs_bindgen_b90df7842b0e21c4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> (PtrConst.PtrConst Pixman_trap_t) -> IO ()))
hs_bindgen_b90df7842b0e21c4 =
  RIP.fromFFIType hs_bindgen_b90df7842b0e21c4_base

{-# NOINLINE pixman_add_traps #-}
{-| __C declaration:__ @pixman_add_traps@

    __defined at:__ @pixman.h 1574:16@

    __exported by:__ @pixman.h@
-}
pixman_add_traps :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> (PtrConst.PtrConst Pixman_trap_t) -> IO ())
pixman_add_traps =
  RIP.unsafePerformIO hs_bindgen_b90df7842b0e21c4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_trapezoids@
foreign import ccall unsafe "hs_bindgen_b2e1a481987a83ab" hs_bindgen_b2e1a481987a83ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_trapezoids@
hs_bindgen_b2e1a481987a83ab :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ()))
hs_bindgen_b2e1a481987a83ab =
  RIP.fromFFIType hs_bindgen_b2e1a481987a83ab_base

{-# NOINLINE pixman_add_trapezoids #-}
{-| __C declaration:__ @pixman_add_trapezoids@

    __defined at:__ @pixman.h 1581:16@

    __exported by:__ @pixman.h@
-}
pixman_add_trapezoids :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ())
pixman_add_trapezoids =
  RIP.unsafePerformIO hs_bindgen_b2e1a481987a83ab

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_rasterize_trapezoid@
foreign import ccall unsafe "hs_bindgen_1acc24a031280c72" hs_bindgen_1acc24a031280c72_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_rasterize_trapezoid@
hs_bindgen_1acc24a031280c72 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_trapezoid_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_1acc24a031280c72 =
  RIP.fromFFIType hs_bindgen_1acc24a031280c72_base

{-# NOINLINE pixman_rasterize_trapezoid #-}
{-| __C declaration:__ @pixman_rasterize_trapezoid@

    __defined at:__ @pixman.h 1588:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_trapezoid :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_trapezoid_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_rasterize_trapezoid =
  RIP.unsafePerformIO hs_bindgen_1acc24a031280c72

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_trapezoids@
foreign import ccall unsafe "hs_bindgen_6f6d6ae1cd0c95a1" hs_bindgen_6f6d6ae1cd0c95a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_trapezoids@
hs_bindgen_6f6d6ae1cd0c95a1 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ()))
hs_bindgen_6f6d6ae1cd0c95a1 =
  RIP.fromFFIType hs_bindgen_6f6d6ae1cd0c95a1_base

{-# NOINLINE pixman_composite_trapezoids #-}
{-| __C declaration:__ @pixman_composite_trapezoids@

    __defined at:__ @pixman.h 1594:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_trapezoids :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ())
pixman_composite_trapezoids =
  RIP.unsafePerformIO hs_bindgen_6f6d6ae1cd0c95a1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_triangles@
foreign import ccall unsafe "hs_bindgen_26f07b3fd9d9d91e" hs_bindgen_26f07b3fd9d9d91e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_composite_triangles@
hs_bindgen_26f07b3fd9d9d91e :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ()))
hs_bindgen_26f07b3fd9d9d91e =
  RIP.fromFFIType hs_bindgen_26f07b3fd9d9d91e_base

{-# NOINLINE pixman_composite_triangles #-}
{-| __C declaration:__ @pixman_composite_triangles@

    __defined at:__ @pixman.h 1606:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_triangles :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ())
pixman_composite_triangles =
  RIP.unsafePerformIO hs_bindgen_26f07b3fd9d9d91e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_triangles@
foreign import ccall unsafe "hs_bindgen_26727bd1606365f9" hs_bindgen_26727bd1606365f9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_get_pixman_add_triangles@
hs_bindgen_26727bd1606365f9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ()))
hs_bindgen_26727bd1606365f9 =
  RIP.fromFFIType hs_bindgen_26727bd1606365f9_base

{-# NOINLINE pixman_add_triangles #-}
{-| __C declaration:__ @pixman_add_triangles@

    __defined at:__ @pixman.h 1618:12@

    __exported by:__ @pixman.h@
-}
pixman_add_triangles :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ())
pixman_add_triangles =
  RIP.unsafePerformIO hs_bindgen_26727bd1606365f9
