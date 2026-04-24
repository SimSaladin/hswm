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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_identity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fead03fdc4408d83 (void)) ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_init_identity;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_point_3d */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_158c18915ee7ad43 (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_point_3d;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_2aa68e890b8aae7b (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_point;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_multiply */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8b7ee05b83a852bd (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_multiply;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e12635e3ff421181 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_scale;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_0523c08db41f607b (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_scale;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_rotate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b440e0d88ff61081 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_rotate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_rotate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_0008e797fd0e247b (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_rotate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6baa01bf5214126c (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e04f7d76b2872062 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_bounds */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_1e832a8d591a7679 (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_bounds;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_invert */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_78b0b3daf40470e3 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_invert;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_identity */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5d122634bdf0dbdf (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_identity;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4337b4c24675d9c2 (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_scale;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_int_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_23a72204a277800e (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_int_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f2fc6407630af25b (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_is_inverse;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_from_pixman_f_transform */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_35a1446cca1d531a (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_from_pixman_f_transform;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_from_pixman_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_54fb63b5a36b528e (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_from_pixman_transform;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_invert */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_78df1cef460fd205 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_invert;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b3c65d08b169ff41 (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_point;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_point_3d */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_62884c6dfd65b98d (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_point_3d;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_multiply */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cc8e4a45b4f09390 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_multiply;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_053460bee80edd5d (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_scale;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_41cd841fa2b71f82 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_scale;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_rotate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a1c97e777631ac73 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_rotate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_rotate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_bdadc517cd43b2b8 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_rotate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cdb9a70ee8254773 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c34f7e8b00b601ba (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_bounds */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c74eeeaf52af84a7 (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_bounds;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_identity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1b6fc8875b86404e (void)) ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_identity;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_set_static_pointers */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_532fe274a302c8b3 (void)) ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_set_static_pointers;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_79e6b82fa272e209 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_init;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ddc9b5bf442b1c7c (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region_init_rect;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3069b1703e0d9d31 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region_init_rects;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_22b1d75bdd49a5eb (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_init_with_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_feaccb17e09294d6 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_init_from_image;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_229eaa50289cac10 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_fini;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7217deec8dfd3eb2 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_00982bbbdb0b24a9 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_copy;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_87c3eca83c95346c (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_intersect;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f2db9f12cb001c00 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_union;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e6a3749aae75fd5f (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b4f1a0e301f45c36 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_04d7f4dab22febc5 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_subtract;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d014039fa4af24ba (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_inverse;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a6057ad586656e6e (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region_contains_point;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_81c87548e9fbd88c (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_contains_rectangle;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_7c9408eefd552f76 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_empty;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a9b7f51afea0eeef (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_not_empty;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_extents */"
  , "__attribute__ ((const))"
  , "pixman_box16_t *(*hs_bindgen_e5078a2053b17fc1 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ffe15d36014b0d24 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_n_rects;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box16_t *(*hs_bindgen_dc191ee8aa7fd985 (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_rectangles;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_7d059f5d8c9611a7 (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_equal;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_cbfe4c2dc86958a8 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_selfcheck;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ca3f6b90a242240a (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_reset;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bca6fe0273343aee (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_clear;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c46e49c01db895af (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_init;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b53f7c1cb9573f2b (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region32_init_rect;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9f5b675560302cd8 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_init_rects;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9865ccd273902b1b (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_init_with_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_258556866d1527ef (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_init_from_image;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d8ab96f034348a79 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_fini;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6284f05d075b07b5 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8e1ad0feca8a8aa9 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_copy;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b69307cdc3e76478 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_intersect;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_1c7e49a986fc678c (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_union;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_bc04910b850f7f2c (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a2c2a005007fadb5 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a2f2d4d31d74f111 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_subtract;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_0c7869ec124eeec5 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_inverse;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_6969fabb6d77a4e9 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region32_contains_point;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_31f8e896c9803db1 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_contains_rectangle;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a8bb82b47e85dfe5 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_empty;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_fea69c849c72d268 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_not_empty;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_extents */"
  , "__attribute__ ((const))"
  , "pixman_box32_t *(*hs_bindgen_c739057512371ea9 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c817fae4e3b325f (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_n_rects;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box32_t *(*hs_bindgen_a9a7220782d9eca7 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_rectangles;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_fa3fad8092fbe22c (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_equal;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_48cbc3c66b048725 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_selfcheck;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f57b7b0ac5848c9c (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_reset;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7f50c416aa385688 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_clear;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cb161006de44d9b0 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_init;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ef66d593b9a4c443 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rect;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rectf */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e16b3402e310d8a2 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rectf;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b6d2422ececf3370 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rects;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ba2c9e2dd7324bb1 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_with_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6bbe152b114cae5d (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_from_image;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dee9382f319e6017 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_fini;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_db5357d9d53fd2ad (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_translate;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_translatef */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_eec67e76ca3af89f (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_translatef;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8c2facfbd273e900 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_copy;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_35656130ff524824 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_intersect;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9f88d44f7819670c (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_union;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5a349666c36d07ec (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rectf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_755a087837bf877d (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_530f23e2251aaaaf (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union_rectf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_2810427ebb10ad2f (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_84cd574a2dd9ebcc (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_subtract;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_fed71e9d61fc617c (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_inverse;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_f31870069a2a49f4 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_point;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_pointf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4679c4caf13cd1a4 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_pointf;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_4fe5d0c114ff78dd (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_rectangle;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_2afc619c95fba254 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_empty;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_575abd78c0ab1192 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_not_empty;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_extents */"
  , "__attribute__ ((const))"
  , "pixman_box64f_t *(*hs_bindgen_db8a4e277f964c8e (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a32ca8a83fa2ce5 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_n_rects;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box64f_t *(*hs_bindgen_8c9e34d533827173 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_rectangles;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_575c42e3eddd1589 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_equal;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_acf78dc354c3132e (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_selfcheck;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f47806869e72ec73 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_reset;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5c3613e8dfc2b0a5 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_clear;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_blt */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_eb9eaee5217bd7e7 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_fill */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3f935b8493090451 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_version */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_598a646b514016c8 (void)) (void)"
  , "{"
  , "  return &pixman_version;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_1d1811e1b60cba17 (void)) (void)"
  , "{"
  , "  return &pixman_version_string;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_format_supported_destination */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_38a44b94fb838356 (void)) ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return &pixman_format_supported_destination;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_format_supported_source */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e3cdf3f83a25991e (void)) ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return &pixman_format_supported_source;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_solid_fill */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_896c4fa920f1158f (void)) ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_create_solid_fill;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_linear_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_41e35ea8cfc8b4c2 (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_create_linear_gradient;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_radial_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_02c14a226d367f59 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_conical_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_cab763e232b53fe6 (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_create_conical_gradient;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_bits */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_5970b93008fad135 (void)) ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return &pixman_image_create_bits;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_bits_no_clear */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_e9ef3b7a9a46c54c (void)) ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return &pixman_image_create_bits_no_clear;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_ref */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_2600bafb90ac5273 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_ref;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_unref */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_315b1b86f75b2497 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_unref;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_destroy_function */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cd62f4d52f774b29 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_destroy_function;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_destroy_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_7a55663709020b47 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_destroy_data;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_baa365dccc87ba8d (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region32 */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_89088b859f2d3556 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region32;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region64f */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_dad7c11b577b5101 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region64f;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_has_client_clip */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0e204b36401cec56 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_has_client_clip;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_transform */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4dde608de6dbe7e0 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_transform;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_repeat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fffebeb6316e6591 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_repeat;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_dither */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5fdc8f03bab067aa (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_dither;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_dither_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ab6a8cf31d5cc994 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_dither_offset;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_filter */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_01080516b0861277 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_set_filter;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_source_clipping */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cdd644b3dea81799 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_source_clipping;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_alpha_map */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4bcb50884e7aeb61 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  return &pixman_image_set_alpha_map;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_component_alpha */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_939bf323693e03a5 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_component_alpha;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_component_alpha */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_cbcc9e40a5569020 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_component_alpha;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_accessors */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a80a14864d3812fe (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_accessors;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_indexed */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9117fdbd5718dfe2 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_indexed;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_data */"
  , "__attribute__ ((const))"
  , "uint32_t *(*hs_bindgen_f4310415cbb703a8 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_data;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_width */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_70a0c04de349d2f0 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_width;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_height */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d118f3f6ea70b29 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_height;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_stride */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2805635f0f8d7385 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_stride;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_depth */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_db2f3e0fbbf35ccb (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_depth;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_format */"
  , "__attribute__ ((const))"
  , "pixman_format_code_t (*hs_bindgen_762bb7ca6da283b4 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_format;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_filter_create_separable_convolution */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t *(*hs_bindgen_dc2b6ebb3a4164bd (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_fill_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_275e3f578a606433 (void)) ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_image_fill_rectangles;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_fill_boxes */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_32b44ce8b34fdf5b (void)) ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_image_fill_boxes;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_compute_composite_region */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_02fc82a9b3b3fb8c (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8c85e4e145c73aef (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite32 */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_765c594673336ffe (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite64f */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_08dc958796114fb1 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_disable_out_of_bounds_workaround */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_91df86690894b186 (void)) (void)"
  , "{"
  , "  return &pixman_disable_out_of_bounds_workaround;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_create */"
  , "__attribute__ ((const))"
  , "pixman_glyph_cache_t *(*hs_bindgen_3f663715f2f2503a (void)) (void)"
  , "{"
  , "  return &pixman_glyph_cache_create;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d1c31531aa84559d (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_destroy;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_freeze */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9eb3ebad7cc5a30d (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_freeze;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_thaw */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_466e3ba50a7e3ceb (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_thaw;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_lookup */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_e53cc86aafa55344 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_lookup;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_insert */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_0532e10ed6bce111 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_remove */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5f53f5434f1210fc (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_remove;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_get_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_35df3cb5819eab2f (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_glyph_get_extents;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_get_mask_format */"
  , "__attribute__ ((const))"
  , "pixman_format_code_t (*hs_bindgen_d433f443bdad60c1 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_get_mask_format;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_glyphs */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_75079933c2778d71 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_glyphs_no_mask */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_566ccca90eb4ed79 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_sample_ceil_y */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t (*hs_bindgen_f78ff5eb10a5be8b (void)) ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_sample_ceil_y;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_sample_floor_y */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t (*hs_bindgen_77d1a3da46cfc985 (void)) ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_sample_floor_y;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_edge_step */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_41d6937f5b1a25fa (void)) ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_edge_step;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_edge_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_07c5052dd43c1552 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_line_fixed_edge_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fe4379f056a49497 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_rasterize_edges */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_769148ca4984b3d8 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  return &pixman_rasterize_edges;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_traps */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cdc6a6b9165f6142 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_traps;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_trapezoids */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d057ed8ad1e0fa42 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_trapezoids;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_rasterize_trapezoid */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9b1c659a71ea73ff (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_rasterize_trapezoid;"
  , "}"
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_trapezoids */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d4da28f5e4e2dab (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_triangles */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c087cd5222570325 (void)) ("
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
  , "/* Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_triangles */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dd6b68f0b4b1a4aa (void)) ("
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

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_fead03fdc4408d83" hs_bindgen_fead03fdc4408d83_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_identity@
hs_bindgen_fead03fdc4408d83 :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> IO ()))
hs_bindgen_fead03fdc4408d83 =
  RIP.fromFFIType hs_bindgen_fead03fdc4408d83_base

{-# NOINLINE pixman_transform_init_identity #-}
{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity :: RIP.FunPtr (RIP.Ptr Pixman_transform -> IO ())
pixman_transform_init_identity =
  RIP.unsafePerformIO hs_bindgen_fead03fdc4408d83

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_158c18915ee7ad43" hs_bindgen_158c18915ee7ad43_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_point_3d@
hs_bindgen_158c18915ee7ad43 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> RIP.Ptr Pixman_vector -> IO Pixman_bool_t))
hs_bindgen_158c18915ee7ad43 =
  RIP.fromFFIType hs_bindgen_158c18915ee7ad43_base

{-# NOINLINE pixman_transform_point_3d #-}
{-| __C declaration:__ @pixman_transform_point_3d@

    __defined at:__ @pixman.h 191:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point_3d :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> RIP.Ptr Pixman_vector -> IO Pixman_bool_t)
pixman_transform_point_3d =
  RIP.unsafePerformIO hs_bindgen_158c18915ee7ad43

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_point@
foreign import ccall unsafe "hs_bindgen_2aa68e890b8aae7b" hs_bindgen_2aa68e890b8aae7b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_point@
hs_bindgen_2aa68e890b8aae7b :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> RIP.Ptr Pixman_vector -> IO Pixman_bool_t))
hs_bindgen_2aa68e890b8aae7b =
  RIP.fromFFIType hs_bindgen_2aa68e890b8aae7b_base

{-# NOINLINE pixman_transform_point #-}
{-| __C declaration:__ @pixman_transform_point@

    __defined at:__ @pixman.h 195:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> RIP.Ptr Pixman_vector -> IO Pixman_bool_t)
pixman_transform_point =
  RIP.unsafePerformIO hs_bindgen_2aa68e890b8aae7b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_multiply@
foreign import ccall unsafe "hs_bindgen_8b7ee05b83a852bd" hs_bindgen_8b7ee05b83a852bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_multiply@
hs_bindgen_8b7ee05b83a852bd :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> PtrConst.PtrConst Pixman_transform -> PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t))
hs_bindgen_8b7ee05b83a852bd =
  RIP.fromFFIType hs_bindgen_8b7ee05b83a852bd_base

{-# NOINLINE pixman_transform_multiply #-}
{-| __C declaration:__ @pixman_transform_multiply@

    __defined at:__ @pixman.h 199:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_multiply :: RIP.FunPtr (RIP.Ptr Pixman_transform -> PtrConst.PtrConst Pixman_transform -> PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t)
pixman_transform_multiply =
  RIP.unsafePerformIO hs_bindgen_8b7ee05b83a852bd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_e12635e3ff421181" hs_bindgen_e12635e3ff421181_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_scale@
hs_bindgen_e12635e3ff421181 :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_e12635e3ff421181 =
  RIP.fromFFIType hs_bindgen_e12635e3ff421181_base

{-# NOINLINE pixman_transform_init_scale #-}
{-| __C declaration:__ @pixman_transform_init_scale@

    __defined at:__ @pixman.h 204:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_scale :: RIP.FunPtr (RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_scale =
  RIP.unsafePerformIO hs_bindgen_e12635e3ff421181

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_scale@
foreign import ccall unsafe "hs_bindgen_0523c08db41f607b" hs_bindgen_0523c08db41f607b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_scale@
hs_bindgen_0523c08db41f607b :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_0523c08db41f607b =
  RIP.fromFFIType hs_bindgen_0523c08db41f607b_base

{-# NOINLINE pixman_transform_scale #-}
{-| __C declaration:__ @pixman_transform_scale@

    __defined at:__ @pixman.h 209:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_scale :: RIP.FunPtr (RIP.Ptr Pixman_transform -> RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_scale =
  RIP.unsafePerformIO hs_bindgen_0523c08db41f607b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_b440e0d88ff61081" hs_bindgen_b440e0d88ff61081_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_rotate@
hs_bindgen_b440e0d88ff61081 :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_b440e0d88ff61081 =
  RIP.fromFFIType hs_bindgen_b440e0d88ff61081_base

{-# NOINLINE pixman_transform_init_rotate #-}
{-| __C declaration:__ @pixman_transform_init_rotate@

    __defined at:__ @pixman.h 215:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_rotate :: RIP.FunPtr (RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_rotate =
  RIP.unsafePerformIO hs_bindgen_b440e0d88ff61081

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_rotate@
foreign import ccall unsafe "hs_bindgen_0008e797fd0e247b" hs_bindgen_0008e797fd0e247b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_rotate@
hs_bindgen_0008e797fd0e247b :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_0008e797fd0e247b =
  RIP.fromFFIType hs_bindgen_0008e797fd0e247b_base

{-# NOINLINE pixman_transform_rotate #-}
{-| __C declaration:__ @pixman_transform_rotate@

    __defined at:__ @pixman.h 220:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_rotate :: RIP.FunPtr (RIP.Ptr Pixman_transform -> RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_rotate =
  RIP.unsafePerformIO hs_bindgen_0008e797fd0e247b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_6baa01bf5214126c" hs_bindgen_6baa01bf5214126c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_init_translate@
hs_bindgen_6baa01bf5214126c :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_6baa01bf5214126c =
  RIP.fromFFIType hs_bindgen_6baa01bf5214126c_base

{-# NOINLINE pixman_transform_init_translate #-}
{-| __C declaration:__ @pixman_transform_init_translate@

    __defined at:__ @pixman.h 226:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_translate :: RIP.FunPtr (RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_translate =
  RIP.unsafePerformIO hs_bindgen_6baa01bf5214126c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_translate@
foreign import ccall unsafe "hs_bindgen_e04f7d76b2872062" hs_bindgen_e04f7d76b2872062_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_translate@
hs_bindgen_e04f7d76b2872062 :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_e04f7d76b2872062 =
  RIP.fromFFIType hs_bindgen_e04f7d76b2872062_base

{-# NOINLINE pixman_transform_translate #-}
{-| __C declaration:__ @pixman_transform_translate@

    __defined at:__ @pixman.h 231:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_translate :: RIP.FunPtr (RIP.Ptr Pixman_transform -> RIP.Ptr Pixman_transform -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_translate =
  RIP.unsafePerformIO hs_bindgen_e04f7d76b2872062

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_bounds@
foreign import ccall unsafe "hs_bindgen_1e832a8d591a7679" hs_bindgen_1e832a8d591a7679_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_bounds@
hs_bindgen_1e832a8d591a7679 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> RIP.Ptr Pixman_box16 -> IO Pixman_bool_t))
hs_bindgen_1e832a8d591a7679 =
  RIP.fromFFIType hs_bindgen_1e832a8d591a7679_base

{-# NOINLINE pixman_transform_bounds #-}
{-| __C declaration:__ @pixman_transform_bounds@

    __defined at:__ @pixman.h 237:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_bounds :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> RIP.Ptr Pixman_box16 -> IO Pixman_bool_t)
pixman_transform_bounds =
  RIP.unsafePerformIO hs_bindgen_1e832a8d591a7679

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_invert@
foreign import ccall unsafe "hs_bindgen_78b0b3daf40470e3" hs_bindgen_78b0b3daf40470e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_invert@
hs_bindgen_78b0b3daf40470e3 :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t))
hs_bindgen_78b0b3daf40470e3 =
  RIP.fromFFIType hs_bindgen_78b0b3daf40470e3_base

{-# NOINLINE pixman_transform_invert #-}
{-| __C declaration:__ @pixman_transform_invert@

    __defined at:__ @pixman.h 241:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_invert :: RIP.FunPtr (RIP.Ptr Pixman_transform -> PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t)
pixman_transform_invert =
  RIP.unsafePerformIO hs_bindgen_78b0b3daf40470e3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_identity@
foreign import ccall unsafe "hs_bindgen_5d122634bdf0dbdf" hs_bindgen_5d122634bdf0dbdf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_identity@
hs_bindgen_5d122634bdf0dbdf :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t))
hs_bindgen_5d122634bdf0dbdf =
  RIP.fromFFIType hs_bindgen_5d122634bdf0dbdf_base

{-# NOINLINE pixman_transform_is_identity #-}
{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t)
pixman_transform_is_identity =
  RIP.unsafePerformIO hs_bindgen_5d122634bdf0dbdf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_scale@
foreign import ccall unsafe "hs_bindgen_4337b4c24675d9c2" hs_bindgen_4337b4c24675d9c2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_scale@
hs_bindgen_4337b4c24675d9c2 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t))
hs_bindgen_4337b4c24675d9c2 =
  RIP.fromFFIType hs_bindgen_4337b4c24675d9c2_base

{-# NOINLINE pixman_transform_is_scale #-}
{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t)
pixman_transform_is_scale =
  RIP.unsafePerformIO hs_bindgen_4337b4c24675d9c2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_int_translate@
foreign import ccall unsafe "hs_bindgen_23a72204a277800e" hs_bindgen_23a72204a277800e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_int_translate@
hs_bindgen_23a72204a277800e :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t))
hs_bindgen_23a72204a277800e =
  RIP.fromFFIType hs_bindgen_23a72204a277800e_base

{-# NOINLINE pixman_transform_is_int_translate #-}
{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t)
pixman_transform_is_int_translate =
  RIP.unsafePerformIO hs_bindgen_23a72204a277800e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_inverse@
foreign import ccall unsafe "hs_bindgen_f2fc6407630af25b" hs_bindgen_f2fc6407630af25b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_is_inverse@
hs_bindgen_f2fc6407630af25b :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t))
hs_bindgen_f2fc6407630af25b =
  RIP.fromFFIType hs_bindgen_f2fc6407630af25b_base

{-# NOINLINE pixman_transform_is_inverse #-}
{-| __C declaration:__ @pixman_transform_is_inverse@

    __defined at:__ @pixman.h 254:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_inverse :: RIP.FunPtr (PtrConst.PtrConst Pixman_transform -> PtrConst.PtrConst Pixman_transform -> IO Pixman_bool_t)
pixman_transform_is_inverse =
  RIP.unsafePerformIO hs_bindgen_f2fc6407630af25b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_from_pixman_f_transform@
foreign import ccall unsafe "hs_bindgen_35a1446cca1d531a" hs_bindgen_35a1446cca1d531a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_transform_from_pixman_f_transform@
hs_bindgen_35a1446cca1d531a :: IO (RIP.FunPtr (RIP.Ptr Pixman_transform -> PtrConst.PtrConst Pixman_f_transform -> IO Pixman_bool_t))
hs_bindgen_35a1446cca1d531a =
  RIP.fromFFIType hs_bindgen_35a1446cca1d531a_base

{-# NOINLINE pixman_transform_from_pixman_f_transform #-}
{-| __C declaration:__ @pixman_transform_from_pixman_f_transform@

    __defined at:__ @pixman.h 275:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_from_pixman_f_transform :: RIP.FunPtr (RIP.Ptr Pixman_transform -> PtrConst.PtrConst Pixman_f_transform -> IO Pixman_bool_t)
pixman_transform_from_pixman_f_transform =
  RIP.unsafePerformIO hs_bindgen_35a1446cca1d531a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_from_pixman_transform@
foreign import ccall unsafe "hs_bindgen_54fb63b5a36b528e" hs_bindgen_54fb63b5a36b528e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_from_pixman_transform@
hs_bindgen_54fb63b5a36b528e :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> PtrConst.PtrConst Pixman_transform -> IO ()))
hs_bindgen_54fb63b5a36b528e =
  RIP.fromFFIType hs_bindgen_54fb63b5a36b528e_base

{-# NOINLINE pixman_f_transform_from_pixman_transform #-}
{-| __C declaration:__ @pixman_f_transform_from_pixman_transform@

    __defined at:__ @pixman.h 279:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_from_pixman_transform :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> PtrConst.PtrConst Pixman_transform -> IO ())
pixman_f_transform_from_pixman_transform =
  RIP.unsafePerformIO hs_bindgen_54fb63b5a36b528e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_invert@
foreign import ccall unsafe "hs_bindgen_78df1cef460fd205" hs_bindgen_78df1cef460fd205_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_invert@
hs_bindgen_78df1cef460fd205 :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> PtrConst.PtrConst Pixman_f_transform -> IO Pixman_bool_t))
hs_bindgen_78df1cef460fd205 =
  RIP.fromFFIType hs_bindgen_78df1cef460fd205_base

{-# NOINLINE pixman_f_transform_invert #-}
{-| __C declaration:__ @pixman_f_transform_invert@

    __defined at:__ @pixman.h 283:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_invert :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> PtrConst.PtrConst Pixman_f_transform -> IO Pixman_bool_t)
pixman_f_transform_invert =
  RIP.unsafePerformIO hs_bindgen_78df1cef460fd205

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_point@
foreign import ccall unsafe "hs_bindgen_b3c65d08b169ff41" hs_bindgen_b3c65d08b169ff41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_point@
hs_bindgen_b3c65d08b169ff41 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_f_transform -> RIP.Ptr Pixman_f_vector -> IO Pixman_bool_t))
hs_bindgen_b3c65d08b169ff41 =
  RIP.fromFFIType hs_bindgen_b3c65d08b169ff41_base

{-# NOINLINE pixman_f_transform_point #-}
{-| __C declaration:__ @pixman_f_transform_point@

    __defined at:__ @pixman.h 287:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point :: RIP.FunPtr (PtrConst.PtrConst Pixman_f_transform -> RIP.Ptr Pixman_f_vector -> IO Pixman_bool_t)
pixman_f_transform_point =
  RIP.unsafePerformIO hs_bindgen_b3c65d08b169ff41

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_62884c6dfd65b98d" hs_bindgen_62884c6dfd65b98d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_point_3d@
hs_bindgen_62884c6dfd65b98d :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_f_transform -> RIP.Ptr Pixman_f_vector -> IO ()))
hs_bindgen_62884c6dfd65b98d =
  RIP.fromFFIType hs_bindgen_62884c6dfd65b98d_base

{-# NOINLINE pixman_f_transform_point_3d #-}
{-| __C declaration:__ @pixman_f_transform_point_3d@

    __defined at:__ @pixman.h 291:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point_3d :: RIP.FunPtr (PtrConst.PtrConst Pixman_f_transform -> RIP.Ptr Pixman_f_vector -> IO ())
pixman_f_transform_point_3d =
  RIP.unsafePerformIO hs_bindgen_62884c6dfd65b98d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_multiply@
foreign import ccall unsafe "hs_bindgen_cc8e4a45b4f09390" hs_bindgen_cc8e4a45b4f09390_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_multiply@
hs_bindgen_cc8e4a45b4f09390 :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> PtrConst.PtrConst Pixman_f_transform -> PtrConst.PtrConst Pixman_f_transform -> IO ()))
hs_bindgen_cc8e4a45b4f09390 =
  RIP.fromFFIType hs_bindgen_cc8e4a45b4f09390_base

{-# NOINLINE pixman_f_transform_multiply #-}
{-| __C declaration:__ @pixman_f_transform_multiply@

    __defined at:__ @pixman.h 295:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_multiply :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> PtrConst.PtrConst Pixman_f_transform -> PtrConst.PtrConst Pixman_f_transform -> IO ())
pixman_f_transform_multiply =
  RIP.unsafePerformIO hs_bindgen_cc8e4a45b4f09390

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_053460bee80edd5d" hs_bindgen_053460bee80edd5d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_scale@
hs_bindgen_053460bee80edd5d :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_053460bee80edd5d =
  RIP.fromFFIType hs_bindgen_053460bee80edd5d_base

{-# NOINLINE pixman_f_transform_init_scale #-}
{-| __C declaration:__ @pixman_f_transform_init_scale@

    __defined at:__ @pixman.h 300:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_scale :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_scale =
  RIP.unsafePerformIO hs_bindgen_053460bee80edd5d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_scale@
foreign import ccall unsafe "hs_bindgen_41cd841fa2b71f82" hs_bindgen_41cd841fa2b71f82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_scale@
hs_bindgen_41cd841fa2b71f82 :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_41cd841fa2b71f82 =
  RIP.fromFFIType hs_bindgen_41cd841fa2b71f82_base

{-# NOINLINE pixman_f_transform_scale #-}
{-| __C declaration:__ @pixman_f_transform_scale@

    __defined at:__ @pixman.h 305:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_scale :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_scale =
  RIP.unsafePerformIO hs_bindgen_41cd841fa2b71f82

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_a1c97e777631ac73" hs_bindgen_a1c97e777631ac73_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_rotate@
hs_bindgen_a1c97e777631ac73 :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_a1c97e777631ac73 =
  RIP.fromFFIType hs_bindgen_a1c97e777631ac73_base

{-# NOINLINE pixman_f_transform_init_rotate #-}
{-| __C declaration:__ @pixman_f_transform_init_rotate@

    __defined at:__ @pixman.h 311:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_rotate :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_rotate =
  RIP.unsafePerformIO hs_bindgen_a1c97e777631ac73

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_rotate@
foreign import ccall unsafe "hs_bindgen_bdadc517cd43b2b8" hs_bindgen_bdadc517cd43b2b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_rotate@
hs_bindgen_bdadc517cd43b2b8 :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_bdadc517cd43b2b8 =
  RIP.fromFFIType hs_bindgen_bdadc517cd43b2b8_base

{-# NOINLINE pixman_f_transform_rotate #-}
{-| __C declaration:__ @pixman_f_transform_rotate@

    __defined at:__ @pixman.h 316:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_rotate :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_rotate =
  RIP.unsafePerformIO hs_bindgen_bdadc517cd43b2b8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_cdb9a70ee8254773" hs_bindgen_cdb9a70ee8254773_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_translate@
hs_bindgen_cdb9a70ee8254773 :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_cdb9a70ee8254773 =
  RIP.fromFFIType hs_bindgen_cdb9a70ee8254773_base

{-# NOINLINE pixman_f_transform_init_translate #-}
{-| __C declaration:__ @pixman_f_transform_init_translate@

    __defined at:__ @pixman.h 322:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_translate :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_translate =
  RIP.unsafePerformIO hs_bindgen_cdb9a70ee8254773

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_translate@
foreign import ccall unsafe "hs_bindgen_c34f7e8b00b601ba" hs_bindgen_c34f7e8b00b601ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_translate@
hs_bindgen_c34f7e8b00b601ba :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_c34f7e8b00b601ba =
  RIP.fromFFIType hs_bindgen_c34f7e8b00b601ba_base

{-# NOINLINE pixman_f_transform_translate #-}
{-| __C declaration:__ @pixman_f_transform_translate@

    __defined at:__ @pixman.h 327:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_translate :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> RIP.Ptr Pixman_f_transform -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_translate =
  RIP.unsafePerformIO hs_bindgen_c34f7e8b00b601ba

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_bounds@
foreign import ccall unsafe "hs_bindgen_c74eeeaf52af84a7" hs_bindgen_c74eeeaf52af84a7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_bounds@
hs_bindgen_c74eeeaf52af84a7 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_f_transform -> RIP.Ptr Pixman_box16 -> IO Pixman_bool_t))
hs_bindgen_c74eeeaf52af84a7 =
  RIP.fromFFIType hs_bindgen_c74eeeaf52af84a7_base

{-# NOINLINE pixman_f_transform_bounds #-}
{-| __C declaration:__ @pixman_f_transform_bounds@

    __defined at:__ @pixman.h 333:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_bounds :: RIP.FunPtr (PtrConst.PtrConst Pixman_f_transform -> RIP.Ptr Pixman_box16 -> IO Pixman_bool_t)
pixman_f_transform_bounds =
  RIP.unsafePerformIO hs_bindgen_c74eeeaf52af84a7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_1b6fc8875b86404e" hs_bindgen_1b6fc8875b86404e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_f_transform_init_identity@
hs_bindgen_1b6fc8875b86404e :: IO (RIP.FunPtr (RIP.Ptr Pixman_f_transform -> IO ()))
hs_bindgen_1b6fc8875b86404e =
  RIP.fromFFIType hs_bindgen_1b6fc8875b86404e_base

{-# NOINLINE pixman_f_transform_init_identity #-}
{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity :: RIP.FunPtr (RIP.Ptr Pixman_f_transform -> IO ())
pixman_f_transform_init_identity =
  RIP.unsafePerformIO hs_bindgen_1b6fc8875b86404e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_set_static_pointers@
foreign import ccall unsafe "hs_bindgen_532fe274a302c8b3" hs_bindgen_532fe274a302c8b3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_set_static_pointers@
hs_bindgen_532fe274a302c8b3 :: IO (RIP.FunPtr (RIP.Ptr Pixman_box16_t -> RIP.Ptr Pixman_region16_data_t -> RIP.Ptr Pixman_region16_data_t -> IO ()))
hs_bindgen_532fe274a302c8b3 =
  RIP.fromFFIType hs_bindgen_532fe274a302c8b3_base

{-# NOINLINE pixman_region_set_static_pointers #-}
{-| __C declaration:__ @pixman_region_set_static_pointers@

    __defined at:__ @pixman.h 496:6@

    __exported by:__ @pixman.h@
-}
pixman_region_set_static_pointers :: RIP.FunPtr (RIP.Ptr Pixman_box16_t -> RIP.Ptr Pixman_region16_data_t -> RIP.Ptr Pixman_region16_data_t -> IO ())
pixman_region_set_static_pointers =
  RIP.unsafePerformIO hs_bindgen_532fe274a302c8b3

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init@
foreign import ccall unsafe "hs_bindgen_79e6b82fa272e209" hs_bindgen_79e6b82fa272e209_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init@
hs_bindgen_79e6b82fa272e209 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO ()))
hs_bindgen_79e6b82fa272e209 =
  RIP.fromFFIType hs_bindgen_79e6b82fa272e209_base

{-# NOINLINE pixman_region_init #-}
{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO ())
pixman_region_init =
  RIP.unsafePerformIO hs_bindgen_79e6b82fa272e209

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_rect@
foreign import ccall unsafe "hs_bindgen_ddc9b5bf442b1c7c" hs_bindgen_ddc9b5bf442b1c7c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_rect@
hs_bindgen_ddc9b5bf442b1c7c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_ddc9b5bf442b1c7c =
  RIP.fromFFIType hs_bindgen_ddc9b5bf442b1c7c_base

{-# NOINLINE pixman_region_init_rect #-}
{-| __C declaration:__ @pixman_region_init_rect@

    __defined at:__ @pixman.h 505:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rect :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region_init_rect =
  RIP.unsafePerformIO hs_bindgen_ddc9b5bf442b1c7c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_rects@
foreign import ccall unsafe "hs_bindgen_3069b1703e0d9d31" hs_bindgen_3069b1703e0d9d31_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_rects@
hs_bindgen_3069b1703e0d9d31 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_3069b1703e0d9d31 =
  RIP.fromFFIType hs_bindgen_3069b1703e0d9d31_base

{-# NOINLINE pixman_region_init_rects #-}
{-| __C declaration:__ @pixman_region_init_rects@

    __defined at:__ @pixman.h 512:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rects :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> RIP.CInt -> IO Pixman_bool_t)
pixman_region_init_rects =
  RIP.unsafePerformIO hs_bindgen_3069b1703e0d9d31

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_with_extents@
foreign import ccall unsafe "hs_bindgen_22b1d75bdd49a5eb" hs_bindgen_22b1d75bdd49a5eb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_with_extents@
hs_bindgen_22b1d75bdd49a5eb :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO ()))
hs_bindgen_22b1d75bdd49a5eb =
  RIP.fromFFIType hs_bindgen_22b1d75bdd49a5eb_base

{-# NOINLINE pixman_region_init_with_extents #-}
{-| __C declaration:__ @pixman_region_init_with_extents@

    __defined at:__ @pixman.h 517:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_with_extents :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO ())
pixman_region_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_22b1d75bdd49a5eb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_from_image@
foreign import ccall unsafe "hs_bindgen_feaccb17e09294d6" hs_bindgen_feaccb17e09294d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_init_from_image@
hs_bindgen_feaccb17e09294d6 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.Ptr Pixman_image_t -> IO ()))
hs_bindgen_feaccb17e09294d6 =
  RIP.fromFFIType hs_bindgen_feaccb17e09294d6_base

{-# NOINLINE pixman_region_init_from_image #-}
{-| __C declaration:__ @pixman_region_init_from_image@

    __defined at:__ @pixman.h 521:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_from_image :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.Ptr Pixman_image_t -> IO ())
pixman_region_init_from_image =
  RIP.unsafePerformIO hs_bindgen_feaccb17e09294d6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_fini@
foreign import ccall unsafe "hs_bindgen_229eaa50289cac10" hs_bindgen_229eaa50289cac10_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_fini@
hs_bindgen_229eaa50289cac10 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO ()))
hs_bindgen_229eaa50289cac10 =
  RIP.fromFFIType hs_bindgen_229eaa50289cac10_base

{-# NOINLINE pixman_region_fini #-}
{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO ())
pixman_region_fini =
  RIP.unsafePerformIO hs_bindgen_229eaa50289cac10

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_translate@
foreign import ccall unsafe "hs_bindgen_7217deec8dfd3eb2" hs_bindgen_7217deec8dfd3eb2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_translate@
hs_bindgen_7217deec8dfd3eb2 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_7217deec8dfd3eb2 =
  RIP.fromFFIType hs_bindgen_7217deec8dfd3eb2_base

{-# NOINLINE pixman_region_translate #-}
{-| __C declaration:__ @pixman_region_translate@

    __defined at:__ @pixman.h 530:25@

    __exported by:__ @pixman.h@
-}
pixman_region_translate :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region_translate =
  RIP.unsafePerformIO hs_bindgen_7217deec8dfd3eb2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_copy@
foreign import ccall unsafe "hs_bindgen_00982bbbdb0b24a9" hs_bindgen_00982bbbdb0b24a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_copy@
hs_bindgen_00982bbbdb0b24a9 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_00982bbbdb0b24a9 =
  RIP.fromFFIType hs_bindgen_00982bbbdb0b24a9_base

{-# NOINLINE pixman_region_copy #-}
{-| __C declaration:__ @pixman_region_copy@

    __defined at:__ @pixman.h 535:25@

    __exported by:__ @pixman.h@
-}
pixman_region_copy :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_copy =
  RIP.unsafePerformIO hs_bindgen_00982bbbdb0b24a9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_intersect@
foreign import ccall unsafe "hs_bindgen_87c3eca83c95346c" hs_bindgen_87c3eca83c95346c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_intersect@
hs_bindgen_87c3eca83c95346c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_87c3eca83c95346c =
  RIP.fromFFIType hs_bindgen_87c3eca83c95346c_base

{-# NOINLINE pixman_region_intersect #-}
{-| __C declaration:__ @pixman_region_intersect@

    __defined at:__ @pixman.h 539:25@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_intersect =
  RIP.unsafePerformIO hs_bindgen_87c3eca83c95346c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_union@
foreign import ccall unsafe "hs_bindgen_f2db9f12cb001c00" hs_bindgen_f2db9f12cb001c00_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_union@
hs_bindgen_f2db9f12cb001c00 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_f2db9f12cb001c00 =
  RIP.fromFFIType hs_bindgen_f2db9f12cb001c00_base

{-# NOINLINE pixman_region_union #-}
{-| __C declaration:__ @pixman_region_union@

    __defined at:__ @pixman.h 544:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_union =
  RIP.unsafePerformIO hs_bindgen_f2db9f12cb001c00

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_union_rect@
foreign import ccall unsafe "hs_bindgen_e6a3749aae75fd5f" hs_bindgen_e6a3749aae75fd5f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_union_rect@
hs_bindgen_e6a3749aae75fd5f :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_e6a3749aae75fd5f =
  RIP.fromFFIType hs_bindgen_e6a3749aae75fd5f_base

{-# NOINLINE pixman_region_union_rect #-}
{-| __C declaration:__ @pixman_region_union_rect@

    __defined at:__ @pixman.h 549:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union_rect :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region_union_rect =
  RIP.unsafePerformIO hs_bindgen_e6a3749aae75fd5f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_intersect_rect@
foreign import ccall unsafe "hs_bindgen_b4f1a0e301f45c36" hs_bindgen_b4f1a0e301f45c36_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_intersect_rect@
hs_bindgen_b4f1a0e301f45c36 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_b4f1a0e301f45c36 =
  RIP.fromFFIType hs_bindgen_b4f1a0e301f45c36_base

{-# NOINLINE pixman_region_intersect_rect #-}
{-| __C declaration:__ @pixman_region_intersect_rect@

    __defined at:__ @pixman.h 557:16@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect_rect :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_b4f1a0e301f45c36

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_subtract@
foreign import ccall unsafe "hs_bindgen_04d7f4dab22febc5" hs_bindgen_04d7f4dab22febc5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_subtract@
hs_bindgen_04d7f4dab22febc5 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_04d7f4dab22febc5 =
  RIP.fromFFIType hs_bindgen_04d7f4dab22febc5_base

{-# NOINLINE pixman_region_subtract #-}
{-| __C declaration:__ @pixman_region_subtract@

    __defined at:__ @pixman.h 565:25@

    __exported by:__ @pixman.h@
-}
pixman_region_subtract :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_subtract =
  RIP.unsafePerformIO hs_bindgen_04d7f4dab22febc5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_inverse@
foreign import ccall unsafe "hs_bindgen_d014039fa4af24ba" hs_bindgen_d014039fa4af24ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_inverse@
hs_bindgen_d014039fa4af24ba :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO Pixman_bool_t))
hs_bindgen_d014039fa4af24ba =
  RIP.fromFFIType hs_bindgen_d014039fa4af24ba_base

{-# NOINLINE pixman_region_inverse #-}
{-| __C declaration:__ @pixman_region_inverse@

    __defined at:__ @pixman.h 570:25@

    __exported by:__ @pixman.h@
-}
pixman_region_inverse :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO Pixman_bool_t)
pixman_region_inverse =
  RIP.unsafePerformIO hs_bindgen_d014039fa4af24ba

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_contains_point@
foreign import ccall unsafe "hs_bindgen_a6057ad586656e6e" hs_bindgen_a6057ad586656e6e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_contains_point@
hs_bindgen_a6057ad586656e6e :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_box16_t -> IO Pixman_bool_t))
hs_bindgen_a6057ad586656e6e =
  RIP.fromFFIType hs_bindgen_a6057ad586656e6e_base

{-# NOINLINE pixman_region_contains_point #-}
{-| __C declaration:__ @pixman_region_contains_point@

    __defined at:__ @pixman.h 575:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_point :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_box16_t -> IO Pixman_bool_t)
pixman_region_contains_point =
  RIP.unsafePerformIO hs_bindgen_a6057ad586656e6e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_81c87548e9fbd88c" hs_bindgen_81c87548e9fbd88c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_contains_rectangle@
hs_bindgen_81c87548e9fbd88c :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO Pixman_region_overlap_t))
hs_bindgen_81c87548e9fbd88c =
  RIP.fromFFIType hs_bindgen_81c87548e9fbd88c_base

{-# NOINLINE pixman_region_contains_rectangle #-}
{-| __C declaration:__ @pixman_region_contains_rectangle@

    __defined at:__ @pixman.h 581:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_rectangle :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO Pixman_region_overlap_t)
pixman_region_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_81c87548e9fbd88c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_empty@
foreign import ccall unsafe "hs_bindgen_7c9408eefd552f76" hs_bindgen_7c9408eefd552f76_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_empty@
hs_bindgen_7c9408eefd552f76 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_7c9408eefd552f76 =
  RIP.fromFFIType hs_bindgen_7c9408eefd552f76_base

{-# NOINLINE pixman_region_empty #-}
{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_empty =
  RIP.unsafePerformIO hs_bindgen_7c9408eefd552f76

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_not_empty@
foreign import ccall unsafe "hs_bindgen_a9b7f51afea0eeef" hs_bindgen_a9b7f51afea0eeef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_not_empty@
hs_bindgen_a9b7f51afea0eeef :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_a9b7f51afea0eeef =
  RIP.fromFFIType hs_bindgen_a9b7f51afea0eeef_base

{-# NOINLINE pixman_region_not_empty #-}
{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_not_empty =
  RIP.unsafePerformIO hs_bindgen_a9b7f51afea0eeef

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_extents@
foreign import ccall unsafe "hs_bindgen_e5078a2053b17fc1" hs_bindgen_e5078a2053b17fc1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_extents@
hs_bindgen_e5078a2053b17fc1 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO (RIP.Ptr Pixman_box16_t)))
hs_bindgen_e5078a2053b17fc1 =
  RIP.fromFFIType hs_bindgen_e5078a2053b17fc1_base

{-# NOINLINE pixman_region_extents #-}
{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO (RIP.Ptr Pixman_box16_t))
pixman_region_extents =
  RIP.unsafePerformIO hs_bindgen_e5078a2053b17fc1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_n_rects@
foreign import ccall unsafe "hs_bindgen_ffe15d36014b0d24" hs_bindgen_ffe15d36014b0d24_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_n_rects@
hs_bindgen_ffe15d36014b0d24 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO RIP.CInt))
hs_bindgen_ffe15d36014b0d24 =
  RIP.fromFFIType hs_bindgen_ffe15d36014b0d24_base

{-# NOINLINE pixman_region_n_rects #-}
{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> IO RIP.CInt)
pixman_region_n_rects =
  RIP.unsafePerformIO hs_bindgen_ffe15d36014b0d24

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_rectangles@
foreign import ccall unsafe "hs_bindgen_dc191ee8aa7fd985" hs_bindgen_dc191ee8aa7fd985_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_rectangles@
hs_bindgen_dc191ee8aa7fd985 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> RIP.Ptr RIP.CInt -> IO (RIP.Ptr Pixman_box16_t)))
hs_bindgen_dc191ee8aa7fd985 =
  RIP.fromFFIType hs_bindgen_dc191ee8aa7fd985_base

{-# NOINLINE pixman_region_rectangles #-}
{-| __C declaration:__ @pixman_region_rectangles@

    __defined at:__ @pixman.h 597:25@

    __exported by:__ @pixman.h@
-}
pixman_region_rectangles :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> RIP.Ptr RIP.CInt -> IO (RIP.Ptr Pixman_box16_t))
pixman_region_rectangles =
  RIP.unsafePerformIO hs_bindgen_dc191ee8aa7fd985

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_equal@
foreign import ccall unsafe "hs_bindgen_7d059f5d8c9611a7" hs_bindgen_7d059f5d8c9611a7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_equal@
hs_bindgen_7d059f5d8c9611a7 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_7d059f5d8c9611a7 =
  RIP.fromFFIType hs_bindgen_7d059f5d8c9611a7_base

{-# NOINLINE pixman_region_equal #-}
{-| __C declaration:__ @pixman_region_equal@

    __defined at:__ @pixman.h 601:25@

    __exported by:__ @pixman.h@
-}
pixman_region_equal :: RIP.FunPtr (PtrConst.PtrConst Pixman_region16_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_equal =
  RIP.unsafePerformIO hs_bindgen_7d059f5d8c9611a7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_selfcheck@
foreign import ccall unsafe "hs_bindgen_cbfe4c2dc86958a8" hs_bindgen_cbfe4c2dc86958a8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_selfcheck@
hs_bindgen_cbfe4c2dc86958a8 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_cbfe4c2dc86958a8 =
  RIP.fromFFIType hs_bindgen_cbfe4c2dc86958a8_base

{-# NOINLINE pixman_region_selfcheck #-}
{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO Pixman_bool_t)
pixman_region_selfcheck =
  RIP.unsafePerformIO hs_bindgen_cbfe4c2dc86958a8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_reset@
foreign import ccall unsafe "hs_bindgen_ca3f6b90a242240a" hs_bindgen_ca3f6b90a242240a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_reset@
hs_bindgen_ca3f6b90a242240a :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO ()))
hs_bindgen_ca3f6b90a242240a =
  RIP.fromFFIType hs_bindgen_ca3f6b90a242240a_base

{-# NOINLINE pixman_region_reset #-}
{-| __C declaration:__ @pixman_region_reset@

    __defined at:__ @pixman.h 608:25@

    __exported by:__ @pixman.h@
-}
pixman_region_reset :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> PtrConst.PtrConst Pixman_box16_t -> IO ())
pixman_region_reset =
  RIP.unsafePerformIO hs_bindgen_ca3f6b90a242240a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_clear@
foreign import ccall unsafe "hs_bindgen_bca6fe0273343aee" hs_bindgen_bca6fe0273343aee_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region_clear@
hs_bindgen_bca6fe0273343aee :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO ()))
hs_bindgen_bca6fe0273343aee =
  RIP.fromFFIType hs_bindgen_bca6fe0273343aee_base

{-# NOINLINE pixman_region_clear #-}
{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> IO ())
pixman_region_clear =
  RIP.unsafePerformIO hs_bindgen_bca6fe0273343aee

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init@
foreign import ccall unsafe "hs_bindgen_c46e49c01db895af" hs_bindgen_c46e49c01db895af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init@
hs_bindgen_c46e49c01db895af :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO ()))
hs_bindgen_c46e49c01db895af =
  RIP.fromFFIType hs_bindgen_c46e49c01db895af_base

{-# NOINLINE pixman_region32_init #-}
{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO ())
pixman_region32_init =
  RIP.unsafePerformIO hs_bindgen_c46e49c01db895af

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_rect@
foreign import ccall unsafe "hs_bindgen_b53f7c1cb9573f2b" hs_bindgen_b53f7c1cb9573f2b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_rect@
hs_bindgen_b53f7c1cb9573f2b :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_b53f7c1cb9573f2b =
  RIP.fromFFIType hs_bindgen_b53f7c1cb9573f2b_base

{-# NOINLINE pixman_region32_init_rect #-}
{-| __C declaration:__ @pixman_region32_init_rect@

    __defined at:__ @pixman.h 649:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rect :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region32_init_rect =
  RIP.unsafePerformIO hs_bindgen_b53f7c1cb9573f2b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_rects@
foreign import ccall unsafe "hs_bindgen_9f5b675560302cd8" hs_bindgen_9f5b675560302cd8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_rects@
hs_bindgen_9f5b675560302cd8 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_9f5b675560302cd8 =
  RIP.fromFFIType hs_bindgen_9f5b675560302cd8_base

{-# NOINLINE pixman_region32_init_rects #-}
{-| __C declaration:__ @pixman_region32_init_rects@

    __defined at:__ @pixman.h 656:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rects :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> RIP.CInt -> IO Pixman_bool_t)
pixman_region32_init_rects =
  RIP.unsafePerformIO hs_bindgen_9f5b675560302cd8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_with_extents@
foreign import ccall unsafe "hs_bindgen_9865ccd273902b1b" hs_bindgen_9865ccd273902b1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_with_extents@
hs_bindgen_9865ccd273902b1b :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO ()))
hs_bindgen_9865ccd273902b1b =
  RIP.fromFFIType hs_bindgen_9865ccd273902b1b_base

{-# NOINLINE pixman_region32_init_with_extents #-}
{-| __C declaration:__ @pixman_region32_init_with_extents@

    __defined at:__ @pixman.h 661:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_with_extents :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO ())
pixman_region32_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_9865ccd273902b1b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_from_image@
foreign import ccall unsafe "hs_bindgen_258556866d1527ef" hs_bindgen_258556866d1527ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_init_from_image@
hs_bindgen_258556866d1527ef :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> RIP.Ptr Pixman_image_t -> IO ()))
hs_bindgen_258556866d1527ef =
  RIP.fromFFIType hs_bindgen_258556866d1527ef_base

{-# NOINLINE pixman_region32_init_from_image #-}
{-| __C declaration:__ @pixman_region32_init_from_image@

    __defined at:__ @pixman.h 665:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_from_image :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> RIP.Ptr Pixman_image_t -> IO ())
pixman_region32_init_from_image =
  RIP.unsafePerformIO hs_bindgen_258556866d1527ef

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_fini@
foreign import ccall unsafe "hs_bindgen_d8ab96f034348a79" hs_bindgen_d8ab96f034348a79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_fini@
hs_bindgen_d8ab96f034348a79 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO ()))
hs_bindgen_d8ab96f034348a79 =
  RIP.fromFFIType hs_bindgen_d8ab96f034348a79_base

{-# NOINLINE pixman_region32_fini #-}
{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO ())
pixman_region32_fini =
  RIP.unsafePerformIO hs_bindgen_d8ab96f034348a79

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_translate@
foreign import ccall unsafe "hs_bindgen_6284f05d075b07b5" hs_bindgen_6284f05d075b07b5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_translate@
hs_bindgen_6284f05d075b07b5 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_6284f05d075b07b5 =
  RIP.fromFFIType hs_bindgen_6284f05d075b07b5_base

{-# NOINLINE pixman_region32_translate #-}
{-| __C declaration:__ @pixman_region32_translate@

    __defined at:__ @pixman.h 674:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_translate :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region32_translate =
  RIP.unsafePerformIO hs_bindgen_6284f05d075b07b5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_copy@
foreign import ccall unsafe "hs_bindgen_8e1ad0feca8a8aa9" hs_bindgen_8e1ad0feca8a8aa9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_copy@
hs_bindgen_8e1ad0feca8a8aa9 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_8e1ad0feca8a8aa9 =
  RIP.fromFFIType hs_bindgen_8e1ad0feca8a8aa9_base

{-# NOINLINE pixman_region32_copy #-}
{-| __C declaration:__ @pixman_region32_copy@

    __defined at:__ @pixman.h 679:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_copy :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_copy =
  RIP.unsafePerformIO hs_bindgen_8e1ad0feca8a8aa9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_intersect@
foreign import ccall unsafe "hs_bindgen_b69307cdc3e76478" hs_bindgen_b69307cdc3e76478_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_intersect@
hs_bindgen_b69307cdc3e76478 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_b69307cdc3e76478 =
  RIP.fromFFIType hs_bindgen_b69307cdc3e76478_base

{-# NOINLINE pixman_region32_intersect #-}
{-| __C declaration:__ @pixman_region32_intersect@

    __defined at:__ @pixman.h 683:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_intersect =
  RIP.unsafePerformIO hs_bindgen_b69307cdc3e76478

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_union@
foreign import ccall unsafe "hs_bindgen_1c7e49a986fc678c" hs_bindgen_1c7e49a986fc678c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_union@
hs_bindgen_1c7e49a986fc678c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_1c7e49a986fc678c =
  RIP.fromFFIType hs_bindgen_1c7e49a986fc678c_base

{-# NOINLINE pixman_region32_union #-}
{-| __C declaration:__ @pixman_region32_union@

    __defined at:__ @pixman.h 688:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_union =
  RIP.unsafePerformIO hs_bindgen_1c7e49a986fc678c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_intersect_rect@
foreign import ccall unsafe "hs_bindgen_bc04910b850f7f2c" hs_bindgen_bc04910b850f7f2c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_intersect_rect@
hs_bindgen_bc04910b850f7f2c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_bc04910b850f7f2c =
  RIP.fromFFIType hs_bindgen_bc04910b850f7f2c_base

{-# NOINLINE pixman_region32_intersect_rect #-}
{-| __C declaration:__ @pixman_region32_intersect_rect@

    __defined at:__ @pixman.h 693:16@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect_rect :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region32_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_bc04910b850f7f2c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_union_rect@
foreign import ccall unsafe "hs_bindgen_a2c2a005007fadb5" hs_bindgen_a2c2a005007fadb5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_union_rect@
hs_bindgen_a2c2a005007fadb5 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_a2c2a005007fadb5 =
  RIP.fromFFIType hs_bindgen_a2c2a005007fadb5_base

{-# NOINLINE pixman_region32_union_rect #-}
{-| __C declaration:__ @pixman_region32_union_rect@

    __defined at:__ @pixman.h 701:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union_rect :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region32_union_rect =
  RIP.unsafePerformIO hs_bindgen_a2c2a005007fadb5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_subtract@
foreign import ccall unsafe "hs_bindgen_a2f2d4d31d74f111" hs_bindgen_a2f2d4d31d74f111_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_subtract@
hs_bindgen_a2f2d4d31d74f111 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_a2f2d4d31d74f111 =
  RIP.fromFFIType hs_bindgen_a2f2d4d31d74f111_base

{-# NOINLINE pixman_region32_subtract #-}
{-| __C declaration:__ @pixman_region32_subtract@

    __defined at:__ @pixman.h 709:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_subtract :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_subtract =
  RIP.unsafePerformIO hs_bindgen_a2f2d4d31d74f111

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_inverse@
foreign import ccall unsafe "hs_bindgen_0c7869ec124eeec5" hs_bindgen_0c7869ec124eeec5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_inverse@
hs_bindgen_0c7869ec124eeec5 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO Pixman_bool_t))
hs_bindgen_0c7869ec124eeec5 =
  RIP.fromFFIType hs_bindgen_0c7869ec124eeec5_base

{-# NOINLINE pixman_region32_inverse #-}
{-| __C declaration:__ @pixman_region32_inverse@

    __defined at:__ @pixman.h 714:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_inverse :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO Pixman_bool_t)
pixman_region32_inverse =
  RIP.unsafePerformIO hs_bindgen_0c7869ec124eeec5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_contains_point@
foreign import ccall unsafe "hs_bindgen_6969fabb6d77a4e9" hs_bindgen_6969fabb6d77a4e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_contains_point@
hs_bindgen_6969fabb6d77a4e9 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_box32_t -> IO Pixman_bool_t))
hs_bindgen_6969fabb6d77a4e9 =
  RIP.fromFFIType hs_bindgen_6969fabb6d77a4e9_base

{-# NOINLINE pixman_region32_contains_point #-}
{-| __C declaration:__ @pixman_region32_contains_point@

    __defined at:__ @pixman.h 719:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_point :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_box32_t -> IO Pixman_bool_t)
pixman_region32_contains_point =
  RIP.unsafePerformIO hs_bindgen_6969fabb6d77a4e9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_31f8e896c9803db1" hs_bindgen_31f8e896c9803db1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_contains_rectangle@
hs_bindgen_31f8e896c9803db1 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO Pixman_region_overlap_t))
hs_bindgen_31f8e896c9803db1 =
  RIP.fromFFIType hs_bindgen_31f8e896c9803db1_base

{-# NOINLINE pixman_region32_contains_rectangle #-}
{-| __C declaration:__ @pixman_region32_contains_rectangle@

    __defined at:__ @pixman.h 725:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_rectangle :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO Pixman_region_overlap_t)
pixman_region32_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_31f8e896c9803db1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_empty@
foreign import ccall unsafe "hs_bindgen_a8bb82b47e85dfe5" hs_bindgen_a8bb82b47e85dfe5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_empty@
hs_bindgen_a8bb82b47e85dfe5 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_a8bb82b47e85dfe5 =
  RIP.fromFFIType hs_bindgen_a8bb82b47e85dfe5_base

{-# NOINLINE pixman_region32_empty #-}
{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_empty =
  RIP.unsafePerformIO hs_bindgen_a8bb82b47e85dfe5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_not_empty@
foreign import ccall unsafe "hs_bindgen_fea69c849c72d268" hs_bindgen_fea69c849c72d268_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_not_empty@
hs_bindgen_fea69c849c72d268 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_fea69c849c72d268 =
  RIP.fromFFIType hs_bindgen_fea69c849c72d268_base

{-# NOINLINE pixman_region32_not_empty #-}
{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_not_empty =
  RIP.unsafePerformIO hs_bindgen_fea69c849c72d268

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_extents@
foreign import ccall unsafe "hs_bindgen_c739057512371ea9" hs_bindgen_c739057512371ea9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_extents@
hs_bindgen_c739057512371ea9 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO (RIP.Ptr Pixman_box32_t)))
hs_bindgen_c739057512371ea9 =
  RIP.fromFFIType hs_bindgen_c739057512371ea9_base

{-# NOINLINE pixman_region32_extents #-}
{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO (RIP.Ptr Pixman_box32_t))
pixman_region32_extents =
  RIP.unsafePerformIO hs_bindgen_c739057512371ea9

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_n_rects@
foreign import ccall unsafe "hs_bindgen_2c817fae4e3b325f" hs_bindgen_2c817fae4e3b325f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_n_rects@
hs_bindgen_2c817fae4e3b325f :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO RIP.CInt))
hs_bindgen_2c817fae4e3b325f =
  RIP.fromFFIType hs_bindgen_2c817fae4e3b325f_base

{-# NOINLINE pixman_region32_n_rects #-}
{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> IO RIP.CInt)
pixman_region32_n_rects =
  RIP.unsafePerformIO hs_bindgen_2c817fae4e3b325f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_rectangles@
foreign import ccall unsafe "hs_bindgen_a9a7220782d9eca7" hs_bindgen_a9a7220782d9eca7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_rectangles@
hs_bindgen_a9a7220782d9eca7 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> RIP.Ptr RIP.CInt -> IO (RIP.Ptr Pixman_box32_t)))
hs_bindgen_a9a7220782d9eca7 =
  RIP.fromFFIType hs_bindgen_a9a7220782d9eca7_base

{-# NOINLINE pixman_region32_rectangles #-}
{-| __C declaration:__ @pixman_region32_rectangles@

    __defined at:__ @pixman.h 741:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_rectangles :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> RIP.Ptr RIP.CInt -> IO (RIP.Ptr Pixman_box32_t))
pixman_region32_rectangles =
  RIP.unsafePerformIO hs_bindgen_a9a7220782d9eca7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_equal@
foreign import ccall unsafe "hs_bindgen_fa3fad8092fbe22c" hs_bindgen_fa3fad8092fbe22c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_equal@
hs_bindgen_fa3fad8092fbe22c :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_fa3fad8092fbe22c =
  RIP.fromFFIType hs_bindgen_fa3fad8092fbe22c_base

{-# NOINLINE pixman_region32_equal #-}
{-| __C declaration:__ @pixman_region32_equal@

    __defined at:__ @pixman.h 745:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_equal :: RIP.FunPtr (PtrConst.PtrConst Pixman_region32_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_equal =
  RIP.unsafePerformIO hs_bindgen_fa3fad8092fbe22c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_selfcheck@
foreign import ccall unsafe "hs_bindgen_48cbc3c66b048725" hs_bindgen_48cbc3c66b048725_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_selfcheck@
hs_bindgen_48cbc3c66b048725 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_48cbc3c66b048725 =
  RIP.fromFFIType hs_bindgen_48cbc3c66b048725_base

{-# NOINLINE pixman_region32_selfcheck #-}
{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO Pixman_bool_t)
pixman_region32_selfcheck =
  RIP.unsafePerformIO hs_bindgen_48cbc3c66b048725

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_reset@
foreign import ccall unsafe "hs_bindgen_f57b7b0ac5848c9c" hs_bindgen_f57b7b0ac5848c9c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_reset@
hs_bindgen_f57b7b0ac5848c9c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO ()))
hs_bindgen_f57b7b0ac5848c9c =
  RIP.fromFFIType hs_bindgen_f57b7b0ac5848c9c_base

{-# NOINLINE pixman_region32_reset #-}
{-| __C declaration:__ @pixman_region32_reset@

    __defined at:__ @pixman.h 752:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_reset :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> PtrConst.PtrConst Pixman_box32_t -> IO ())
pixman_region32_reset =
  RIP.unsafePerformIO hs_bindgen_f57b7b0ac5848c9c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_clear@
foreign import ccall unsafe "hs_bindgen_7f50c416aa385688" hs_bindgen_7f50c416aa385688_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region32_clear@
hs_bindgen_7f50c416aa385688 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO ()))
hs_bindgen_7f50c416aa385688 =
  RIP.fromFFIType hs_bindgen_7f50c416aa385688_base

{-# NOINLINE pixman_region32_clear #-}
{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear :: RIP.FunPtr (RIP.Ptr Pixman_region32_t -> IO ())
pixman_region32_clear =
  RIP.unsafePerformIO hs_bindgen_7f50c416aa385688

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init@
foreign import ccall unsafe "hs_bindgen_cb161006de44d9b0" hs_bindgen_cb161006de44d9b0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init@
hs_bindgen_cb161006de44d9b0 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO ()))
hs_bindgen_cb161006de44d9b0 =
  RIP.fromFFIType hs_bindgen_cb161006de44d9b0_base

{-# NOINLINE pixman_region64f_init #-}
{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO ())
pixman_region64f_init =
  RIP.unsafePerformIO hs_bindgen_cb161006de44d9b0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rect@
foreign import ccall unsafe "hs_bindgen_ef66d593b9a4c443" hs_bindgen_ef66d593b9a4c443_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rect@
hs_bindgen_ef66d593b9a4c443 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_ef66d593b9a4c443 =
  RIP.fromFFIType hs_bindgen_ef66d593b9a4c443_base

{-# NOINLINE pixman_region64f_init_rect #-}
{-| __C declaration:__ @pixman_region64f_init_rect@

    __defined at:__ @pixman.h 793:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rect :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region64f_init_rect =
  RIP.unsafePerformIO hs_bindgen_ef66d593b9a4c443

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rectf@
foreign import ccall unsafe "hs_bindgen_e16b3402e310d8a2" hs_bindgen_e16b3402e310d8a2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rectf@
hs_bindgen_e16b3402e310d8a2 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_e16b3402e310d8a2 =
  RIP.fromFFIType hs_bindgen_e16b3402e310d8a2_base

{-# NOINLINE pixman_region64f_init_rectf #-}
{-| __C declaration:__ @pixman_region64f_init_rectf@

    __defined at:__ @pixman.h 800:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rectf :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_region64f_init_rectf =
  RIP.unsafePerformIO hs_bindgen_e16b3402e310d8a2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rects@
foreign import ccall unsafe "hs_bindgen_b6d2422ececf3370" hs_bindgen_b6d2422ececf3370_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_rects@
hs_bindgen_b6d2422ececf3370 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_b6d2422ececf3370 =
  RIP.fromFFIType hs_bindgen_b6d2422ececf3370_base

{-# NOINLINE pixman_region64f_init_rects #-}
{-| __C declaration:__ @pixman_region64f_init_rects@

    __defined at:__ @pixman.h 807:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rects :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> RIP.CInt -> IO Pixman_bool_t)
pixman_region64f_init_rects =
  RIP.unsafePerformIO hs_bindgen_b6d2422ececf3370

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_with_extents@
foreign import ccall unsafe "hs_bindgen_ba2c9e2dd7324bb1" hs_bindgen_ba2c9e2dd7324bb1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_with_extents@
hs_bindgen_ba2c9e2dd7324bb1 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO ()))
hs_bindgen_ba2c9e2dd7324bb1 =
  RIP.fromFFIType hs_bindgen_ba2c9e2dd7324bb1_base

{-# NOINLINE pixman_region64f_init_with_extents #-}
{-| __C declaration:__ @pixman_region64f_init_with_extents@

    __defined at:__ @pixman.h 812:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_with_extents :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO ())
pixman_region64f_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_ba2c9e2dd7324bb1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_from_image@
foreign import ccall unsafe "hs_bindgen_6bbe152b114cae5d" hs_bindgen_6bbe152b114cae5d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_init_from_image@
hs_bindgen_6bbe152b114cae5d :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.Ptr Pixman_image_t -> IO ()))
hs_bindgen_6bbe152b114cae5d =
  RIP.fromFFIType hs_bindgen_6bbe152b114cae5d_base

{-# NOINLINE pixman_region64f_init_from_image #-}
{-| __C declaration:__ @pixman_region64f_init_from_image@

    __defined at:__ @pixman.h 816:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_from_image :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.Ptr Pixman_image_t -> IO ())
pixman_region64f_init_from_image =
  RIP.unsafePerformIO hs_bindgen_6bbe152b114cae5d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_fini@
foreign import ccall unsafe "hs_bindgen_dee9382f319e6017" hs_bindgen_dee9382f319e6017_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_fini@
hs_bindgen_dee9382f319e6017 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO ()))
hs_bindgen_dee9382f319e6017 =
  RIP.fromFFIType hs_bindgen_dee9382f319e6017_base

{-# NOINLINE pixman_region64f_fini #-}
{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO ())
pixman_region64f_fini =
  RIP.unsafePerformIO hs_bindgen_dee9382f319e6017

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_translate@
foreign import ccall unsafe "hs_bindgen_db5357d9d53fd2ad" hs_bindgen_db5357d9d53fd2ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_translate@
hs_bindgen_db5357d9d53fd2ad :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_db5357d9d53fd2ad =
  RIP.fromFFIType hs_bindgen_db5357d9d53fd2ad_base

{-# NOINLINE pixman_region64f_translate #-}
{-| __C declaration:__ @pixman_region64f_translate@

    __defined at:__ @pixman.h 825:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translate :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region64f_translate =
  RIP.unsafePerformIO hs_bindgen_db5357d9d53fd2ad

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_translatef@
foreign import ccall unsafe "hs_bindgen_eec67e76ca3af89f" hs_bindgen_eec67e76ca3af89f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_translatef@
hs_bindgen_eec67e76ca3af89f :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_eec67e76ca3af89f =
  RIP.fromFFIType hs_bindgen_eec67e76ca3af89f_base

{-# NOINLINE pixman_region64f_translatef #-}
{-| __C declaration:__ @pixman_region64f_translatef@

    __defined at:__ @pixman.h 830:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translatef :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_region64f_translatef =
  RIP.unsafePerformIO hs_bindgen_eec67e76ca3af89f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_copy@
foreign import ccall unsafe "hs_bindgen_8c2facfbd273e900" hs_bindgen_8c2facfbd273e900_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_copy@
hs_bindgen_8c2facfbd273e900 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_8c2facfbd273e900 =
  RIP.fromFFIType hs_bindgen_8c2facfbd273e900_base

{-# NOINLINE pixman_region64f_copy #-}
{-| __C declaration:__ @pixman_region64f_copy@

    __defined at:__ @pixman.h 835:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_copy :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_copy =
  RIP.unsafePerformIO hs_bindgen_8c2facfbd273e900

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect@
foreign import ccall unsafe "hs_bindgen_35656130ff524824" hs_bindgen_35656130ff524824_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect@
hs_bindgen_35656130ff524824 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_35656130ff524824 =
  RIP.fromFFIType hs_bindgen_35656130ff524824_base

{-# NOINLINE pixman_region64f_intersect #-}
{-| __C declaration:__ @pixman_region64f_intersect@

    __defined at:__ @pixman.h 839:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_intersect =
  RIP.unsafePerformIO hs_bindgen_35656130ff524824

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union@
foreign import ccall unsafe "hs_bindgen_9f88d44f7819670c" hs_bindgen_9f88d44f7819670c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union@
hs_bindgen_9f88d44f7819670c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_9f88d44f7819670c =
  RIP.fromFFIType hs_bindgen_9f88d44f7819670c_base

{-# NOINLINE pixman_region64f_union #-}
{-| __C declaration:__ @pixman_region64f_union@

    __defined at:__ @pixman.h 844:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_union =
  RIP.unsafePerformIO hs_bindgen_9f88d44f7819670c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rect@
foreign import ccall unsafe "hs_bindgen_5a349666c36d07ec" hs_bindgen_5a349666c36d07ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rect@
hs_bindgen_5a349666c36d07ec :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_5a349666c36d07ec =
  RIP.fromFFIType hs_bindgen_5a349666c36d07ec_base

{-# NOINLINE pixman_region64f_intersect_rect #-}
{-| __C declaration:__ @pixman_region64f_intersect_rect@

    __defined at:__ @pixman.h 849:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rect :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region64f_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_5a349666c36d07ec

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rectf@
foreign import ccall unsafe "hs_bindgen_755a087837bf877d" hs_bindgen_755a087837bf877d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_intersect_rectf@
hs_bindgen_755a087837bf877d :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_755a087837bf877d =
  RIP.fromFFIType hs_bindgen_755a087837bf877d_base

{-# NOINLINE pixman_region64f_intersect_rectf #-}
{-| __C declaration:__ @pixman_region64f_intersect_rectf@

    __defined at:__ @pixman.h 857:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rectf :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_region64f_intersect_rectf =
  RIP.unsafePerformIO hs_bindgen_755a087837bf877d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union_rect@
foreign import ccall unsafe "hs_bindgen_530f23e2251aaaaf" hs_bindgen_530f23e2251aaaaf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union_rect@
hs_bindgen_530f23e2251aaaaf :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_530f23e2251aaaaf =
  RIP.fromFFIType hs_bindgen_530f23e2251aaaaf_base

{-# NOINLINE pixman_region64f_union_rect #-}
{-| __C declaration:__ @pixman_region64f_union_rect@

    __defined at:__ @pixman.h 865:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rect :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region64f_union_rect =
  RIP.unsafePerformIO hs_bindgen_530f23e2251aaaaf

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union_rectf@
foreign import ccall unsafe "hs_bindgen_2810427ebb10ad2f" hs_bindgen_2810427ebb10ad2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_union_rectf@
hs_bindgen_2810427ebb10ad2f :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_2810427ebb10ad2f =
  RIP.fromFFIType hs_bindgen_2810427ebb10ad2f_base

{-# NOINLINE pixman_region64f_union_rectf #-}
{-| __C declaration:__ @pixman_region64f_union_rectf@

    __defined at:__ @pixman.h 873:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rectf :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_region64f_union_rectf =
  RIP.unsafePerformIO hs_bindgen_2810427ebb10ad2f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_subtract@
foreign import ccall unsafe "hs_bindgen_84cd574a2dd9ebcc" hs_bindgen_84cd574a2dd9ebcc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_subtract@
hs_bindgen_84cd574a2dd9ebcc :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_84cd574a2dd9ebcc =
  RIP.fromFFIType hs_bindgen_84cd574a2dd9ebcc_base

{-# NOINLINE pixman_region64f_subtract #-}
{-| __C declaration:__ @pixman_region64f_subtract@

    __defined at:__ @pixman.h 881:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_subtract :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_subtract =
  RIP.unsafePerformIO hs_bindgen_84cd574a2dd9ebcc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_inverse@
foreign import ccall unsafe "hs_bindgen_fed71e9d61fc617c" hs_bindgen_fed71e9d61fc617c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_inverse@
hs_bindgen_fed71e9d61fc617c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO Pixman_bool_t))
hs_bindgen_fed71e9d61fc617c =
  RIP.fromFFIType hs_bindgen_fed71e9d61fc617c_base

{-# NOINLINE pixman_region64f_inverse #-}
{-| __C declaration:__ @pixman_region64f_inverse@

    __defined at:__ @pixman.h 886:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_inverse :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO Pixman_bool_t)
pixman_region64f_inverse =
  RIP.unsafePerformIO hs_bindgen_fed71e9d61fc617c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_point@
foreign import ccall unsafe "hs_bindgen_f31870069a2a49f4" hs_bindgen_f31870069a2a49f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_point@
hs_bindgen_f31870069a2a49f4 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_box64f_t -> IO Pixman_bool_t))
hs_bindgen_f31870069a2a49f4 =
  RIP.fromFFIType hs_bindgen_f31870069a2a49f4_base

{-# NOINLINE pixman_region64f_contains_point #-}
{-| __C declaration:__ @pixman_region64f_contains_point@

    __defined at:__ @pixman.h 891:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_point :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_box64f_t -> IO Pixman_bool_t)
pixman_region64f_contains_point =
  RIP.unsafePerformIO hs_bindgen_f31870069a2a49f4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_pointf@
foreign import ccall unsafe "hs_bindgen_4679c4caf13cd1a4" hs_bindgen_4679c4caf13cd1a4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_pointf@
hs_bindgen_4679c4caf13cd1a4 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.Ptr Pixman_box64f_t -> IO Pixman_bool_t))
hs_bindgen_4679c4caf13cd1a4 =
  RIP.fromFFIType hs_bindgen_4679c4caf13cd1a4_base

{-# NOINLINE pixman_region64f_contains_pointf #-}
{-| __C declaration:__ @pixman_region64f_contains_pointf@

    __defined at:__ @pixman.h 897:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_pointf :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> RIP.CDouble -> RIP.CDouble -> RIP.Ptr Pixman_box64f_t -> IO Pixman_bool_t)
pixman_region64f_contains_pointf =
  RIP.unsafePerformIO hs_bindgen_4679c4caf13cd1a4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_4fe5d0c114ff78dd" hs_bindgen_4fe5d0c114ff78dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_contains_rectangle@
hs_bindgen_4fe5d0c114ff78dd :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO Pixman_region_overlap_t))
hs_bindgen_4fe5d0c114ff78dd =
  RIP.fromFFIType hs_bindgen_4fe5d0c114ff78dd_base

{-# NOINLINE pixman_region64f_contains_rectangle #-}
{-| __C declaration:__ @pixman_region64f_contains_rectangle@

    __defined at:__ @pixman.h 903:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_rectangle :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO Pixman_region_overlap_t)
pixman_region64f_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_4fe5d0c114ff78dd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_empty@
foreign import ccall unsafe "hs_bindgen_2afc619c95fba254" hs_bindgen_2afc619c95fba254_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_empty@
hs_bindgen_2afc619c95fba254 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_2afc619c95fba254 =
  RIP.fromFFIType hs_bindgen_2afc619c95fba254_base

{-# NOINLINE pixman_region64f_empty #-}
{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_empty =
  RIP.unsafePerformIO hs_bindgen_2afc619c95fba254

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_not_empty@
foreign import ccall unsafe "hs_bindgen_575abd78c0ab1192" hs_bindgen_575abd78c0ab1192_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_not_empty@
hs_bindgen_575abd78c0ab1192 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_575abd78c0ab1192 =
  RIP.fromFFIType hs_bindgen_575abd78c0ab1192_base

{-# NOINLINE pixman_region64f_not_empty #-}
{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_not_empty =
  RIP.unsafePerformIO hs_bindgen_575abd78c0ab1192

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_extents@
foreign import ccall unsafe "hs_bindgen_db8a4e277f964c8e" hs_bindgen_db8a4e277f964c8e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_extents@
hs_bindgen_db8a4e277f964c8e :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO (RIP.Ptr Pixman_box64f_t)))
hs_bindgen_db8a4e277f964c8e =
  RIP.fromFFIType hs_bindgen_db8a4e277f964c8e_base

{-# NOINLINE pixman_region64f_extents #-}
{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO (RIP.Ptr Pixman_box64f_t))
pixman_region64f_extents =
  RIP.unsafePerformIO hs_bindgen_db8a4e277f964c8e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_n_rects@
foreign import ccall unsafe "hs_bindgen_6a32ca8a83fa2ce5" hs_bindgen_6a32ca8a83fa2ce5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_n_rects@
hs_bindgen_6a32ca8a83fa2ce5 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO RIP.CInt))
hs_bindgen_6a32ca8a83fa2ce5 =
  RIP.fromFFIType hs_bindgen_6a32ca8a83fa2ce5_base

{-# NOINLINE pixman_region64f_n_rects #-}
{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> IO RIP.CInt)
pixman_region64f_n_rects =
  RIP.unsafePerformIO hs_bindgen_6a32ca8a83fa2ce5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_rectangles@
foreign import ccall unsafe "hs_bindgen_8c9e34d533827173" hs_bindgen_8c9e34d533827173_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_rectangles@
hs_bindgen_8c9e34d533827173 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> RIP.Ptr RIP.CInt -> IO (RIP.Ptr Pixman_box64f_t)))
hs_bindgen_8c9e34d533827173 =
  RIP.fromFFIType hs_bindgen_8c9e34d533827173_base

{-# NOINLINE pixman_region64f_rectangles #-}
{-| __C declaration:__ @pixman_region64f_rectangles@

    __defined at:__ @pixman.h 919:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_rectangles :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> RIP.Ptr RIP.CInt -> IO (RIP.Ptr Pixman_box64f_t))
pixman_region64f_rectangles =
  RIP.unsafePerformIO hs_bindgen_8c9e34d533827173

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_equal@
foreign import ccall unsafe "hs_bindgen_575c42e3eddd1589" hs_bindgen_575c42e3eddd1589_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_equal@
hs_bindgen_575c42e3eddd1589 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_575c42e3eddd1589 =
  RIP.fromFFIType hs_bindgen_575c42e3eddd1589_base

{-# NOINLINE pixman_region64f_equal #-}
{-| __C declaration:__ @pixman_region64f_equal@

    __defined at:__ @pixman.h 923:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_equal :: RIP.FunPtr (PtrConst.PtrConst Pixman_region64f_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_equal =
  RIP.unsafePerformIO hs_bindgen_575c42e3eddd1589

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_selfcheck@
foreign import ccall unsafe "hs_bindgen_acf78dc354c3132e" hs_bindgen_acf78dc354c3132e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_selfcheck@
hs_bindgen_acf78dc354c3132e :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_acf78dc354c3132e =
  RIP.fromFFIType hs_bindgen_acf78dc354c3132e_base

{-# NOINLINE pixman_region64f_selfcheck #-}
{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO Pixman_bool_t)
pixman_region64f_selfcheck =
  RIP.unsafePerformIO hs_bindgen_acf78dc354c3132e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_reset@
foreign import ccall unsafe "hs_bindgen_f47806869e72ec73" hs_bindgen_f47806869e72ec73_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_reset@
hs_bindgen_f47806869e72ec73 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO ()))
hs_bindgen_f47806869e72ec73 =
  RIP.fromFFIType hs_bindgen_f47806869e72ec73_base

{-# NOINLINE pixman_region64f_reset #-}
{-| __C declaration:__ @pixman_region64f_reset@

    __defined at:__ @pixman.h 930:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_reset :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> PtrConst.PtrConst Pixman_box64f_t -> IO ())
pixman_region64f_reset =
  RIP.unsafePerformIO hs_bindgen_f47806869e72ec73

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_clear@
foreign import ccall unsafe "hs_bindgen_5c3613e8dfc2b0a5" hs_bindgen_5c3613e8dfc2b0a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_region64f_clear@
hs_bindgen_5c3613e8dfc2b0a5 :: IO (RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO ()))
hs_bindgen_5c3613e8dfc2b0a5 =
  RIP.fromFFIType hs_bindgen_5c3613e8dfc2b0a5_base

{-# NOINLINE pixman_region64f_clear #-}
{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear :: RIP.FunPtr (RIP.Ptr Pixman_region64f_t -> IO ())
pixman_region64f_clear =
  RIP.unsafePerformIO hs_bindgen_5c3613e8dfc2b0a5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_blt@
foreign import ccall unsafe "hs_bindgen_eb9eaee5217bd7e7" hs_bindgen_eb9eaee5217bd7e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_blt@
hs_bindgen_eb9eaee5217bd7e7 :: IO (RIP.FunPtr (RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_eb9eaee5217bd7e7 =
  RIP.fromFFIType hs_bindgen_eb9eaee5217bd7e7_base

{-# NOINLINE pixman_blt #-}
{-| __C declaration:__ @pixman_blt@

    __defined at:__ @pixman.h 939:15@

    __exported by:__ @pixman.h@
-}
pixman_blt :: RIP.FunPtr (RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> IO Pixman_bool_t)
pixman_blt =
  RIP.unsafePerformIO hs_bindgen_eb9eaee5217bd7e7

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_fill@
foreign import ccall unsafe "hs_bindgen_3f935b8493090451" hs_bindgen_3f935b8493090451_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_fill@
hs_bindgen_3f935b8493090451 :: IO (RIP.FunPtr (RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> HsBindgen.Runtime.LibC.Word32 -> IO Pixman_bool_t))
hs_bindgen_3f935b8493090451 =
  RIP.fromFFIType hs_bindgen_3f935b8493090451_base

{-# NOINLINE pixman_fill #-}
{-| __C declaration:__ @pixman_fill@

    __defined at:__ @pixman.h 953:15@

    __exported by:__ @pixman.h@
-}
pixman_fill :: RIP.FunPtr (RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> HsBindgen.Runtime.LibC.Word32 -> IO Pixman_bool_t)
pixman_fill =
  RIP.unsafePerformIO hs_bindgen_3f935b8493090451

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_version@
foreign import ccall unsafe "hs_bindgen_598a646b514016c8" hs_bindgen_598a646b514016c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_version@
hs_bindgen_598a646b514016c8 :: IO (RIP.FunPtr (IO RIP.CInt))
hs_bindgen_598a646b514016c8 =
  RIP.fromFFIType hs_bindgen_598a646b514016c8_base

{-# NOINLINE pixman_version #-}
{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: RIP.FunPtr (IO RIP.CInt)
pixman_version =
  RIP.unsafePerformIO hs_bindgen_598a646b514016c8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_version_string@
foreign import ccall unsafe "hs_bindgen_1d1811e1b60cba17" hs_bindgen_1d1811e1b60cba17_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_version_string@
hs_bindgen_1d1811e1b60cba17 :: IO (RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_1d1811e1b60cba17 =
  RIP.fromFFIType hs_bindgen_1d1811e1b60cba17_base

{-# NOINLINE pixman_version_string #-}
{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar))
pixman_version_string =
  RIP.unsafePerformIO hs_bindgen_1d1811e1b60cba17

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_format_supported_destination@
foreign import ccall unsafe "hs_bindgen_38a44b94fb838356" hs_bindgen_38a44b94fb838356_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_format_supported_destination@
hs_bindgen_38a44b94fb838356 :: IO (RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t))
hs_bindgen_38a44b94fb838356 =
  RIP.fromFFIType hs_bindgen_38a44b94fb838356_base

{-# NOINLINE pixman_format_supported_destination #-}
{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination :: RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t)
pixman_format_supported_destination =
  RIP.unsafePerformIO hs_bindgen_38a44b94fb838356

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_format_supported_source@
foreign import ccall unsafe "hs_bindgen_e3cdf3f83a25991e" hs_bindgen_e3cdf3f83a25991e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_format_supported_source@
hs_bindgen_e3cdf3f83a25991e :: IO (RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t))
hs_bindgen_e3cdf3f83a25991e =
  RIP.fromFFIType hs_bindgen_e3cdf3f83a25991e_base

{-# NOINLINE pixman_format_supported_source #-}
{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source :: RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t)
pixman_format_supported_source =
  RIP.unsafePerformIO hs_bindgen_e3cdf3f83a25991e

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_solid_fill@
foreign import ccall unsafe "hs_bindgen_896c4fa920f1158f" hs_bindgen_896c4fa920f1158f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_solid_fill@
hs_bindgen_896c4fa920f1158f :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_color_t -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_896c4fa920f1158f =
  RIP.fromFFIType hs_bindgen_896c4fa920f1158f_base

{-# NOINLINE pixman_image_create_solid_fill #-}
{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill :: RIP.FunPtr (PtrConst.PtrConst Pixman_color_t -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_solid_fill =
  RIP.unsafePerformIO hs_bindgen_896c4fa920f1158f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_linear_gradient@
foreign import ccall unsafe "hs_bindgen_41e35ea8cfc8b4c2" hs_bindgen_41e35ea8cfc8b4c2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_linear_gradient@
hs_bindgen_41e35ea8cfc8b4c2 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_point_fixed_t -> PtrConst.PtrConst Pixman_point_fixed_t -> PtrConst.PtrConst Pixman_gradient_stop_t -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_41e35ea8cfc8b4c2 =
  RIP.fromFFIType hs_bindgen_41e35ea8cfc8b4c2_base

{-# NOINLINE pixman_image_create_linear_gradient #-}
{-| __C declaration:__ @pixman_image_create_linear_gradient@

    __defined at:__ @pixman.h 1148:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_linear_gradient :: RIP.FunPtr (PtrConst.PtrConst Pixman_point_fixed_t -> PtrConst.PtrConst Pixman_point_fixed_t -> PtrConst.PtrConst Pixman_gradient_stop_t -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_linear_gradient =
  RIP.unsafePerformIO hs_bindgen_41e35ea8cfc8b4c2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_radial_gradient@
foreign import ccall unsafe "hs_bindgen_02c14a226d367f59" hs_bindgen_02c14a226d367f59_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_radial_gradient@
hs_bindgen_02c14a226d367f59 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_point_fixed_t -> PtrConst.PtrConst Pixman_point_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> PtrConst.PtrConst Pixman_gradient_stop_t -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_02c14a226d367f59 =
  RIP.fromFFIType hs_bindgen_02c14a226d367f59_base

{-# NOINLINE pixman_image_create_radial_gradient #-}
{-| __C declaration:__ @pixman_image_create_radial_gradient@

    __defined at:__ @pixman.h 1154:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_radial_gradient :: RIP.FunPtr (PtrConst.PtrConst Pixman_point_fixed_t -> PtrConst.PtrConst Pixman_point_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> PtrConst.PtrConst Pixman_gradient_stop_t -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_radial_gradient =
  RIP.unsafePerformIO hs_bindgen_02c14a226d367f59

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_conical_gradient@
foreign import ccall unsafe "hs_bindgen_cab763e232b53fe6" hs_bindgen_cab763e232b53fe6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_conical_gradient@
hs_bindgen_cab763e232b53fe6 :: IO (RIP.FunPtr (PtrConst.PtrConst Pixman_point_fixed_t -> Pixman_fixed_t -> PtrConst.PtrConst Pixman_gradient_stop_t -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_cab763e232b53fe6 =
  RIP.fromFFIType hs_bindgen_cab763e232b53fe6_base

{-# NOINLINE pixman_image_create_conical_gradient #-}
{-| __C declaration:__ @pixman_image_create_conical_gradient@

    __defined at:__ @pixman.h 1162:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_conical_gradient :: RIP.FunPtr (PtrConst.PtrConst Pixman_point_fixed_t -> Pixman_fixed_t -> PtrConst.PtrConst Pixman_gradient_stop_t -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_conical_gradient =
  RIP.unsafePerformIO hs_bindgen_cab763e232b53fe6

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_bits@
foreign import ccall unsafe "hs_bindgen_5970b93008fad135" hs_bindgen_5970b93008fad135_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_bits@
hs_bindgen_5970b93008fad135 :: IO (RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_5970b93008fad135 =
  RIP.fromFFIType hs_bindgen_5970b93008fad135_base

{-# NOINLINE pixman_image_create_bits #-}
{-| __C declaration:__ @pixman_image_create_bits@

    __defined at:__ @pixman.h 1168:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits :: RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_bits =
  RIP.unsafePerformIO hs_bindgen_5970b93008fad135

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_bits_no_clear@
foreign import ccall unsafe "hs_bindgen_e9ef3b7a9a46c54c" hs_bindgen_e9ef3b7a9a46c54c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_create_bits_no_clear@
hs_bindgen_e9ef3b7a9a46c54c :: IO (RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_e9ef3b7a9a46c54c =
  RIP.fromFFIType hs_bindgen_e9ef3b7a9a46c54c_base

{-# NOINLINE pixman_image_create_bits_no_clear #-}
{-| __C declaration:__ @pixman_image_create_bits_no_clear@

    __defined at:__ @pixman.h 1175:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits_no_clear :: RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.Ptr HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_bits_no_clear =
  RIP.unsafePerformIO hs_bindgen_e9ef3b7a9a46c54c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_ref@
foreign import ccall unsafe "hs_bindgen_2600bafb90ac5273" hs_bindgen_2600bafb90ac5273_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_ref@
hs_bindgen_2600bafb90ac5273 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_2600bafb90ac5273 =
  RIP.fromFFIType hs_bindgen_2600bafb90ac5273_base

{-# NOINLINE pixman_image_ref #-}
{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO (RIP.Ptr Pixman_image_t))
pixman_image_ref =
  RIP.unsafePerformIO hs_bindgen_2600bafb90ac5273

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_unref@
foreign import ccall unsafe "hs_bindgen_315b1b86f75b2497" hs_bindgen_315b1b86f75b2497_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_unref@
hs_bindgen_315b1b86f75b2497 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO Pixman_bool_t))
hs_bindgen_315b1b86f75b2497 =
  RIP.fromFFIType hs_bindgen_315b1b86f75b2497_base

{-# NOINLINE pixman_image_unref #-}
{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO Pixman_bool_t)
pixman_image_unref =
  RIP.unsafePerformIO hs_bindgen_315b1b86f75b2497

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_destroy_function@
foreign import ccall unsafe "hs_bindgen_cd62f4d52f774b29" hs_bindgen_cd62f4d52f774b29_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_destroy_function@
hs_bindgen_cd62f4d52f774b29 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_image_destroy_func_t -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_cd62f4d52f774b29 =
  RIP.fromFFIType hs_bindgen_cd62f4d52f774b29_base

{-# NOINLINE pixman_image_set_destroy_function #-}
{-| __C declaration:__ @pixman_image_set_destroy_function@

    __defined at:__ @pixman.h 1190:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_destroy_function :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_image_destroy_func_t -> RIP.Ptr RIP.Void -> IO ())
pixman_image_set_destroy_function =
  RIP.unsafePerformIO hs_bindgen_cd62f4d52f774b29

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_destroy_data@
foreign import ccall unsafe "hs_bindgen_7a55663709020b47" hs_bindgen_7a55663709020b47_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_destroy_data@
hs_bindgen_7a55663709020b47 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_7a55663709020b47 =
  RIP.fromFFIType hs_bindgen_7a55663709020b47_base

{-# NOINLINE pixman_image_get_destroy_data #-}
{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO (RIP.Ptr RIP.Void))
pixman_image_get_destroy_data =
  RIP.unsafePerformIO hs_bindgen_7a55663709020b47

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region@
foreign import ccall unsafe "hs_bindgen_baa365dccc87ba8d" hs_bindgen_baa365dccc87ba8d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region@
hs_bindgen_baa365dccc87ba8d :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t))
hs_bindgen_baa365dccc87ba8d =
  RIP.fromFFIType hs_bindgen_baa365dccc87ba8d_base

{-# NOINLINE pixman_image_set_clip_region #-}
{-| __C declaration:__ @pixman_image_set_clip_region@

    __defined at:__ @pixman.h 1199:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_region16_t -> IO Pixman_bool_t)
pixman_image_set_clip_region =
  RIP.unsafePerformIO hs_bindgen_baa365dccc87ba8d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region32@
foreign import ccall unsafe "hs_bindgen_89088b859f2d3556" hs_bindgen_89088b859f2d3556_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region32@
hs_bindgen_89088b859f2d3556 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t))
hs_bindgen_89088b859f2d3556 =
  RIP.fromFFIType hs_bindgen_89088b859f2d3556_base

{-# NOINLINE pixman_image_set_clip_region32 #-}
{-| __C declaration:__ @pixman_image_set_clip_region32@

    __defined at:__ @pixman.h 1203:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region32 :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_region32_t -> IO Pixman_bool_t)
pixman_image_set_clip_region32 =
  RIP.unsafePerformIO hs_bindgen_89088b859f2d3556

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region64f@
foreign import ccall unsafe "hs_bindgen_dad7c11b577b5101" hs_bindgen_dad7c11b577b5101_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_clip_region64f@
hs_bindgen_dad7c11b577b5101 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t))
hs_bindgen_dad7c11b577b5101 =
  RIP.fromFFIType hs_bindgen_dad7c11b577b5101_base

{-# NOINLINE pixman_image_set_clip_region64f #-}
{-| __C declaration:__ @pixman_image_set_clip_region64f@

    __defined at:__ @pixman.h 1207:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region64f :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_region64f_t -> IO Pixman_bool_t)
pixman_image_set_clip_region64f =
  RIP.unsafePerformIO hs_bindgen_dad7c11b577b5101

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_has_client_clip@
foreign import ccall unsafe "hs_bindgen_0e204b36401cec56" hs_bindgen_0e204b36401cec56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_has_client_clip@
hs_bindgen_0e204b36401cec56 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_bool_t -> IO ()))
hs_bindgen_0e204b36401cec56 =
  RIP.fromFFIType hs_bindgen_0e204b36401cec56_base

{-# NOINLINE pixman_image_set_has_client_clip #-}
{-| __C declaration:__ @pixman_image_set_has_client_clip@

    __defined at:__ @pixman.h 1211:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_has_client_clip :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_bool_t -> IO ())
pixman_image_set_has_client_clip =
  RIP.unsafePerformIO hs_bindgen_0e204b36401cec56

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_transform@
foreign import ccall unsafe "hs_bindgen_4dde608de6dbe7e0" hs_bindgen_4dde608de6dbe7e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_transform@
hs_bindgen_4dde608de6dbe7e0 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_transform_t -> IO Pixman_bool_t))
hs_bindgen_4dde608de6dbe7e0 =
  RIP.fromFFIType hs_bindgen_4dde608de6dbe7e0_base

{-# NOINLINE pixman_image_set_transform #-}
{-| __C declaration:__ @pixman_image_set_transform@

    __defined at:__ @pixman.h 1215:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_transform :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_transform_t -> IO Pixman_bool_t)
pixman_image_set_transform =
  RIP.unsafePerformIO hs_bindgen_4dde608de6dbe7e0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_repeat@
foreign import ccall unsafe "hs_bindgen_fffebeb6316e6591" hs_bindgen_fffebeb6316e6591_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_repeat@
hs_bindgen_fffebeb6316e6591 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_repeat_t -> IO ()))
hs_bindgen_fffebeb6316e6591 =
  RIP.fromFFIType hs_bindgen_fffebeb6316e6591_base

{-# NOINLINE pixman_image_set_repeat #-}
{-| __C declaration:__ @pixman_image_set_repeat@

    __defined at:__ @pixman.h 1219:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_repeat :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_repeat_t -> IO ())
pixman_image_set_repeat =
  RIP.unsafePerformIO hs_bindgen_fffebeb6316e6591

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_dither@
foreign import ccall unsafe "hs_bindgen_5fdc8f03bab067aa" hs_bindgen_5fdc8f03bab067aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_dither@
hs_bindgen_5fdc8f03bab067aa :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_dither_t -> IO ()))
hs_bindgen_5fdc8f03bab067aa =
  RIP.fromFFIType hs_bindgen_5fdc8f03bab067aa_base

{-# NOINLINE pixman_image_set_dither #-}
{-| __C declaration:__ @pixman_image_set_dither@

    __defined at:__ @pixman.h 1223:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_dither_t -> IO ())
pixman_image_set_dither =
  RIP.unsafePerformIO hs_bindgen_5fdc8f03bab067aa

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_dither_offset@
foreign import ccall unsafe "hs_bindgen_ab6a8cf31d5cc994" hs_bindgen_ab6a8cf31d5cc994_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_dither_offset@
hs_bindgen_ab6a8cf31d5cc994 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_ab6a8cf31d5cc994 =
  RIP.fromFFIType hs_bindgen_ab6a8cf31d5cc994_base

{-# NOINLINE pixman_image_set_dither_offset #-}
{-| __C declaration:__ @pixman_image_set_dither_offset@

    __defined at:__ @pixman.h 1227:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither_offset :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> RIP.CInt -> RIP.CInt -> IO ())
pixman_image_set_dither_offset =
  RIP.unsafePerformIO hs_bindgen_ab6a8cf31d5cc994

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_filter@
foreign import ccall unsafe "hs_bindgen_01080516b0861277" hs_bindgen_01080516b0861277_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_filter@
hs_bindgen_01080516b0861277 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_filter_t -> PtrConst.PtrConst Pixman_fixed_t -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_01080516b0861277 =
  RIP.fromFFIType hs_bindgen_01080516b0861277_base

{-# NOINLINE pixman_image_set_filter #-}
{-| __C declaration:__ @pixman_image_set_filter@

    __defined at:__ @pixman.h 1232:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_filter :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_filter_t -> PtrConst.PtrConst Pixman_fixed_t -> RIP.CInt -> IO Pixman_bool_t)
pixman_image_set_filter =
  RIP.unsafePerformIO hs_bindgen_01080516b0861277

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_source_clipping@
foreign import ccall unsafe "hs_bindgen_cdd644b3dea81799" hs_bindgen_cdd644b3dea81799_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_source_clipping@
hs_bindgen_cdd644b3dea81799 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_bool_t -> IO ()))
hs_bindgen_cdd644b3dea81799 =
  RIP.fromFFIType hs_bindgen_cdd644b3dea81799_base

{-# NOINLINE pixman_image_set_source_clipping #-}
{-| __C declaration:__ @pixman_image_set_source_clipping@

    __defined at:__ @pixman.h 1238:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_source_clipping :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_bool_t -> IO ())
pixman_image_set_source_clipping =
  RIP.unsafePerformIO hs_bindgen_cdd644b3dea81799

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_alpha_map@
foreign import ccall unsafe "hs_bindgen_4bcb50884e7aeb61" hs_bindgen_4bcb50884e7aeb61_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_alpha_map@
hs_bindgen_4bcb50884e7aeb61 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> IO ()))
hs_bindgen_4bcb50884e7aeb61 =
  RIP.fromFFIType hs_bindgen_4bcb50884e7aeb61_base

{-# NOINLINE pixman_image_set_alpha_map #-}
{-| __C declaration:__ @pixman_image_set_alpha_map@

    __defined at:__ @pixman.h 1242:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_alpha_map :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> IO ())
pixman_image_set_alpha_map =
  RIP.unsafePerformIO hs_bindgen_4bcb50884e7aeb61

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_component_alpha@
foreign import ccall unsafe "hs_bindgen_939bf323693e03a5" hs_bindgen_939bf323693e03a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_component_alpha@
hs_bindgen_939bf323693e03a5 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_bool_t -> IO ()))
hs_bindgen_939bf323693e03a5 =
  RIP.fromFFIType hs_bindgen_939bf323693e03a5_base

{-# NOINLINE pixman_image_set_component_alpha #-}
{-| __C declaration:__ @pixman_image_set_component_alpha@

    __defined at:__ @pixman.h 1248:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_component_alpha :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_bool_t -> IO ())
pixman_image_set_component_alpha =
  RIP.unsafePerformIO hs_bindgen_939bf323693e03a5

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_component_alpha@
foreign import ccall unsafe "hs_bindgen_cbcc9e40a5569020" hs_bindgen_cbcc9e40a5569020_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_component_alpha@
hs_bindgen_cbcc9e40a5569020 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO Pixman_bool_t))
hs_bindgen_cbcc9e40a5569020 =
  RIP.fromFFIType hs_bindgen_cbcc9e40a5569020_base

{-# NOINLINE pixman_image_get_component_alpha #-}
{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO Pixman_bool_t)
pixman_image_get_component_alpha =
  RIP.unsafePerformIO hs_bindgen_cbcc9e40a5569020

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_accessors@
foreign import ccall unsafe "hs_bindgen_a80a14864d3812fe" hs_bindgen_a80a14864d3812fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_accessors@
hs_bindgen_a80a14864d3812fe :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_read_memory_func_t -> Pixman_write_memory_func_t -> IO ()))
hs_bindgen_a80a14864d3812fe =
  RIP.fromFFIType hs_bindgen_a80a14864d3812fe_base

{-# NOINLINE pixman_image_set_accessors #-}
{-| __C declaration:__ @pixman_image_set_accessors@

    __defined at:__ @pixman.h 1255:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_accessors :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> Pixman_read_memory_func_t -> Pixman_write_memory_func_t -> IO ())
pixman_image_set_accessors =
  RIP.unsafePerformIO hs_bindgen_a80a14864d3812fe

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_indexed@
foreign import ccall unsafe "hs_bindgen_9117fdbd5718dfe2" hs_bindgen_9117fdbd5718dfe2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_set_indexed@
hs_bindgen_9117fdbd5718dfe2 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_indexed_t -> IO ()))
hs_bindgen_9117fdbd5718dfe2 =
  RIP.fromFFIType hs_bindgen_9117fdbd5718dfe2_base

{-# NOINLINE pixman_image_set_indexed #-}
{-| __C declaration:__ @pixman_image_set_indexed@

    __defined at:__ @pixman.h 1260:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_indexed :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_indexed_t -> IO ())
pixman_image_set_indexed =
  RIP.unsafePerformIO hs_bindgen_9117fdbd5718dfe2

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_data@
foreign import ccall unsafe "hs_bindgen_f4310415cbb703a8" hs_bindgen_f4310415cbb703a8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_data@
hs_bindgen_f4310415cbb703a8 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)))
hs_bindgen_f4310415cbb703a8 =
  RIP.fromFFIType hs_bindgen_f4310415cbb703a8_base

{-# NOINLINE pixman_image_get_data #-}
{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32))
pixman_image_get_data =
  RIP.unsafePerformIO hs_bindgen_f4310415cbb703a8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_width@
foreign import ccall unsafe "hs_bindgen_70a0c04de349d2f0" hs_bindgen_70a0c04de349d2f0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_width@
hs_bindgen_70a0c04de349d2f0 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt))
hs_bindgen_70a0c04de349d2f0 =
  RIP.fromFFIType hs_bindgen_70a0c04de349d2f0_base

{-# NOINLINE pixman_image_get_width #-}
{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt)
pixman_image_get_width =
  RIP.unsafePerformIO hs_bindgen_70a0c04de349d2f0

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_height@
foreign import ccall unsafe "hs_bindgen_4d118f3f6ea70b29" hs_bindgen_4d118f3f6ea70b29_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_height@
hs_bindgen_4d118f3f6ea70b29 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt))
hs_bindgen_4d118f3f6ea70b29 =
  RIP.fromFFIType hs_bindgen_4d118f3f6ea70b29_base

{-# NOINLINE pixman_image_get_height #-}
{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt)
pixman_image_get_height =
  RIP.unsafePerformIO hs_bindgen_4d118f3f6ea70b29

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_stride@
foreign import ccall unsafe "hs_bindgen_2805635f0f8d7385" hs_bindgen_2805635f0f8d7385_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_stride@
hs_bindgen_2805635f0f8d7385 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt))
hs_bindgen_2805635f0f8d7385 =
  RIP.fromFFIType hs_bindgen_2805635f0f8d7385_base

{-# NOINLINE pixman_image_get_stride #-}
{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt)
pixman_image_get_stride =
  RIP.unsafePerformIO hs_bindgen_2805635f0f8d7385

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_depth@
foreign import ccall unsafe "hs_bindgen_db2f3e0fbbf35ccb" hs_bindgen_db2f3e0fbbf35ccb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_depth@
hs_bindgen_db2f3e0fbbf35ccb :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt))
hs_bindgen_db2f3e0fbbf35ccb =
  RIP.fromFFIType hs_bindgen_db2f3e0fbbf35ccb_base

{-# NOINLINE pixman_image_get_depth #-}
{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO RIP.CInt)
pixman_image_get_depth =
  RIP.unsafePerformIO hs_bindgen_db2f3e0fbbf35ccb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_format@
foreign import ccall unsafe "hs_bindgen_762bb7ca6da283b4" hs_bindgen_762bb7ca6da283b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_get_format@
hs_bindgen_762bb7ca6da283b4 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO Pixman_format_code_t))
hs_bindgen_762bb7ca6da283b4 =
  RIP.fromFFIType hs_bindgen_762bb7ca6da283b4_base

{-# NOINLINE pixman_image_get_format #-}
{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> IO Pixman_format_code_t)
pixman_image_get_format =
  RIP.unsafePerformIO hs_bindgen_762bb7ca6da283b4

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_filter_create_separable_convolution@
foreign import ccall unsafe "hs_bindgen_dc2b6ebb3a4164bd" hs_bindgen_dc2b6ebb3a4164bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_filter_create_separable_convolution@
hs_bindgen_dc2b6ebb3a4164bd :: IO (RIP.FunPtr (RIP.Ptr RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> RIP.CInt -> RIP.CInt -> IO (RIP.Ptr Pixman_fixed_t)))
hs_bindgen_dc2b6ebb3a4164bd =
  RIP.fromFFIType hs_bindgen_dc2b6ebb3a4164bd_base

{-# NOINLINE pixman_filter_create_separable_convolution #-}
{-| __C declaration:__ @pixman_filter_create_separable_convolution@

    __defined at:__ @pixman.h 1298:1@

    __exported by:__ @pixman.h@
-}
pixman_filter_create_separable_convolution :: RIP.FunPtr (RIP.Ptr RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> RIP.CInt -> RIP.CInt -> IO (RIP.Ptr Pixman_fixed_t))
pixman_filter_create_separable_convolution =
  RIP.unsafePerformIO hs_bindgen_dc2b6ebb3a4164bd

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_fill_rectangles@
foreign import ccall unsafe "hs_bindgen_275e3f578a606433" hs_bindgen_275e3f578a606433_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_fill_rectangles@
hs_bindgen_275e3f578a606433 :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_color_t -> RIP.CInt -> PtrConst.PtrConst Pixman_rectangle16_t -> IO Pixman_bool_t))
hs_bindgen_275e3f578a606433 =
  RIP.fromFFIType hs_bindgen_275e3f578a606433_base

{-# NOINLINE pixman_image_fill_rectangles #-}
{-| __C declaration:__ @pixman_image_fill_rectangles@

    __defined at:__ @pixman.h 1310:15@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_rectangles :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_color_t -> RIP.CInt -> PtrConst.PtrConst Pixman_rectangle16_t -> IO Pixman_bool_t)
pixman_image_fill_rectangles =
  RIP.unsafePerformIO hs_bindgen_275e3f578a606433

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_fill_boxes@
foreign import ccall unsafe "hs_bindgen_32b44ce8b34fdf5b" hs_bindgen_32b44ce8b34fdf5b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_fill_boxes@
hs_bindgen_32b44ce8b34fdf5b :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_color_t -> RIP.CInt -> PtrConst.PtrConst Pixman_box32_t -> IO Pixman_bool_t))
hs_bindgen_32b44ce8b34fdf5b =
  RIP.fromFFIType hs_bindgen_32b44ce8b34fdf5b_base

{-# NOINLINE pixman_image_fill_boxes #-}
{-| __C declaration:__ @pixman_image_fill_boxes@

    __defined at:__ @pixman.h 1317:17@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_boxes :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_color_t -> RIP.CInt -> PtrConst.PtrConst Pixman_box32_t -> IO Pixman_bool_t)
pixman_image_fill_boxes =
  RIP.unsafePerformIO hs_bindgen_32b44ce8b34fdf5b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_compute_composite_region@
foreign import ccall unsafe "hs_bindgen_02fc82a9b3b3fb8c" hs_bindgen_02fc82a9b3b3fb8c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_compute_composite_region@
hs_bindgen_02fc82a9b3b3fb8c :: IO (RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO Pixman_bool_t))
hs_bindgen_02fc82a9b3b3fb8c =
  RIP.fromFFIType hs_bindgen_02fc82a9b3b3fb8c_base

{-# NOINLINE pixman_compute_composite_region #-}
{-| __C declaration:__ @pixman_compute_composite_region@

    __defined at:__ @pixman.h 1325:15@

    __exported by:__ @pixman.h@
-}
pixman_compute_composite_region :: RIP.FunPtr (RIP.Ptr Pixman_region16_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO Pixman_bool_t)
pixman_compute_composite_region =
  RIP.unsafePerformIO hs_bindgen_02fc82a9b3b3fb8c

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite@
foreign import ccall unsafe "hs_bindgen_8c85e4e145c73aef" hs_bindgen_8c85e4e145c73aef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite@
hs_bindgen_8c85e4e145c73aef :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO ()))
hs_bindgen_8c85e4e145c73aef =
  RIP.fromFFIType hs_bindgen_8c85e4e145c73aef_base

{-# NOINLINE pixman_image_composite #-}
{-| __C declaration:__ @pixman_image_composite@

    __defined at:__ @pixman.h 1339:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO ())
pixman_image_composite =
  RIP.unsafePerformIO hs_bindgen_8c85e4e145c73aef

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite32@
foreign import ccall unsafe "hs_bindgen_765c594673336ffe" hs_bindgen_765c594673336ffe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite32@
hs_bindgen_765c594673336ffe :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_765c594673336ffe =
  RIP.fromFFIType hs_bindgen_765c594673336ffe_base

{-# NOINLINE pixman_image_composite32 #-}
{-| __C declaration:__ @pixman_image_composite32@

    __defined at:__ @pixman.h 1353:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite32 :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
pixman_image_composite32 =
  RIP.unsafePerformIO hs_bindgen_765c594673336ffe

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite64f@
foreign import ccall unsafe "hs_bindgen_08dc958796114fb1" hs_bindgen_08dc958796114fb1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_image_composite64f@
hs_bindgen_08dc958796114fb1 :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_08dc958796114fb1 =
  RIP.fromFFIType hs_bindgen_08dc958796114fb1_base

{-# NOINLINE pixman_image_composite64f #-}
{-| __C declaration:__ @pixman_image_composite64f@

    __defined at:__ @pixman.h 1367:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite64f :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_image_composite64f =
  RIP.unsafePerformIO hs_bindgen_08dc958796114fb1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_disable_out_of_bounds_workaround@
foreign import ccall unsafe "hs_bindgen_91df86690894b186" hs_bindgen_91df86690894b186_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_disable_out_of_bounds_workaround@
hs_bindgen_91df86690894b186 :: IO (RIP.FunPtr (IO ()))
hs_bindgen_91df86690894b186 =
  RIP.fromFFIType hs_bindgen_91df86690894b186_base

{-# NOINLINE pixman_disable_out_of_bounds_workaround #-}
{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: RIP.FunPtr (IO ())
pixman_disable_out_of_bounds_workaround =
  RIP.unsafePerformIO hs_bindgen_91df86690894b186

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_create@
foreign import ccall unsafe "hs_bindgen_3f663715f2f2503a" hs_bindgen_3f663715f2f2503a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_create@
hs_bindgen_3f663715f2f2503a :: IO (RIP.FunPtr (IO (RIP.Ptr Pixman_glyph_cache_t)))
hs_bindgen_3f663715f2f2503a =
  RIP.fromFFIType hs_bindgen_3f663715f2f2503a_base

{-# NOINLINE pixman_glyph_cache_create #-}
{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: RIP.FunPtr (IO (RIP.Ptr Pixman_glyph_cache_t))
pixman_glyph_cache_create =
  RIP.unsafePerformIO hs_bindgen_3f663715f2f2503a

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_destroy@
foreign import ccall unsafe "hs_bindgen_d1c31531aa84559d" hs_bindgen_d1c31531aa84559d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_destroy@
hs_bindgen_d1c31531aa84559d :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> IO ()))
hs_bindgen_d1c31531aa84559d =
  RIP.fromFFIType hs_bindgen_d1c31531aa84559d_base

{-# NOINLINE pixman_glyph_cache_destroy #-}
{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> IO ())
pixman_glyph_cache_destroy =
  RIP.unsafePerformIO hs_bindgen_d1c31531aa84559d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_freeze@
foreign import ccall unsafe "hs_bindgen_9eb3ebad7cc5a30d" hs_bindgen_9eb3ebad7cc5a30d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_freeze@
hs_bindgen_9eb3ebad7cc5a30d :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> IO ()))
hs_bindgen_9eb3ebad7cc5a30d =
  RIP.fromFFIType hs_bindgen_9eb3ebad7cc5a30d_base

{-# NOINLINE pixman_glyph_cache_freeze #-}
{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> IO ())
pixman_glyph_cache_freeze =
  RIP.unsafePerformIO hs_bindgen_9eb3ebad7cc5a30d

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_thaw@
foreign import ccall unsafe "hs_bindgen_466e3ba50a7e3ceb" hs_bindgen_466e3ba50a7e3ceb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_thaw@
hs_bindgen_466e3ba50a7e3ceb :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> IO ()))
hs_bindgen_466e3ba50a7e3ceb =
  RIP.fromFFIType hs_bindgen_466e3ba50a7e3ceb_base

{-# NOINLINE pixman_glyph_cache_thaw #-}
{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> IO ())
pixman_glyph_cache_thaw =
  RIP.unsafePerformIO hs_bindgen_466e3ba50a7e3ceb

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_lookup@
foreign import ccall unsafe "hs_bindgen_e53cc86aafa55344" hs_bindgen_e53cc86aafa55344_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_lookup@
hs_bindgen_e53cc86aafa55344 :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_e53cc86aafa55344 =
  RIP.fromFFIType hs_bindgen_e53cc86aafa55344_base

{-# NOINLINE pixman_glyph_cache_lookup #-}
{-| __C declaration:__ @pixman_glyph_cache_lookup@

    __defined at:__ @pixman.h 1424:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_lookup :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO (PtrConst.PtrConst RIP.Void))
pixman_glyph_cache_lookup =
  RIP.unsafePerformIO hs_bindgen_e53cc86aafa55344

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_insert@
foreign import ccall unsafe "hs_bindgen_0532e10ed6bce111" hs_bindgen_0532e10ed6bce111_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_insert@
hs_bindgen_0532e10ed6bce111 :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_image_t -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_0532e10ed6bce111 =
  RIP.fromFFIType hs_bindgen_0532e10ed6bce111_base

{-# NOINLINE pixman_glyph_cache_insert #-}
{-| __C declaration:__ @pixman_glyph_cache_insert@

    __defined at:__ @pixman.h 1429:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_insert :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.CInt -> RIP.CInt -> RIP.Ptr Pixman_image_t -> IO (PtrConst.PtrConst RIP.Void))
pixman_glyph_cache_insert =
  RIP.unsafePerformIO hs_bindgen_0532e10ed6bce111

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_remove@
foreign import ccall unsafe "hs_bindgen_5f53f5434f1210fc" hs_bindgen_5f53f5434f1210fc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_cache_remove@
hs_bindgen_5f53f5434f1210fc :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_5f53f5434f1210fc =
  RIP.fromFFIType hs_bindgen_5f53f5434f1210fc_base

{-# NOINLINE pixman_glyph_cache_remove #-}
{-| __C declaration:__ @pixman_glyph_cache_remove@

    __defined at:__ @pixman.h 1437:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_remove :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
pixman_glyph_cache_remove =
  RIP.unsafePerformIO hs_bindgen_5f53f5434f1210fc

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_get_extents@
foreign import ccall unsafe "hs_bindgen_35df3cb5819eab2f" hs_bindgen_35df3cb5819eab2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_get_extents@
hs_bindgen_35df3cb5819eab2f :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> RIP.Ptr Pixman_glyph_t -> RIP.Ptr Pixman_box32_t -> IO ()))
hs_bindgen_35df3cb5819eab2f =
  RIP.fromFFIType hs_bindgen_35df3cb5819eab2f_base

{-# NOINLINE pixman_glyph_get_extents #-}
{-| __C declaration:__ @pixman_glyph_get_extents@

    __defined at:__ @pixman.h 1442:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_extents :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> RIP.Ptr Pixman_glyph_t -> RIP.Ptr Pixman_box32_t -> IO ())
pixman_glyph_get_extents =
  RIP.unsafePerformIO hs_bindgen_35df3cb5819eab2f

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_get_mask_format@
foreign import ccall unsafe "hs_bindgen_d433f443bdad60c1" hs_bindgen_d433f443bdad60c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_glyph_get_mask_format@
hs_bindgen_d433f443bdad60c1 :: IO (RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> PtrConst.PtrConst Pixman_glyph_t -> IO Pixman_format_code_t))
hs_bindgen_d433f443bdad60c1 =
  RIP.fromFFIType hs_bindgen_d433f443bdad60c1_base

{-# NOINLINE pixman_glyph_get_mask_format #-}
{-| __C declaration:__ @pixman_glyph_get_mask_format@

    __defined at:__ @pixman.h 1448:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_mask_format :: RIP.FunPtr (RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> PtrConst.PtrConst Pixman_glyph_t -> IO Pixman_format_code_t)
pixman_glyph_get_mask_format =
  RIP.unsafePerformIO hs_bindgen_d433f443bdad60c1

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_glyphs@
foreign import ccall unsafe "hs_bindgen_75079933c2778d71" hs_bindgen_75079933c2778d71_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_glyphs@
hs_bindgen_75079933c2778d71 :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> Pixman_format_code_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> PtrConst.PtrConst Pixman_glyph_t -> IO ()))
hs_bindgen_75079933c2778d71 =
  RIP.fromFFIType hs_bindgen_75079933c2778d71_base

{-# NOINLINE pixman_composite_glyphs #-}
{-| __C declaration:__ @pixman_composite_glyphs@

    __defined at:__ @pixman.h 1453:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> Pixman_format_code_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> PtrConst.PtrConst Pixman_glyph_t -> IO ())
pixman_composite_glyphs =
  RIP.unsafePerformIO hs_bindgen_75079933c2778d71

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_glyphs_no_mask@
foreign import ccall unsafe "hs_bindgen_566ccca90eb4ed79" hs_bindgen_566ccca90eb4ed79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_glyphs_no_mask@
hs_bindgen_566ccca90eb4ed79 :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> PtrConst.PtrConst Pixman_glyph_t -> IO ()))
hs_bindgen_566ccca90eb4ed79 =
  RIP.fromFFIType hs_bindgen_566ccca90eb4ed79_base

{-# NOINLINE pixman_composite_glyphs_no_mask #-}
{-| __C declaration:__ @pixman_composite_glyphs_no_mask@

    __defined at:__ @pixman.h 1470:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs_no_mask :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Pixman_glyph_cache_t -> RIP.CInt -> PtrConst.PtrConst Pixman_glyph_t -> IO ())
pixman_composite_glyphs_no_mask =
  RIP.unsafePerformIO hs_bindgen_566ccca90eb4ed79

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_sample_ceil_y@
foreign import ccall unsafe "hs_bindgen_f78ff5eb10a5be8b" hs_bindgen_f78ff5eb10a5be8b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_sample_ceil_y@
hs_bindgen_f78ff5eb10a5be8b :: IO (RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t))
hs_bindgen_f78ff5eb10a5be8b =
  RIP.fromFFIType hs_bindgen_f78ff5eb10a5be8b_base

{-# NOINLINE pixman_sample_ceil_y #-}
{-| __C declaration:__ @pixman_sample_ceil_y@

    __defined at:__ @pixman.h 1538:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_ceil_y :: RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t)
pixman_sample_ceil_y =
  RIP.unsafePerformIO hs_bindgen_f78ff5eb10a5be8b

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_sample_floor_y@
foreign import ccall unsafe "hs_bindgen_77d1a3da46cfc985" hs_bindgen_77d1a3da46cfc985_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_sample_floor_y@
hs_bindgen_77d1a3da46cfc985 :: IO (RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t))
hs_bindgen_77d1a3da46cfc985 =
  RIP.fromFFIType hs_bindgen_77d1a3da46cfc985_base

{-# NOINLINE pixman_sample_floor_y #-}
{-| __C declaration:__ @pixman_sample_floor_y@

    __defined at:__ @pixman.h 1542:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_floor_y :: RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t)
pixman_sample_floor_y =
  RIP.unsafePerformIO hs_bindgen_77d1a3da46cfc985

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_edge_step@
foreign import ccall unsafe "hs_bindgen_41d6937f5b1a25fa" hs_bindgen_41d6937f5b1a25fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_edge_step@
hs_bindgen_41d6937f5b1a25fa :: IO (RIP.FunPtr (RIP.Ptr Pixman_edge_t -> RIP.CInt -> IO ()))
hs_bindgen_41d6937f5b1a25fa =
  RIP.fromFFIType hs_bindgen_41d6937f5b1a25fa_base

{-# NOINLINE pixman_edge_step #-}
{-| __C declaration:__ @pixman_edge_step@

    __defined at:__ @pixman.h 1546:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_step :: RIP.FunPtr (RIP.Ptr Pixman_edge_t -> RIP.CInt -> IO ())
pixman_edge_step =
  RIP.unsafePerformIO hs_bindgen_41d6937f5b1a25fa

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_edge_init@
foreign import ccall unsafe "hs_bindgen_07c5052dd43c1552" hs_bindgen_07c5052dd43c1552_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_edge_init@
hs_bindgen_07c5052dd43c1552 :: IO (RIP.FunPtr (RIP.Ptr Pixman_edge_t -> RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_07c5052dd43c1552 =
  RIP.fromFFIType hs_bindgen_07c5052dd43c1552_base

{-# NOINLINE pixman_edge_init #-}
{-| __C declaration:__ @pixman_edge_init@

    __defined at:__ @pixman.h 1550:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_init :: RIP.FunPtr (RIP.Ptr Pixman_edge_t -> RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_edge_init =
  RIP.unsafePerformIO hs_bindgen_07c5052dd43c1552

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_line_fixed_edge_init@
foreign import ccall unsafe "hs_bindgen_fe4379f056a49497" hs_bindgen_fe4379f056a49497_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_line_fixed_edge_init@
hs_bindgen_fe4379f056a49497 :: IO (RIP.FunPtr (RIP.Ptr Pixman_edge_t -> RIP.CInt -> Pixman_fixed_t -> PtrConst.PtrConst Pixman_line_fixed_t -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_fe4379f056a49497 =
  RIP.fromFFIType hs_bindgen_fe4379f056a49497_base

{-# NOINLINE pixman_line_fixed_edge_init #-}
{-| __C declaration:__ @pixman_line_fixed_edge_init@

    __defined at:__ @pixman.h 1559:16@

    __exported by:__ @pixman.h@
-}
pixman_line_fixed_edge_init :: RIP.FunPtr (RIP.Ptr Pixman_edge_t -> RIP.CInt -> Pixman_fixed_t -> PtrConst.PtrConst Pixman_line_fixed_t -> RIP.CInt -> RIP.CInt -> IO ())
pixman_line_fixed_edge_init =
  RIP.unsafePerformIO hs_bindgen_fe4379f056a49497

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_rasterize_edges@
foreign import ccall unsafe "hs_bindgen_769148ca4984b3d8" hs_bindgen_769148ca4984b3d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_rasterize_edges@
hs_bindgen_769148ca4984b3d8 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_edge_t -> RIP.Ptr Pixman_edge_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_769148ca4984b3d8 =
  RIP.fromFFIType hs_bindgen_769148ca4984b3d8_base

{-# NOINLINE pixman_rasterize_edges #-}
{-| __C declaration:__ @pixman_rasterize_edges@

    __defined at:__ @pixman.h 1567:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_edges :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_edge_t -> RIP.Ptr Pixman_edge_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_rasterize_edges =
  RIP.unsafePerformIO hs_bindgen_769148ca4984b3d8

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_traps@
foreign import ccall unsafe "hs_bindgen_cdc6a6b9165f6142" hs_bindgen_cdc6a6b9165f6142_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_traps@
hs_bindgen_cdc6a6b9165f6142 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> PtrConst.PtrConst Pixman_trap_t -> IO ()))
hs_bindgen_cdc6a6b9165f6142 =
  RIP.fromFFIType hs_bindgen_cdc6a6b9165f6142_base

{-# NOINLINE pixman_add_traps #-}
{-| __C declaration:__ @pixman_add_traps@

    __defined at:__ @pixman.h 1574:16@

    __exported by:__ @pixman.h@
-}
pixman_add_traps :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> PtrConst.PtrConst Pixman_trap_t -> IO ())
pixman_add_traps =
  RIP.unsafePerformIO hs_bindgen_cdc6a6b9165f6142

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_trapezoids@
foreign import ccall unsafe "hs_bindgen_d057ed8ad1e0fa42" hs_bindgen_d057ed8ad1e0fa42_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_trapezoids@
hs_bindgen_d057ed8ad1e0fa42 :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> RIP.CInt -> PtrConst.PtrConst Pixman_trapezoid_t -> IO ()))
hs_bindgen_d057ed8ad1e0fa42 =
  RIP.fromFFIType hs_bindgen_d057ed8ad1e0fa42_base

{-# NOINLINE pixman_add_trapezoids #-}
{-| __C declaration:__ @pixman_add_trapezoids@

    __defined at:__ @pixman.h 1581:16@

    __exported by:__ @pixman.h@
-}
pixman_add_trapezoids :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> RIP.CInt -> PtrConst.PtrConst Pixman_trapezoid_t -> IO ())
pixman_add_trapezoids =
  RIP.unsafePerformIO hs_bindgen_d057ed8ad1e0fa42

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_rasterize_trapezoid@
foreign import ccall unsafe "hs_bindgen_9b1c659a71ea73ff" hs_bindgen_9b1c659a71ea73ff_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_rasterize_trapezoid@
hs_bindgen_9b1c659a71ea73ff :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_trapezoid_t -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_9b1c659a71ea73ff =
  RIP.fromFFIType hs_bindgen_9b1c659a71ea73ff_base

{-# NOINLINE pixman_rasterize_trapezoid #-}
{-| __C declaration:__ @pixman_rasterize_trapezoid@

    __defined at:__ @pixman.h 1588:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_trapezoid :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> PtrConst.PtrConst Pixman_trapezoid_t -> RIP.CInt -> RIP.CInt -> IO ())
pixman_rasterize_trapezoid =
  RIP.unsafePerformIO hs_bindgen_9b1c659a71ea73ff

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_trapezoids@
foreign import ccall unsafe "hs_bindgen_4d4da28f5e4e2dab" hs_bindgen_4d4da28f5e4e2dab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_trapezoids@
hs_bindgen_4d4da28f5e4e2dab :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> PtrConst.PtrConst Pixman_trapezoid_t -> IO ()))
hs_bindgen_4d4da28f5e4e2dab =
  RIP.fromFFIType hs_bindgen_4d4da28f5e4e2dab_base

{-# NOINLINE pixman_composite_trapezoids #-}
{-| __C declaration:__ @pixman_composite_trapezoids@

    __defined at:__ @pixman.h 1594:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_trapezoids :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> PtrConst.PtrConst Pixman_trapezoid_t -> IO ())
pixman_composite_trapezoids =
  RIP.unsafePerformIO hs_bindgen_4d4da28f5e4e2dab

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_triangles@
foreign import ccall unsafe "hs_bindgen_c087cd5222570325" hs_bindgen_c087cd5222570325_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_composite_triangles@
hs_bindgen_c087cd5222570325 :: IO (RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> PtrConst.PtrConst Pixman_triangle_t -> IO ()))
hs_bindgen_c087cd5222570325 =
  RIP.fromFFIType hs_bindgen_c087cd5222570325_base

{-# NOINLINE pixman_composite_triangles #-}
{-| __C declaration:__ @pixman_composite_triangles@

    __defined at:__ @pixman.h 1606:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_triangles :: RIP.FunPtr (Pixman_op_t -> RIP.Ptr Pixman_image_t -> RIP.Ptr Pixman_image_t -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> PtrConst.PtrConst Pixman_triangle_t -> IO ())
pixman_composite_triangles =
  RIP.unsafePerformIO hs_bindgen_c087cd5222570325

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_triangles@
foreign import ccall unsafe "hs_bindgen_dd6b68f0b4b1a4aa" hs_bindgen_dd6b68f0b4b1a4aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Pixman_Generated_Bindings.Pixman.Generated_get_pixman_add_triangles@
hs_bindgen_dd6b68f0b4b1a4aa :: IO (RIP.FunPtr (RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.CInt -> PtrConst.PtrConst Pixman_triangle_t -> IO ()))
hs_bindgen_dd6b68f0b4b1a4aa =
  RIP.fromFFIType hs_bindgen_dd6b68f0b4b1a4aa_base

{-# NOINLINE pixman_add_triangles #-}
{-| __C declaration:__ @pixman_add_triangles@

    __defined at:__ @pixman.h 1618:12@

    __exported by:__ @pixman.h@
-}
pixman_add_triangles :: RIP.FunPtr (RIP.Ptr Pixman_image_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.CInt -> PtrConst.PtrConst Pixman_triangle_t -> IO ())
pixman_add_triangles =
  RIP.unsafePerformIO hs_bindgen_dd6b68f0b4b1a4aa
