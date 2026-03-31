{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Pixman.FunPtr
    ( Generated.Pixman.FunPtr.pixman_transform_init_identity
    , Generated.Pixman.FunPtr.pixman_transform_point_3d
    , Generated.Pixman.FunPtr.pixman_transform_point
    , Generated.Pixman.FunPtr.pixman_transform_multiply
    , Generated.Pixman.FunPtr.pixman_transform_init_scale
    , Generated.Pixman.FunPtr.pixman_transform_scale
    , Generated.Pixman.FunPtr.pixman_transform_init_rotate
    , Generated.Pixman.FunPtr.pixman_transform_rotate
    , Generated.Pixman.FunPtr.pixman_transform_init_translate
    , Generated.Pixman.FunPtr.pixman_transform_translate
    , Generated.Pixman.FunPtr.pixman_transform_bounds
    , Generated.Pixman.FunPtr.pixman_transform_invert
    , Generated.Pixman.FunPtr.pixman_transform_is_identity
    , Generated.Pixman.FunPtr.pixman_transform_is_scale
    , Generated.Pixman.FunPtr.pixman_transform_is_int_translate
    , Generated.Pixman.FunPtr.pixman_transform_is_inverse
    , Generated.Pixman.FunPtr.pixman_transform_from_pixman_f_transform
    , Generated.Pixman.FunPtr.pixman_f_transform_from_pixman_transform
    , Generated.Pixman.FunPtr.pixman_f_transform_invert
    , Generated.Pixman.FunPtr.pixman_f_transform_point
    , Generated.Pixman.FunPtr.pixman_f_transform_point_3d
    , Generated.Pixman.FunPtr.pixman_f_transform_multiply
    , Generated.Pixman.FunPtr.pixman_f_transform_init_scale
    , Generated.Pixman.FunPtr.pixman_f_transform_scale
    , Generated.Pixman.FunPtr.pixman_f_transform_init_rotate
    , Generated.Pixman.FunPtr.pixman_f_transform_rotate
    , Generated.Pixman.FunPtr.pixman_f_transform_init_translate
    , Generated.Pixman.FunPtr.pixman_f_transform_translate
    , Generated.Pixman.FunPtr.pixman_f_transform_bounds
    , Generated.Pixman.FunPtr.pixman_f_transform_init_identity
    , Generated.Pixman.FunPtr.pixman_region_set_static_pointers
    , Generated.Pixman.FunPtr.pixman_region_init
    , Generated.Pixman.FunPtr.pixman_region_init_rect
    , Generated.Pixman.FunPtr.pixman_region_init_rects
    , Generated.Pixman.FunPtr.pixman_region_init_with_extents
    , Generated.Pixman.FunPtr.pixman_region_init_from_image
    , Generated.Pixman.FunPtr.pixman_region_fini
    , Generated.Pixman.FunPtr.pixman_region_translate
    , Generated.Pixman.FunPtr.pixman_region_copy
    , Generated.Pixman.FunPtr.pixman_region_intersect
    , Generated.Pixman.FunPtr.pixman_region_union
    , Generated.Pixman.FunPtr.pixman_region_union_rect
    , Generated.Pixman.FunPtr.pixman_region_intersect_rect
    , Generated.Pixman.FunPtr.pixman_region_subtract
    , Generated.Pixman.FunPtr.pixman_region_inverse
    , Generated.Pixman.FunPtr.pixman_region_contains_point
    , Generated.Pixman.FunPtr.pixman_region_contains_rectangle
    , Generated.Pixman.FunPtr.pixman_region_empty
    , Generated.Pixman.FunPtr.pixman_region_not_empty
    , Generated.Pixman.FunPtr.pixman_region_extents
    , Generated.Pixman.FunPtr.pixman_region_n_rects
    , Generated.Pixman.FunPtr.pixman_region_rectangles
    , Generated.Pixman.FunPtr.pixman_region_equal
    , Generated.Pixman.FunPtr.pixman_region_selfcheck
    , Generated.Pixman.FunPtr.pixman_region_reset
    , Generated.Pixman.FunPtr.pixman_region_clear
    , Generated.Pixman.FunPtr.pixman_region32_init
    , Generated.Pixman.FunPtr.pixman_region32_init_rect
    , Generated.Pixman.FunPtr.pixman_region32_init_rects
    , Generated.Pixman.FunPtr.pixman_region32_init_with_extents
    , Generated.Pixman.FunPtr.pixman_region32_init_from_image
    , Generated.Pixman.FunPtr.pixman_region32_fini
    , Generated.Pixman.FunPtr.pixman_region32_translate
    , Generated.Pixman.FunPtr.pixman_region32_copy
    , Generated.Pixman.FunPtr.pixman_region32_intersect
    , Generated.Pixman.FunPtr.pixman_region32_union
    , Generated.Pixman.FunPtr.pixman_region32_intersect_rect
    , Generated.Pixman.FunPtr.pixman_region32_union_rect
    , Generated.Pixman.FunPtr.pixman_region32_subtract
    , Generated.Pixman.FunPtr.pixman_region32_inverse
    , Generated.Pixman.FunPtr.pixman_region32_contains_point
    , Generated.Pixman.FunPtr.pixman_region32_contains_rectangle
    , Generated.Pixman.FunPtr.pixman_region32_empty
    , Generated.Pixman.FunPtr.pixman_region32_not_empty
    , Generated.Pixman.FunPtr.pixman_region32_extents
    , Generated.Pixman.FunPtr.pixman_region32_n_rects
    , Generated.Pixman.FunPtr.pixman_region32_rectangles
    , Generated.Pixman.FunPtr.pixman_region32_equal
    , Generated.Pixman.FunPtr.pixman_region32_selfcheck
    , Generated.Pixman.FunPtr.pixman_region32_reset
    , Generated.Pixman.FunPtr.pixman_region32_clear
    , Generated.Pixman.FunPtr.pixman_region64f_init
    , Generated.Pixman.FunPtr.pixman_region64f_init_rect
    , Generated.Pixman.FunPtr.pixman_region64f_init_rectf
    , Generated.Pixman.FunPtr.pixman_region64f_init_rects
    , Generated.Pixman.FunPtr.pixman_region64f_init_with_extents
    , Generated.Pixman.FunPtr.pixman_region64f_init_from_image
    , Generated.Pixman.FunPtr.pixman_region64f_fini
    , Generated.Pixman.FunPtr.pixman_region64f_translate
    , Generated.Pixman.FunPtr.pixman_region64f_translatef
    , Generated.Pixman.FunPtr.pixman_region64f_copy
    , Generated.Pixman.FunPtr.pixman_region64f_intersect
    , Generated.Pixman.FunPtr.pixman_region64f_union
    , Generated.Pixman.FunPtr.pixman_region64f_intersect_rect
    , Generated.Pixman.FunPtr.pixman_region64f_intersect_rectf
    , Generated.Pixman.FunPtr.pixman_region64f_union_rect
    , Generated.Pixman.FunPtr.pixman_region64f_union_rectf
    , Generated.Pixman.FunPtr.pixman_region64f_subtract
    , Generated.Pixman.FunPtr.pixman_region64f_inverse
    , Generated.Pixman.FunPtr.pixman_region64f_contains_point
    , Generated.Pixman.FunPtr.pixman_region64f_contains_pointf
    , Generated.Pixman.FunPtr.pixman_region64f_contains_rectangle
    , Generated.Pixman.FunPtr.pixman_region64f_empty
    , Generated.Pixman.FunPtr.pixman_region64f_not_empty
    , Generated.Pixman.FunPtr.pixman_region64f_extents
    , Generated.Pixman.FunPtr.pixman_region64f_n_rects
    , Generated.Pixman.FunPtr.pixman_region64f_rectangles
    , Generated.Pixman.FunPtr.pixman_region64f_equal
    , Generated.Pixman.FunPtr.pixman_region64f_selfcheck
    , Generated.Pixman.FunPtr.pixman_region64f_reset
    , Generated.Pixman.FunPtr.pixman_region64f_clear
    , Generated.Pixman.FunPtr.pixman_blt
    , Generated.Pixman.FunPtr.pixman_fill
    , Generated.Pixman.FunPtr.pixman_version
    , Generated.Pixman.FunPtr.pixman_version_string
    , Generated.Pixman.FunPtr.pixman_format_supported_destination
    , Generated.Pixman.FunPtr.pixman_format_supported_source
    , Generated.Pixman.FunPtr.pixman_image_create_solid_fill
    , Generated.Pixman.FunPtr.pixman_image_create_linear_gradient
    , Generated.Pixman.FunPtr.pixman_image_create_radial_gradient
    , Generated.Pixman.FunPtr.pixman_image_create_conical_gradient
    , Generated.Pixman.FunPtr.pixman_image_create_bits
    , Generated.Pixman.FunPtr.pixman_image_create_bits_no_clear
    , Generated.Pixman.FunPtr.pixman_image_ref
    , Generated.Pixman.FunPtr.pixman_image_unref
    , Generated.Pixman.FunPtr.pixman_image_set_destroy_function
    , Generated.Pixman.FunPtr.pixman_image_get_destroy_data
    , Generated.Pixman.FunPtr.pixman_image_set_clip_region
    , Generated.Pixman.FunPtr.pixman_image_set_clip_region32
    , Generated.Pixman.FunPtr.pixman_image_set_clip_region64f
    , Generated.Pixman.FunPtr.pixman_image_set_has_client_clip
    , Generated.Pixman.FunPtr.pixman_image_set_transform
    , Generated.Pixman.FunPtr.pixman_image_set_repeat
    , Generated.Pixman.FunPtr.pixman_image_set_dither
    , Generated.Pixman.FunPtr.pixman_image_set_dither_offset
    , Generated.Pixman.FunPtr.pixman_image_set_filter
    , Generated.Pixman.FunPtr.pixman_image_set_source_clipping
    , Generated.Pixman.FunPtr.pixman_image_set_alpha_map
    , Generated.Pixman.FunPtr.pixman_image_set_component_alpha
    , Generated.Pixman.FunPtr.pixman_image_get_component_alpha
    , Generated.Pixman.FunPtr.pixman_image_set_accessors
    , Generated.Pixman.FunPtr.pixman_image_set_indexed
    , Generated.Pixman.FunPtr.pixman_image_get_data
    , Generated.Pixman.FunPtr.pixman_image_get_width
    , Generated.Pixman.FunPtr.pixman_image_get_height
    , Generated.Pixman.FunPtr.pixman_image_get_stride
    , Generated.Pixman.FunPtr.pixman_image_get_depth
    , Generated.Pixman.FunPtr.pixman_image_get_format
    , Generated.Pixman.FunPtr.pixman_filter_create_separable_convolution
    , Generated.Pixman.FunPtr.pixman_image_fill_rectangles
    , Generated.Pixman.FunPtr.pixman_image_fill_boxes
    , Generated.Pixman.FunPtr.pixman_compute_composite_region
    , Generated.Pixman.FunPtr.pixman_image_composite
    , Generated.Pixman.FunPtr.pixman_image_composite32
    , Generated.Pixman.FunPtr.pixman_image_composite64f
    , Generated.Pixman.FunPtr.pixman_disable_out_of_bounds_workaround
    , Generated.Pixman.FunPtr.pixman_glyph_cache_create
    , Generated.Pixman.FunPtr.pixman_glyph_cache_destroy
    , Generated.Pixman.FunPtr.pixman_glyph_cache_freeze
    , Generated.Pixman.FunPtr.pixman_glyph_cache_thaw
    , Generated.Pixman.FunPtr.pixman_glyph_cache_lookup
    , Generated.Pixman.FunPtr.pixman_glyph_cache_insert
    , Generated.Pixman.FunPtr.pixman_glyph_cache_remove
    , Generated.Pixman.FunPtr.pixman_glyph_get_extents
    , Generated.Pixman.FunPtr.pixman_glyph_get_mask_format
    , Generated.Pixman.FunPtr.pixman_composite_glyphs
    , Generated.Pixman.FunPtr.pixman_composite_glyphs_no_mask
    , Generated.Pixman.FunPtr.pixman_sample_ceil_y
    , Generated.Pixman.FunPtr.pixman_sample_floor_y
    , Generated.Pixman.FunPtr.pixman_edge_step
    , Generated.Pixman.FunPtr.pixman_edge_init
    , Generated.Pixman.FunPtr.pixman_line_fixed_edge_init
    , Generated.Pixman.FunPtr.pixman_rasterize_edges
    , Generated.Pixman.FunPtr.pixman_add_traps
    , Generated.Pixman.FunPtr.pixman_add_trapezoids
    , Generated.Pixman.FunPtr.pixman_rasterize_trapezoid
    , Generated.Pixman.FunPtr.pixman_composite_trapezoids
    , Generated.Pixman.FunPtr.pixman_composite_triangles
    , Generated.Pixman.FunPtr.pixman_add_triangles
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Pixman

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <pixman.h>"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_init_identity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_41ca5384eda36cc4 (void)) ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_init_identity;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_point_3d */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_eb25b1cd973042db (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_point_3d;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_81a01548b0d48ced (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_point;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_multiply */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_802b9d3336690d35 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_multiply;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_init_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c781747365e8c773 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_scale;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_907ff447732ce76f (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_scale;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_init_rotate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5e101b3e97567c3e (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_rotate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_rotate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ab0435cb9d465ddb (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_rotate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_init_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5f5dcd337efea114 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  return &pixman_transform_init_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8c652dc2b00f7b06 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return &pixman_transform_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_bounds */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d99f2fef16d0f8e0 (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_bounds;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_invert */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c6823775a8b050f2 (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_invert;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_is_identity */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d7dd7eef3d06a15c (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_identity;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_is_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_2c4e0b1f54cdcda0 (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_scale;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_is_int_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_83b1f4fa4bd8ddd2 (void)) ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return &pixman_transform_is_int_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_is_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ea6c49a98deeb6fa (void)) ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_is_inverse;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_transform_from_pixman_f_transform */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_1d68968b17fd442b (void)) ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_transform_from_pixman_f_transform;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_from_pixman_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_69c42072cc3c3391 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_from_pixman_transform;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_invert */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d290516f851eaa60 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_invert;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_94e5e6f014b9b4b0 (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_point;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_point_3d */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_187304ad12ab3aa6 (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_point_3d;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_multiply */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_73b62b30b5f5f324 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_multiply;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d338b6d32f64dad (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_scale;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_scale */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_6684c1e84e16b524 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_scale;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_rotate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_772ffea0cd90b1ca (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_rotate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_rotate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c3f6ae2195fdeec3 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_rotate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d573485166b76dae (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_translate */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_7bb936a353591900 (void)) ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return &pixman_f_transform_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_bounds */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ed13d85c08b7a0ab (void)) ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return &pixman_f_transform_bounds;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_identity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4f7af94b6ce49dde (void)) ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  return &pixman_f_transform_init_identity;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_set_static_pointers */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f3f3d2fa3a55c266 (void)) ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_set_static_pointers;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_860035d33192aaa3 (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_init;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_33dd37963dffb5b4 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region_init_rect;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_24884cbdab063bb8 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region_init_rects;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_491c0c560fd40e23 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_init_with_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c9140a543516cd45 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_init_from_image;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_94321250458de1bd (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_fini;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4955c784edd54846 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_569f53cf702b2b0c (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_copy;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_df97a865b7b62ffb (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_intersect;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_02cad794f36eec6c (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_union;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_466a8e87015db45e (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5e9b9021a7c9c1f6 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_574bccce87994ce0 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_subtract;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_23cd8fc2e46b2b39 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region_inverse;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3227d72279ecf56d (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region_contains_point;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_1ddafb1d9bcf1c86 (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_contains_rectangle;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e5099c17fcca0894 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_empty;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4fcdc5d9637c3028 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_not_empty;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_extents */"
  , "__attribute__ ((const))"
  , "pixman_box16_t *(*hs_bindgen_1f106692f4fbb531 (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc0ebf1c23c3d82d (void)) ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_n_rects;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box16_t *(*hs_bindgen_7aedc1ec976c92a9 (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_rectangles;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a08d98594f5a87fd (void)) ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_equal;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ba384a4abf2a3c8a (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_selfcheck;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e41dff393fbd0165 (void)) ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region_reset;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_597115c0e7253aab (void)) ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region_clear;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8752435596c4464e (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_init;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4275406f9e6c1b17 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region32_init_rect;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_7be02507ce5cc2a0 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_init_rects;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4ec62080f9a9773e (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_init_with_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_89f24e9b3c75da2f (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_init_from_image;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_af082a4a4e4c2549 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_fini;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f8449f30122e06d1 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d625322def4a35c6 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_copy;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3620dcd801b001b7 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_intersect;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ae07a290cbc9ca3b (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_union;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8ba533fe485f23e1 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_e921fb1e7d08ef12 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9237aef6f36ea1a5 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_subtract;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_930b26804e138cf2 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region32_inverse;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_a3b0a867fcbd4630 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region32_contains_point;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_17b94a2e77c21f8d (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_contains_rectangle;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_5278688a5fc2c25c (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_empty;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_48c98e7e4d0d69d8 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_not_empty;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_extents */"
  , "__attribute__ ((const))"
  , "pixman_box32_t *(*hs_bindgen_f9a131a2ffca5777 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_044500b82a090e08 (void)) ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_n_rects;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box32_t *(*hs_bindgen_7c981e9c0e3abcf6 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_rectangles;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ec7ae8d947457132 (void)) ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_equal;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_543a9480b0e682e4 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_selfcheck;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_feaccea8dd9fadb5 (void)) ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region32_reset;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region32_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_13644311e35bf8e7 (void)) ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region32_clear;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bf7a75abcc76be69 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_init;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_453eedbb2e5de8cc (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rect;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rectf */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_eb6b3e329c2e8092 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rectf;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rects */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_34025c81a31b059a (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_rects;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_init_with_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cc5ad936339778c1 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_with_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_init_from_image */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fddc6f157c8723e3 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_init_from_image;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_fini */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a515e398e5490c47 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_fini;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_translate */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f4a731bda6db0cd5 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_translate;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_translatef */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8ffe0b02e7ff19b6 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_translatef;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_copy */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_827632ef42ad84a6 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_copy;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_8f5a904719672697 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_intersect;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_union */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_202107bc7bf7aaed (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_union;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_65e242b1d0a7bf82 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect_rectf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_c2d8e29aac00e5df (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_union_rect */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_149baab4dde2c162 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_union_rectf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_66edaaf41284f3f9 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_subtract */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_d3c2599ceffa8190 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_subtract;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_inverse */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ab7f09c6818d8bf8 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_region64f_inverse;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_point */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_9cf10110e2971492 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_point;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_pointf */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_cbc4081cdd46c83d (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_pointf;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_rectangle */"
  , "__attribute__ ((const))"
  , "pixman_region_overlap_t (*hs_bindgen_88c278d69b1502c9 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_contains_rectangle;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_952c879de1a2eb31 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_empty;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_not_empty */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_4c740bc3d53a5538 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_not_empty;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_extents */"
  , "__attribute__ ((const))"
  , "pixman_box64f_t *(*hs_bindgen_327d19bebc721e49 (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_n_rects */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_065311ca0f31910b (void)) ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_n_rects;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_box64f_t *(*hs_bindgen_d1c94d902255b924 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_rectangles;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_equal */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3f5e33d6997c80e5 (void)) ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_equal;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_selfcheck */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_64ab9728dab1b990 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_selfcheck;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_reset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c7b37023e078a162 (void)) ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_region64f_reset;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_region64f_clear */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4a5f60d528d311f1 (void)) ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_region64f_clear;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_blt */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ccb3142d8556f6d7 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_fill */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_09f18194f32df497 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_version */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a53f0e71444a88fc (void)) (void)"
  , "{"
  , "  return &pixman_version;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_10632228e2d95c46 (void)) (void)"
  , "{"
  , "  return &pixman_version_string;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_format_supported_destination */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_25b6836e9df5be11 (void)) ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return &pixman_format_supported_destination;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_format_supported_source */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_b021e9a72a5339aa (void)) ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return &pixman_format_supported_source;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_create_solid_fill */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_a20c74f4715fe774 (void)) ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_create_solid_fill;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_create_linear_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_ec1656042fbaf702 (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_create_linear_gradient;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_create_radial_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_ac5c9e47496e0073 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_create_conical_gradient */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_9b9eac8cee580f46 (void)) ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_create_conical_gradient;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_create_bits */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_ffce917fafa06a45 (void)) ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return &pixman_image_create_bits;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_create_bits_no_clear */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_f94008234aee911b (void)) ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return &pixman_image_create_bits_no_clear;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_ref */"
  , "__attribute__ ((const))"
  , "pixman_image_t *(*hs_bindgen_84099b43e9269c67 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_ref;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_unref */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_ab2dde97a1d9bdd3 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_unref;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_destroy_function */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8c732f0430fdf0c0 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_destroy_function;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_destroy_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_afd38337024851e0 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_destroy_data;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_992fef94f204a972 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region32 */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_3b5def32706f53b9 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region32;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region64f */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_148a8fcb05669d69 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_clip_region64f;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_has_client_clip */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e834f55a5f538f2f (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_has_client_clip;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_transform */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_da6449c625665db6 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_transform;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_repeat */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_626135e7875fde14 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_repeat;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_dither */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c7747ac296333339 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_dither;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_dither_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a7faf2e1d9db30cb (void)) ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_dither_offset;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_filter */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_2d1c4949fdcb573a (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_image_set_filter;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_source_clipping */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bf691ce07cc53fef (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_source_clipping;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_alpha_map */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_75e7ad3d9d027d94 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  return &pixman_image_set_alpha_map;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_component_alpha */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8638012d2ee9d0b3 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_component_alpha;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_component_alpha */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_360a69b0c23cd418 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_component_alpha;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_accessors */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ef118f1c1113b802 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  return &pixman_image_set_accessors;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_set_indexed */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_28d4b28e389f3430 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  return &pixman_image_set_indexed;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_data */"
  , "__attribute__ ((const))"
  , "uint32_t *(*hs_bindgen_9276ea53e804a8df (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_data;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_width */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_09d626944a52d425 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_width;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_height */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ff322bb285f5284d (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_height;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_stride */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a49554839865bdce (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_stride;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_depth */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_373e935f5e39a441 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_depth;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_get_format */"
  , "__attribute__ ((const))"
  , "pixman_format_code_t (*hs_bindgen_2266e5c92064ccf9 (void)) ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_image_get_format;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_filter_create_separable_convolution */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t *(*hs_bindgen_51e510fdd5624a56 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_fill_rectangles */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_63424bd2cbd043bb (void)) ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_image_fill_rectangles;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_fill_boxes */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_66281048be9c80ed (void)) ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_image_fill_boxes;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_compute_composite_region */"
  , "__attribute__ ((const))"
  , "pixman_bool_t (*hs_bindgen_81fc8338093cb027 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_composite */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8bbffa7d7e76c147 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_composite32 */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_94a0d58e1dcc550e (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_image_composite64f */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8a596d9cd2b2cba8 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_disable_out_of_bounds_workaround */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5c4a66f37c3fd767 (void)) (void)"
  , "{"
  , "  return &pixman_disable_out_of_bounds_workaround;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_create */"
  , "__attribute__ ((const))"
  , "pixman_glyph_cache_t *(*hs_bindgen_15134e11c7751857 (void)) (void)"
  , "{"
  , "  return &pixman_glyph_cache_create;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b894408fc9a420f0 (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_destroy;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_freeze */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0e5bbda192fb2599 (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_freeze;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_thaw */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d5ee3ab06b6a43be (void)) ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_thaw;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_lookup */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_9282f42124d69efe (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_lookup;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_insert */"
  , "__attribute__ ((const))"
  , "void const *(*hs_bindgen_8770dd6e399be59f (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_remove */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5c9b6f193f1c13dd (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_cache_remove;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_get_extents */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_871554ffff4bf118 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return &pixman_glyph_get_extents;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_glyph_get_mask_format */"
  , "__attribute__ ((const))"
  , "pixman_format_code_t (*hs_bindgen_34c5c908d63d5559 (void)) ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return &pixman_glyph_get_mask_format;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_composite_glyphs */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9a049b29b82bd857 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_composite_glyphs_no_mask */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6ca5f26e17b5adaa (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_sample_ceil_y */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t (*hs_bindgen_d0bf1f8b3c26d94d (void)) ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_sample_ceil_y;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_sample_floor_y */"
  , "__attribute__ ((const))"
  , "pixman_fixed_t (*hs_bindgen_b6fb6cd13c301595 (void)) ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_sample_floor_y;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_edge_step */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6004c17f00170f94 (void)) ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &pixman_edge_step;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_edge_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c927edb2426e68f1 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_line_fixed_edge_init */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bda485b9e14d1bd0 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_rasterize_edges */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_23a6118c4cb8ca0d (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  return &pixman_rasterize_edges;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_add_traps */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bc72b1aad4eace82 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_traps;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_add_trapezoids */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_aeae03749fca8f5a (void)) ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  return &pixman_add_trapezoids;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_rasterize_trapezoid */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_152b396d3e99bfd5 (void)) ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return &pixman_rasterize_trapezoid;"
  , "}"
  , "/* hswm_pixman_Generated.Pixman_get_pixman_composite_trapezoids */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b5813da6409a7c88 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_composite_triangles */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_548b0340a9c53178 (void)) ("
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
  , "/* hswm_pixman_Generated.Pixman_get_pixman_add_triangles */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ba3321cf804ea5b2 (void)) ("
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

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_41ca5384eda36cc4" hs_bindgen_41ca5384eda36cc4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_identity@
hs_bindgen_41ca5384eda36cc4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> IO ()))
hs_bindgen_41ca5384eda36cc4 =
  RIP.fromFFIType hs_bindgen_41ca5384eda36cc4_base

{-# NOINLINE pixman_transform_init_identity #-}
{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> IO ())
pixman_transform_init_identity =
  RIP.unsafePerformIO hs_bindgen_41ca5384eda36cc4

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_eb25b1cd973042db" hs_bindgen_eb25b1cd973042db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_point_3d@
hs_bindgen_eb25b1cd973042db :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t))
hs_bindgen_eb25b1cd973042db =
  RIP.fromFFIType hs_bindgen_eb25b1cd973042db_base

{-# NOINLINE pixman_transform_point_3d #-}
{-| __C declaration:__ @pixman_transform_point_3d@

    __defined at:__ @pixman.h 191:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point_3d :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t)
pixman_transform_point_3d =
  RIP.unsafePerformIO hs_bindgen_eb25b1cd973042db

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_point@
foreign import ccall unsafe "hs_bindgen_81a01548b0d48ced" hs_bindgen_81a01548b0d48ced_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_point@
hs_bindgen_81a01548b0d48ced :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t))
hs_bindgen_81a01548b0d48ced =
  RIP.fromFFIType hs_bindgen_81a01548b0d48ced_base

{-# NOINLINE pixman_transform_point #-}
{-| __C declaration:__ @pixman_transform_point@

    __defined at:__ @pixman.h 195:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_vector) -> IO Pixman_bool_t)
pixman_transform_point =
  RIP.unsafePerformIO hs_bindgen_81a01548b0d48ced

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_multiply@
foreign import ccall unsafe "hs_bindgen_802b9d3336690d35" hs_bindgen_802b9d3336690d35_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_multiply@
hs_bindgen_802b9d3336690d35 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_802b9d3336690d35 =
  RIP.fromFFIType hs_bindgen_802b9d3336690d35_base

{-# NOINLINE pixman_transform_multiply #-}
{-| __C declaration:__ @pixman_transform_multiply@

    __defined at:__ @pixman.h 199:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_multiply :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_multiply =
  RIP.unsafePerformIO hs_bindgen_802b9d3336690d35

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_c781747365e8c773" hs_bindgen_c781747365e8c773_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_scale@
hs_bindgen_c781747365e8c773 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_c781747365e8c773 =
  RIP.fromFFIType hs_bindgen_c781747365e8c773_base

{-# NOINLINE pixman_transform_init_scale #-}
{-| __C declaration:__ @pixman_transform_init_scale@

    __defined at:__ @pixman.h 204:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_scale :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_scale =
  RIP.unsafePerformIO hs_bindgen_c781747365e8c773

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_scale@
foreign import ccall unsafe "hs_bindgen_907ff447732ce76f" hs_bindgen_907ff447732ce76f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_scale@
hs_bindgen_907ff447732ce76f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_907ff447732ce76f =
  RIP.fromFFIType hs_bindgen_907ff447732ce76f_base

{-# NOINLINE pixman_transform_scale #-}
{-| __C declaration:__ @pixman_transform_scale@

    __defined at:__ @pixman.h 209:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_scale :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_scale =
  RIP.unsafePerformIO hs_bindgen_907ff447732ce76f

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_5e101b3e97567c3e" hs_bindgen_5e101b3e97567c3e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_rotate@
hs_bindgen_5e101b3e97567c3e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_5e101b3e97567c3e =
  RIP.fromFFIType hs_bindgen_5e101b3e97567c3e_base

{-# NOINLINE pixman_transform_init_rotate #-}
{-| __C declaration:__ @pixman_transform_init_rotate@

    __defined at:__ @pixman.h 215:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_rotate =
  RIP.unsafePerformIO hs_bindgen_5e101b3e97567c3e

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_rotate@
foreign import ccall unsafe "hs_bindgen_ab0435cb9d465ddb" hs_bindgen_ab0435cb9d465ddb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_rotate@
hs_bindgen_ab0435cb9d465ddb :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_ab0435cb9d465ddb =
  RIP.fromFFIType hs_bindgen_ab0435cb9d465ddb_base

{-# NOINLINE pixman_transform_rotate #-}
{-| __C declaration:__ @pixman_transform_rotate@

    __defined at:__ @pixman.h 220:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_rotate =
  RIP.unsafePerformIO hs_bindgen_ab0435cb9d465ddb

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_5f5dcd337efea114" hs_bindgen_5f5dcd337efea114_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_init_translate@
hs_bindgen_5f5dcd337efea114 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_5f5dcd337efea114 =
  RIP.fromFFIType hs_bindgen_5f5dcd337efea114_base

{-# NOINLINE pixman_transform_init_translate #-}
{-| __C declaration:__ @pixman_transform_init_translate@

    __defined at:__ @pixman.h 226:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_translate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_transform_init_translate =
  RIP.unsafePerformIO hs_bindgen_5f5dcd337efea114

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_translate@
foreign import ccall unsafe "hs_bindgen_8c652dc2b00f7b06" hs_bindgen_8c652dc2b00f7b06_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_translate@
hs_bindgen_8c652dc2b00f7b06 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t))
hs_bindgen_8c652dc2b00f7b06 =
  RIP.fromFFIType hs_bindgen_8c652dc2b00f7b06_base

{-# NOINLINE pixman_transform_translate #-}
{-| __C declaration:__ @pixman_transform_translate@

    __defined at:__ @pixman.h 231:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_translate :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (RIP.Ptr Pixman_transform) -> Pixman_fixed_t -> Pixman_fixed_t -> IO Pixman_bool_t)
pixman_transform_translate =
  RIP.unsafePerformIO hs_bindgen_8c652dc2b00f7b06

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_bounds@
foreign import ccall unsafe "hs_bindgen_d99f2fef16d0f8e0" hs_bindgen_d99f2fef16d0f8e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_bounds@
hs_bindgen_d99f2fef16d0f8e0 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t))
hs_bindgen_d99f2fef16d0f8e0 =
  RIP.fromFFIType hs_bindgen_d99f2fef16d0f8e0_base

{-# NOINLINE pixman_transform_bounds #-}
{-| __C declaration:__ @pixman_transform_bounds@

    __defined at:__ @pixman.h 237:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_bounds :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t)
pixman_transform_bounds =
  RIP.unsafePerformIO hs_bindgen_d99f2fef16d0f8e0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_invert@
foreign import ccall unsafe "hs_bindgen_c6823775a8b050f2" hs_bindgen_c6823775a8b050f2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_invert@
hs_bindgen_c6823775a8b050f2 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_c6823775a8b050f2 =
  RIP.fromFFIType hs_bindgen_c6823775a8b050f2_base

{-# NOINLINE pixman_transform_invert #-}
{-| __C declaration:__ @pixman_transform_invert@

    __defined at:__ @pixman.h 241:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_invert :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_invert =
  RIP.unsafePerformIO hs_bindgen_c6823775a8b050f2

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_identity@
foreign import ccall unsafe "hs_bindgen_d7dd7eef3d06a15c" hs_bindgen_d7dd7eef3d06a15c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_identity@
hs_bindgen_d7dd7eef3d06a15c :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_d7dd7eef3d06a15c =
  RIP.fromFFIType hs_bindgen_d7dd7eef3d06a15c_base

{-# NOINLINE pixman_transform_is_identity #-}
{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_identity =
  RIP.unsafePerformIO hs_bindgen_d7dd7eef3d06a15c

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_scale@
foreign import ccall unsafe "hs_bindgen_2c4e0b1f54cdcda0" hs_bindgen_2c4e0b1f54cdcda0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_scale@
hs_bindgen_2c4e0b1f54cdcda0 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_2c4e0b1f54cdcda0 =
  RIP.fromFFIType hs_bindgen_2c4e0b1f54cdcda0_base

{-# NOINLINE pixman_transform_is_scale #-}
{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_scale =
  RIP.unsafePerformIO hs_bindgen_2c4e0b1f54cdcda0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_int_translate@
foreign import ccall unsafe "hs_bindgen_83b1f4fa4bd8ddd2" hs_bindgen_83b1f4fa4bd8ddd2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_int_translate@
hs_bindgen_83b1f4fa4bd8ddd2 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_83b1f4fa4bd8ddd2 =
  RIP.fromFFIType hs_bindgen_83b1f4fa4bd8ddd2_base

{-# NOINLINE pixman_transform_is_int_translate #-}
{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_int_translate =
  RIP.unsafePerformIO hs_bindgen_83b1f4fa4bd8ddd2

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_inverse@
foreign import ccall unsafe "hs_bindgen_ea6c49a98deeb6fa" hs_bindgen_ea6c49a98deeb6fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_is_inverse@
hs_bindgen_ea6c49a98deeb6fa :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t))
hs_bindgen_ea6c49a98deeb6fa =
  RIP.fromFFIType hs_bindgen_ea6c49a98deeb6fa_base

{-# NOINLINE pixman_transform_is_inverse #-}
{-| __C declaration:__ @pixman_transform_is_inverse@

    __defined at:__ @pixman.h 254:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_inverse :: RIP.FunPtr ((PtrConst.PtrConst Pixman_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO Pixman_bool_t)
pixman_transform_is_inverse =
  RIP.unsafePerformIO hs_bindgen_ea6c49a98deeb6fa

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_from_pixman_f_transform@
foreign import ccall unsafe "hs_bindgen_1d68968b17fd442b" hs_bindgen_1d68968b17fd442b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_transform_from_pixman_f_transform@
hs_bindgen_1d68968b17fd442b :: IO (RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t))
hs_bindgen_1d68968b17fd442b =
  RIP.fromFFIType hs_bindgen_1d68968b17fd442b_base

{-# NOINLINE pixman_transform_from_pixman_f_transform #-}
{-| __C declaration:__ @pixman_transform_from_pixman_f_transform@

    __defined at:__ @pixman.h 275:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_from_pixman_f_transform :: RIP.FunPtr ((RIP.Ptr Pixman_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t)
pixman_transform_from_pixman_f_transform =
  RIP.unsafePerformIO hs_bindgen_1d68968b17fd442b

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_from_pixman_transform@
foreign import ccall unsafe "hs_bindgen_69c42072cc3c3391" hs_bindgen_69c42072cc3c3391_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_from_pixman_transform@
hs_bindgen_69c42072cc3c3391 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO ()))
hs_bindgen_69c42072cc3c3391 =
  RIP.fromFFIType hs_bindgen_69c42072cc3c3391_base

{-# NOINLINE pixman_f_transform_from_pixman_transform #-}
{-| __C declaration:__ @pixman_f_transform_from_pixman_transform@

    __defined at:__ @pixman.h 279:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_from_pixman_transform :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_transform) -> IO ())
pixman_f_transform_from_pixman_transform =
  RIP.unsafePerformIO hs_bindgen_69c42072cc3c3391

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_invert@
foreign import ccall unsafe "hs_bindgen_d290516f851eaa60" hs_bindgen_d290516f851eaa60_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_invert@
hs_bindgen_d290516f851eaa60 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t))
hs_bindgen_d290516f851eaa60 =
  RIP.fromFFIType hs_bindgen_d290516f851eaa60_base

{-# NOINLINE pixman_f_transform_invert #-}
{-| __C declaration:__ @pixman_f_transform_invert@

    __defined at:__ @pixman.h 283:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_invert :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO Pixman_bool_t)
pixman_f_transform_invert =
  RIP.unsafePerformIO hs_bindgen_d290516f851eaa60

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_point@
foreign import ccall unsafe "hs_bindgen_94e5e6f014b9b4b0" hs_bindgen_94e5e6f014b9b4b0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_point@
hs_bindgen_94e5e6f014b9b4b0 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO Pixman_bool_t))
hs_bindgen_94e5e6f014b9b4b0 =
  RIP.fromFFIType hs_bindgen_94e5e6f014b9b4b0_base

{-# NOINLINE pixman_f_transform_point #-}
{-| __C declaration:__ @pixman_f_transform_point@

    __defined at:__ @pixman.h 287:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO Pixman_bool_t)
pixman_f_transform_point =
  RIP.unsafePerformIO hs_bindgen_94e5e6f014b9b4b0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_point_3d@
foreign import ccall unsafe "hs_bindgen_187304ad12ab3aa6" hs_bindgen_187304ad12ab3aa6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_point_3d@
hs_bindgen_187304ad12ab3aa6 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO ()))
hs_bindgen_187304ad12ab3aa6 =
  RIP.fromFFIType hs_bindgen_187304ad12ab3aa6_base

{-# NOINLINE pixman_f_transform_point_3d #-}
{-| __C declaration:__ @pixman_f_transform_point_3d@

    __defined at:__ @pixman.h 291:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_point_3d :: RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_f_vector) -> IO ())
pixman_f_transform_point_3d =
  RIP.unsafePerformIO hs_bindgen_187304ad12ab3aa6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_multiply@
foreign import ccall unsafe "hs_bindgen_73b62b30b5f5f324" hs_bindgen_73b62b30b5f5f324_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_multiply@
hs_bindgen_73b62b30b5f5f324 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO ()))
hs_bindgen_73b62b30b5f5f324 =
  RIP.fromFFIType hs_bindgen_73b62b30b5f5f324_base

{-# NOINLINE pixman_f_transform_multiply #-}
{-| __C declaration:__ @pixman_f_transform_multiply@

    __defined at:__ @pixman.h 295:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_multiply :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> (PtrConst.PtrConst Pixman_f_transform) -> IO ())
pixman_f_transform_multiply =
  RIP.unsafePerformIO hs_bindgen_73b62b30b5f5f324

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_scale@
foreign import ccall unsafe "hs_bindgen_4d338b6d32f64dad" hs_bindgen_4d338b6d32f64dad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_scale@
hs_bindgen_4d338b6d32f64dad :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_4d338b6d32f64dad =
  RIP.fromFFIType hs_bindgen_4d338b6d32f64dad_base

{-# NOINLINE pixman_f_transform_init_scale #-}
{-| __C declaration:__ @pixman_f_transform_init_scale@

    __defined at:__ @pixman.h 300:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_scale :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_scale =
  RIP.unsafePerformIO hs_bindgen_4d338b6d32f64dad

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_scale@
foreign import ccall unsafe "hs_bindgen_6684c1e84e16b524" hs_bindgen_6684c1e84e16b524_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_scale@
hs_bindgen_6684c1e84e16b524 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_6684c1e84e16b524 =
  RIP.fromFFIType hs_bindgen_6684c1e84e16b524_base

{-# NOINLINE pixman_f_transform_scale #-}
{-| __C declaration:__ @pixman_f_transform_scale@

    __defined at:__ @pixman.h 305:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_scale :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_scale =
  RIP.unsafePerformIO hs_bindgen_6684c1e84e16b524

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_rotate@
foreign import ccall unsafe "hs_bindgen_772ffea0cd90b1ca" hs_bindgen_772ffea0cd90b1ca_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_rotate@
hs_bindgen_772ffea0cd90b1ca :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_772ffea0cd90b1ca =
  RIP.fromFFIType hs_bindgen_772ffea0cd90b1ca_base

{-# NOINLINE pixman_f_transform_init_rotate #-}
{-| __C declaration:__ @pixman_f_transform_init_rotate@

    __defined at:__ @pixman.h 311:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_rotate =
  RIP.unsafePerformIO hs_bindgen_772ffea0cd90b1ca

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_rotate@
foreign import ccall unsafe "hs_bindgen_c3f6ae2195fdeec3" hs_bindgen_c3f6ae2195fdeec3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_rotate@
hs_bindgen_c3f6ae2195fdeec3 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_c3f6ae2195fdeec3 =
  RIP.fromFFIType hs_bindgen_c3f6ae2195fdeec3_base

{-# NOINLINE pixman_f_transform_rotate #-}
{-| __C declaration:__ @pixman_f_transform_rotate@

    __defined at:__ @pixman.h 316:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_rotate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_rotate =
  RIP.unsafePerformIO hs_bindgen_c3f6ae2195fdeec3

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_translate@
foreign import ccall unsafe "hs_bindgen_d573485166b76dae" hs_bindgen_d573485166b76dae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_translate@
hs_bindgen_d573485166b76dae :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_d573485166b76dae =
  RIP.fromFFIType hs_bindgen_d573485166b76dae_base

{-# NOINLINE pixman_f_transform_init_translate #-}
{-| __C declaration:__ @pixman_f_transform_init_translate@

    __defined at:__ @pixman.h 322:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_translate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_f_transform_init_translate =
  RIP.unsafePerformIO hs_bindgen_d573485166b76dae

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_translate@
foreign import ccall unsafe "hs_bindgen_7bb936a353591900" hs_bindgen_7bb936a353591900_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_translate@
hs_bindgen_7bb936a353591900 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_7bb936a353591900 =
  RIP.fromFFIType hs_bindgen_7bb936a353591900_base

{-# NOINLINE pixman_f_transform_translate #-}
{-| __C declaration:__ @pixman_f_transform_translate@

    __defined at:__ @pixman.h 327:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_translate :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> (RIP.Ptr Pixman_f_transform) -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_f_transform_translate =
  RIP.unsafePerformIO hs_bindgen_7bb936a353591900

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_bounds@
foreign import ccall unsafe "hs_bindgen_ed13d85c08b7a0ab" hs_bindgen_ed13d85c08b7a0ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_bounds@
hs_bindgen_ed13d85c08b7a0ab :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t))
hs_bindgen_ed13d85c08b7a0ab =
  RIP.fromFFIType hs_bindgen_ed13d85c08b7a0ab_base

{-# NOINLINE pixman_f_transform_bounds #-}
{-| __C declaration:__ @pixman_f_transform_bounds@

    __defined at:__ @pixman.h 333:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_bounds :: RIP.FunPtr ((PtrConst.PtrConst Pixman_f_transform) -> (RIP.Ptr Pixman_box16) -> IO Pixman_bool_t)
pixman_f_transform_bounds =
  RIP.unsafePerformIO hs_bindgen_ed13d85c08b7a0ab

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_identity@
foreign import ccall unsafe "hs_bindgen_4f7af94b6ce49dde" hs_bindgen_4f7af94b6ce49dde_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_f_transform_init_identity@
hs_bindgen_4f7af94b6ce49dde :: IO (RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> IO ()))
hs_bindgen_4f7af94b6ce49dde =
  RIP.fromFFIType hs_bindgen_4f7af94b6ce49dde_base

{-# NOINLINE pixman_f_transform_init_identity #-}
{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity :: RIP.FunPtr ((RIP.Ptr Pixman_f_transform) -> IO ())
pixman_f_transform_init_identity =
  RIP.unsafePerformIO hs_bindgen_4f7af94b6ce49dde

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_set_static_pointers@
foreign import ccall unsafe "hs_bindgen_f3f3d2fa3a55c266" hs_bindgen_f3f3d2fa3a55c266_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_set_static_pointers@
hs_bindgen_f3f3d2fa3a55c266 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_box16_t) -> (RIP.Ptr Pixman_region16_data_t) -> (RIP.Ptr Pixman_region16_data_t) -> IO ()))
hs_bindgen_f3f3d2fa3a55c266 =
  RIP.fromFFIType hs_bindgen_f3f3d2fa3a55c266_base

{-# NOINLINE pixman_region_set_static_pointers #-}
{-| __C declaration:__ @pixman_region_set_static_pointers@

    __defined at:__ @pixman.h 496:6@

    __exported by:__ @pixman.h@
-}
pixman_region_set_static_pointers :: RIP.FunPtr ((RIP.Ptr Pixman_box16_t) -> (RIP.Ptr Pixman_region16_data_t) -> (RIP.Ptr Pixman_region16_data_t) -> IO ())
pixman_region_set_static_pointers =
  RIP.unsafePerformIO hs_bindgen_f3f3d2fa3a55c266

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init@
foreign import ccall unsafe "hs_bindgen_860035d33192aaa3" hs_bindgen_860035d33192aaa3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init@
hs_bindgen_860035d33192aaa3 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ()))
hs_bindgen_860035d33192aaa3 =
  RIP.fromFFIType hs_bindgen_860035d33192aaa3_base

{-# NOINLINE pixman_region_init #-}
{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ())
pixman_region_init =
  RIP.unsafePerformIO hs_bindgen_860035d33192aaa3

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_rect@
foreign import ccall unsafe "hs_bindgen_33dd37963dffb5b4" hs_bindgen_33dd37963dffb5b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_rect@
hs_bindgen_33dd37963dffb5b4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_33dd37963dffb5b4 =
  RIP.fromFFIType hs_bindgen_33dd37963dffb5b4_base

{-# NOINLINE pixman_region_init_rect #-}
{-| __C declaration:__ @pixman_region_init_rect@

    __defined at:__ @pixman.h 505:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region_init_rect =
  RIP.unsafePerformIO hs_bindgen_33dd37963dffb5b4

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_rects@
foreign import ccall unsafe "hs_bindgen_24884cbdab063bb8" hs_bindgen_24884cbdab063bb8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_rects@
hs_bindgen_24884cbdab063bb8 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_24884cbdab063bb8 =
  RIP.fromFFIType hs_bindgen_24884cbdab063bb8_base

{-# NOINLINE pixman_region_init_rects #-}
{-| __C declaration:__ @pixman_region_init_rects@

    __defined at:__ @pixman.h 512:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_rects :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_region_init_rects =
  RIP.unsafePerformIO hs_bindgen_24884cbdab063bb8

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_with_extents@
foreign import ccall unsafe "hs_bindgen_491c0c560fd40e23" hs_bindgen_491c0c560fd40e23_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_with_extents@
hs_bindgen_491c0c560fd40e23 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ()))
hs_bindgen_491c0c560fd40e23 =
  RIP.fromFFIType hs_bindgen_491c0c560fd40e23_base

{-# NOINLINE pixman_region_init_with_extents #-}
{-| __C declaration:__ @pixman_region_init_with_extents@

    __defined at:__ @pixman.h 517:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_with_extents :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ())
pixman_region_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_491c0c560fd40e23

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_from_image@
foreign import ccall unsafe "hs_bindgen_c9140a543516cd45" hs_bindgen_c9140a543516cd45_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_init_from_image@
hs_bindgen_c9140a543516cd45 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> IO ()))
hs_bindgen_c9140a543516cd45 =
  RIP.fromFFIType hs_bindgen_c9140a543516cd45_base

{-# NOINLINE pixman_region_init_from_image #-}
{-| __C declaration:__ @pixman_region_init_from_image@

    __defined at:__ @pixman.h 521:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init_from_image :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> IO ())
pixman_region_init_from_image =
  RIP.unsafePerformIO hs_bindgen_c9140a543516cd45

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_fini@
foreign import ccall unsafe "hs_bindgen_94321250458de1bd" hs_bindgen_94321250458de1bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_fini@
hs_bindgen_94321250458de1bd :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ()))
hs_bindgen_94321250458de1bd =
  RIP.fromFFIType hs_bindgen_94321250458de1bd_base

{-# NOINLINE pixman_region_fini #-}
{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ())
pixman_region_fini =
  RIP.unsafePerformIO hs_bindgen_94321250458de1bd

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_translate@
foreign import ccall unsafe "hs_bindgen_4955c784edd54846" hs_bindgen_4955c784edd54846_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_translate@
hs_bindgen_4955c784edd54846 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_4955c784edd54846 =
  RIP.fromFFIType hs_bindgen_4955c784edd54846_base

{-# NOINLINE pixman_region_translate #-}
{-| __C declaration:__ @pixman_region_translate@

    __defined at:__ @pixman.h 530:25@

    __exported by:__ @pixman.h@
-}
pixman_region_translate :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region_translate =
  RIP.unsafePerformIO hs_bindgen_4955c784edd54846

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_copy@
foreign import ccall unsafe "hs_bindgen_569f53cf702b2b0c" hs_bindgen_569f53cf702b2b0c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_copy@
hs_bindgen_569f53cf702b2b0c :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_569f53cf702b2b0c =
  RIP.fromFFIType hs_bindgen_569f53cf702b2b0c_base

{-# NOINLINE pixman_region_copy #-}
{-| __C declaration:__ @pixman_region_copy@

    __defined at:__ @pixman.h 535:25@

    __exported by:__ @pixman.h@
-}
pixman_region_copy :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_copy =
  RIP.unsafePerformIO hs_bindgen_569f53cf702b2b0c

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_intersect@
foreign import ccall unsafe "hs_bindgen_df97a865b7b62ffb" hs_bindgen_df97a865b7b62ffb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_intersect@
hs_bindgen_df97a865b7b62ffb :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_df97a865b7b62ffb =
  RIP.fromFFIType hs_bindgen_df97a865b7b62ffb_base

{-# NOINLINE pixman_region_intersect #-}
{-| __C declaration:__ @pixman_region_intersect@

    __defined at:__ @pixman.h 539:25@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_intersect =
  RIP.unsafePerformIO hs_bindgen_df97a865b7b62ffb

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_union@
foreign import ccall unsafe "hs_bindgen_02cad794f36eec6c" hs_bindgen_02cad794f36eec6c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_union@
hs_bindgen_02cad794f36eec6c :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_02cad794f36eec6c =
  RIP.fromFFIType hs_bindgen_02cad794f36eec6c_base

{-# NOINLINE pixman_region_union #-}
{-| __C declaration:__ @pixman_region_union@

    __defined at:__ @pixman.h 544:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_union =
  RIP.unsafePerformIO hs_bindgen_02cad794f36eec6c

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_union_rect@
foreign import ccall unsafe "hs_bindgen_466a8e87015db45e" hs_bindgen_466a8e87015db45e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_union_rect@
hs_bindgen_466a8e87015db45e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_466a8e87015db45e =
  RIP.fromFFIType hs_bindgen_466a8e87015db45e_base

{-# NOINLINE pixman_region_union_rect #-}
{-| __C declaration:__ @pixman_region_union_rect@

    __defined at:__ @pixman.h 549:25@

    __exported by:__ @pixman.h@
-}
pixman_region_union_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region_union_rect =
  RIP.unsafePerformIO hs_bindgen_466a8e87015db45e

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_intersect_rect@
foreign import ccall unsafe "hs_bindgen_5e9b9021a7c9c1f6" hs_bindgen_5e9b9021a7c9c1f6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_intersect_rect@
hs_bindgen_5e9b9021a7c9c1f6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_5e9b9021a7c9c1f6 =
  RIP.fromFFIType hs_bindgen_5e9b9021a7c9c1f6_base

{-# NOINLINE pixman_region_intersect_rect #-}
{-| __C declaration:__ @pixman_region_intersect_rect@

    __defined at:__ @pixman.h 557:16@

    __exported by:__ @pixman.h@
-}
pixman_region_intersect_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_5e9b9021a7c9c1f6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_subtract@
foreign import ccall unsafe "hs_bindgen_574bccce87994ce0" hs_bindgen_574bccce87994ce0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_subtract@
hs_bindgen_574bccce87994ce0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_574bccce87994ce0 =
  RIP.fromFFIType hs_bindgen_574bccce87994ce0_base

{-# NOINLINE pixman_region_subtract #-}
{-| __C declaration:__ @pixman_region_subtract@

    __defined at:__ @pixman.h 565:25@

    __exported by:__ @pixman.h@
-}
pixman_region_subtract :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_subtract =
  RIP.unsafePerformIO hs_bindgen_574bccce87994ce0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_inverse@
foreign import ccall unsafe "hs_bindgen_23cd8fc2e46b2b39" hs_bindgen_23cd8fc2e46b2b39_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_inverse@
hs_bindgen_23cd8fc2e46b2b39 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_bool_t))
hs_bindgen_23cd8fc2e46b2b39 =
  RIP.fromFFIType hs_bindgen_23cd8fc2e46b2b39_base

{-# NOINLINE pixman_region_inverse #-}
{-| __C declaration:__ @pixman_region_inverse@

    __defined at:__ @pixman.h 570:25@

    __exported by:__ @pixman.h@
-}
pixman_region_inverse :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_bool_t)
pixman_region_inverse =
  RIP.unsafePerformIO hs_bindgen_23cd8fc2e46b2b39

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_contains_point@
foreign import ccall unsafe "hs_bindgen_3227d72279ecf56d" hs_bindgen_3227d72279ecf56d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_contains_point@
hs_bindgen_3227d72279ecf56d :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box16_t) -> IO Pixman_bool_t))
hs_bindgen_3227d72279ecf56d =
  RIP.fromFFIType hs_bindgen_3227d72279ecf56d_base

{-# NOINLINE pixman_region_contains_point #-}
{-| __C declaration:__ @pixman_region_contains_point@

    __defined at:__ @pixman.h 575:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box16_t) -> IO Pixman_bool_t)
pixman_region_contains_point =
  RIP.unsafePerformIO hs_bindgen_3227d72279ecf56d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_1ddafb1d9bcf1c86" hs_bindgen_1ddafb1d9bcf1c86_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_contains_rectangle@
hs_bindgen_1ddafb1d9bcf1c86 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_region_overlap_t))
hs_bindgen_1ddafb1d9bcf1c86 =
  RIP.fromFFIType hs_bindgen_1ddafb1d9bcf1c86_base

{-# NOINLINE pixman_region_contains_rectangle #-}
{-| __C declaration:__ @pixman_region_contains_rectangle@

    __defined at:__ @pixman.h 581:25@

    __exported by:__ @pixman.h@
-}
pixman_region_contains_rectangle :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO Pixman_region_overlap_t)
pixman_region_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_1ddafb1d9bcf1c86

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_empty@
foreign import ccall unsafe "hs_bindgen_e5099c17fcca0894" hs_bindgen_e5099c17fcca0894_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_empty@
hs_bindgen_e5099c17fcca0894 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_e5099c17fcca0894 =
  RIP.fromFFIType hs_bindgen_e5099c17fcca0894_base

{-# NOINLINE pixman_region_empty #-}
{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_empty =
  RIP.unsafePerformIO hs_bindgen_e5099c17fcca0894

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_not_empty@
foreign import ccall unsafe "hs_bindgen_4fcdc5d9637c3028" hs_bindgen_4fcdc5d9637c3028_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_not_empty@
hs_bindgen_4fcdc5d9637c3028 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_4fcdc5d9637c3028 =
  RIP.fromFFIType hs_bindgen_4fcdc5d9637c3028_base

{-# NOINLINE pixman_region_not_empty #-}
{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_not_empty =
  RIP.unsafePerformIO hs_bindgen_4fcdc5d9637c3028

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_extents@
foreign import ccall unsafe "hs_bindgen_1f106692f4fbb531" hs_bindgen_1f106692f4fbb531_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_extents@
hs_bindgen_1f106692f4fbb531 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO (RIP.Ptr Pixman_box16_t)))
hs_bindgen_1f106692f4fbb531 =
  RIP.fromFFIType hs_bindgen_1f106692f4fbb531_base

{-# NOINLINE pixman_region_extents #-}
{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO (RIP.Ptr Pixman_box16_t))
pixman_region_extents =
  RIP.unsafePerformIO hs_bindgen_1f106692f4fbb531

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_n_rects@
foreign import ccall unsafe "hs_bindgen_bc0ebf1c23c3d82d" hs_bindgen_bc0ebf1c23c3d82d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_n_rects@
hs_bindgen_bc0ebf1c23c3d82d :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO RIP.CInt))
hs_bindgen_bc0ebf1c23c3d82d =
  RIP.fromFFIType hs_bindgen_bc0ebf1c23c3d82d_base

{-# NOINLINE pixman_region_n_rects #-}
{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> IO RIP.CInt)
pixman_region_n_rects =
  RIP.unsafePerformIO hs_bindgen_bc0ebf1c23c3d82d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_rectangles@
foreign import ccall unsafe "hs_bindgen_7aedc1ec976c92a9" hs_bindgen_7aedc1ec976c92a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_rectangles@
hs_bindgen_7aedc1ec976c92a9 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box16_t)))
hs_bindgen_7aedc1ec976c92a9 =
  RIP.fromFFIType hs_bindgen_7aedc1ec976c92a9_base

{-# NOINLINE pixman_region_rectangles #-}
{-| __C declaration:__ @pixman_region_rectangles@

    __defined at:__ @pixman.h 597:25@

    __exported by:__ @pixman.h@
-}
pixman_region_rectangles :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box16_t))
pixman_region_rectangles =
  RIP.unsafePerformIO hs_bindgen_7aedc1ec976c92a9

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_equal@
foreign import ccall unsafe "hs_bindgen_a08d98594f5a87fd" hs_bindgen_a08d98594f5a87fd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_equal@
hs_bindgen_a08d98594f5a87fd :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_a08d98594f5a87fd =
  RIP.fromFFIType hs_bindgen_a08d98594f5a87fd_base

{-# NOINLINE pixman_region_equal #-}
{-| __C declaration:__ @pixman_region_equal@

    __defined at:__ @pixman.h 601:25@

    __exported by:__ @pixman.h@
-}
pixman_region_equal :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region16_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_equal =
  RIP.unsafePerformIO hs_bindgen_a08d98594f5a87fd

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_selfcheck@
foreign import ccall unsafe "hs_bindgen_ba384a4abf2a3c8a" hs_bindgen_ba384a4abf2a3c8a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_selfcheck@
hs_bindgen_ba384a4abf2a3c8a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_ba384a4abf2a3c8a =
  RIP.fromFFIType hs_bindgen_ba384a4abf2a3c8a_base

{-# NOINLINE pixman_region_selfcheck #-}
{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO Pixman_bool_t)
pixman_region_selfcheck =
  RIP.unsafePerformIO hs_bindgen_ba384a4abf2a3c8a

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_reset@
foreign import ccall unsafe "hs_bindgen_e41dff393fbd0165" hs_bindgen_e41dff393fbd0165_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_reset@
hs_bindgen_e41dff393fbd0165 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ()))
hs_bindgen_e41dff393fbd0165 =
  RIP.fromFFIType hs_bindgen_e41dff393fbd0165_base

{-# NOINLINE pixman_region_reset #-}
{-| __C declaration:__ @pixman_region_reset@

    __defined at:__ @pixman.h 608:25@

    __exported by:__ @pixman.h@
-}
pixman_region_reset :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (PtrConst.PtrConst Pixman_box16_t) -> IO ())
pixman_region_reset =
  RIP.unsafePerformIO hs_bindgen_e41dff393fbd0165

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_clear@
foreign import ccall unsafe "hs_bindgen_597115c0e7253aab" hs_bindgen_597115c0e7253aab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region_clear@
hs_bindgen_597115c0e7253aab :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ()))
hs_bindgen_597115c0e7253aab =
  RIP.fromFFIType hs_bindgen_597115c0e7253aab_base

{-# NOINLINE pixman_region_clear #-}
{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> IO ())
pixman_region_clear =
  RIP.unsafePerformIO hs_bindgen_597115c0e7253aab

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init@
foreign import ccall unsafe "hs_bindgen_8752435596c4464e" hs_bindgen_8752435596c4464e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init@
hs_bindgen_8752435596c4464e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ()))
hs_bindgen_8752435596c4464e =
  RIP.fromFFIType hs_bindgen_8752435596c4464e_base

{-# NOINLINE pixman_region32_init #-}
{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ())
pixman_region32_init =
  RIP.unsafePerformIO hs_bindgen_8752435596c4464e

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_rect@
foreign import ccall unsafe "hs_bindgen_4275406f9e6c1b17" hs_bindgen_4275406f9e6c1b17_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_rect@
hs_bindgen_4275406f9e6c1b17 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_4275406f9e6c1b17 =
  RIP.fromFFIType hs_bindgen_4275406f9e6c1b17_base

{-# NOINLINE pixman_region32_init_rect #-}
{-| __C declaration:__ @pixman_region32_init_rect@

    __defined at:__ @pixman.h 649:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region32_init_rect =
  RIP.unsafePerformIO hs_bindgen_4275406f9e6c1b17

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_rects@
foreign import ccall unsafe "hs_bindgen_7be02507ce5cc2a0" hs_bindgen_7be02507ce5cc2a0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_rects@
hs_bindgen_7be02507ce5cc2a0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_7be02507ce5cc2a0 =
  RIP.fromFFIType hs_bindgen_7be02507ce5cc2a0_base

{-# NOINLINE pixman_region32_init_rects #-}
{-| __C declaration:__ @pixman_region32_init_rects@

    __defined at:__ @pixman.h 656:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_rects :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_region32_init_rects =
  RIP.unsafePerformIO hs_bindgen_7be02507ce5cc2a0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_with_extents@
foreign import ccall unsafe "hs_bindgen_4ec62080f9a9773e" hs_bindgen_4ec62080f9a9773e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_with_extents@
hs_bindgen_4ec62080f9a9773e :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ()))
hs_bindgen_4ec62080f9a9773e =
  RIP.fromFFIType hs_bindgen_4ec62080f9a9773e_base

{-# NOINLINE pixman_region32_init_with_extents #-}
{-| __C declaration:__ @pixman_region32_init_with_extents@

    __defined at:__ @pixman.h 661:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_with_extents :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ())
pixman_region32_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_4ec62080f9a9773e

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_from_image@
foreign import ccall unsafe "hs_bindgen_89f24e9b3c75da2f" hs_bindgen_89f24e9b3c75da2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_init_from_image@
hs_bindgen_89f24e9b3c75da2f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (RIP.Ptr Pixman_image_t) -> IO ()))
hs_bindgen_89f24e9b3c75da2f =
  RIP.fromFFIType hs_bindgen_89f24e9b3c75da2f_base

{-# NOINLINE pixman_region32_init_from_image #-}
{-| __C declaration:__ @pixman_region32_init_from_image@

    __defined at:__ @pixman.h 665:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init_from_image :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (RIP.Ptr Pixman_image_t) -> IO ())
pixman_region32_init_from_image =
  RIP.unsafePerformIO hs_bindgen_89f24e9b3c75da2f

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_fini@
foreign import ccall unsafe "hs_bindgen_af082a4a4e4c2549" hs_bindgen_af082a4a4e4c2549_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_fini@
hs_bindgen_af082a4a4e4c2549 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ()))
hs_bindgen_af082a4a4e4c2549 =
  RIP.fromFFIType hs_bindgen_af082a4a4e4c2549_base

{-# NOINLINE pixman_region32_fini #-}
{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ())
pixman_region32_fini =
  RIP.unsafePerformIO hs_bindgen_af082a4a4e4c2549

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_translate@
foreign import ccall unsafe "hs_bindgen_f8449f30122e06d1" hs_bindgen_f8449f30122e06d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_translate@
hs_bindgen_f8449f30122e06d1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_f8449f30122e06d1 =
  RIP.fromFFIType hs_bindgen_f8449f30122e06d1_base

{-# NOINLINE pixman_region32_translate #-}
{-| __C declaration:__ @pixman_region32_translate@

    __defined at:__ @pixman.h 674:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_translate :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region32_translate =
  RIP.unsafePerformIO hs_bindgen_f8449f30122e06d1

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_copy@
foreign import ccall unsafe "hs_bindgen_d625322def4a35c6" hs_bindgen_d625322def4a35c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_copy@
hs_bindgen_d625322def4a35c6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_d625322def4a35c6 =
  RIP.fromFFIType hs_bindgen_d625322def4a35c6_base

{-# NOINLINE pixman_region32_copy #-}
{-| __C declaration:__ @pixman_region32_copy@

    __defined at:__ @pixman.h 679:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_copy :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_copy =
  RIP.unsafePerformIO hs_bindgen_d625322def4a35c6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_intersect@
foreign import ccall unsafe "hs_bindgen_3620dcd801b001b7" hs_bindgen_3620dcd801b001b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_intersect@
hs_bindgen_3620dcd801b001b7 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_3620dcd801b001b7 =
  RIP.fromFFIType hs_bindgen_3620dcd801b001b7_base

{-# NOINLINE pixman_region32_intersect #-}
{-| __C declaration:__ @pixman_region32_intersect@

    __defined at:__ @pixman.h 683:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_intersect =
  RIP.unsafePerformIO hs_bindgen_3620dcd801b001b7

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_union@
foreign import ccall unsafe "hs_bindgen_ae07a290cbc9ca3b" hs_bindgen_ae07a290cbc9ca3b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_union@
hs_bindgen_ae07a290cbc9ca3b :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_ae07a290cbc9ca3b =
  RIP.fromFFIType hs_bindgen_ae07a290cbc9ca3b_base

{-# NOINLINE pixman_region32_union #-}
{-| __C declaration:__ @pixman_region32_union@

    __defined at:__ @pixman.h 688:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_union =
  RIP.unsafePerformIO hs_bindgen_ae07a290cbc9ca3b

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_intersect_rect@
foreign import ccall unsafe "hs_bindgen_8ba533fe485f23e1" hs_bindgen_8ba533fe485f23e1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_intersect_rect@
hs_bindgen_8ba533fe485f23e1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_8ba533fe485f23e1 =
  RIP.fromFFIType hs_bindgen_8ba533fe485f23e1_base

{-# NOINLINE pixman_region32_intersect_rect #-}
{-| __C declaration:__ @pixman_region32_intersect_rect@

    __defined at:__ @pixman.h 693:16@

    __exported by:__ @pixman.h@
-}
pixman_region32_intersect_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region32_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_8ba533fe485f23e1

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_union_rect@
foreign import ccall unsafe "hs_bindgen_e921fb1e7d08ef12" hs_bindgen_e921fb1e7d08ef12_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_union_rect@
hs_bindgen_e921fb1e7d08ef12 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_e921fb1e7d08ef12 =
  RIP.fromFFIType hs_bindgen_e921fb1e7d08ef12_base

{-# NOINLINE pixman_region32_union_rect #-}
{-| __C declaration:__ @pixman_region32_union_rect@

    __defined at:__ @pixman.h 701:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_union_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region32_union_rect =
  RIP.unsafePerformIO hs_bindgen_e921fb1e7d08ef12

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_subtract@
foreign import ccall unsafe "hs_bindgen_9237aef6f36ea1a5" hs_bindgen_9237aef6f36ea1a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_subtract@
hs_bindgen_9237aef6f36ea1a5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_9237aef6f36ea1a5 =
  RIP.fromFFIType hs_bindgen_9237aef6f36ea1a5_base

{-# NOINLINE pixman_region32_subtract #-}
{-| __C declaration:__ @pixman_region32_subtract@

    __defined at:__ @pixman.h 709:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_subtract :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_subtract =
  RIP.unsafePerformIO hs_bindgen_9237aef6f36ea1a5

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_inverse@
foreign import ccall unsafe "hs_bindgen_930b26804e138cf2" hs_bindgen_930b26804e138cf2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_inverse@
hs_bindgen_930b26804e138cf2 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t))
hs_bindgen_930b26804e138cf2 =
  RIP.fromFFIType hs_bindgen_930b26804e138cf2_base

{-# NOINLINE pixman_region32_inverse #-}
{-| __C declaration:__ @pixman_region32_inverse@

    __defined at:__ @pixman.h 714:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_inverse :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t)
pixman_region32_inverse =
  RIP.unsafePerformIO hs_bindgen_930b26804e138cf2

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_contains_point@
foreign import ccall unsafe "hs_bindgen_a3b0a867fcbd4630" hs_bindgen_a3b0a867fcbd4630_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_contains_point@
hs_bindgen_a3b0a867fcbd4630 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box32_t) -> IO Pixman_bool_t))
hs_bindgen_a3b0a867fcbd4630 =
  RIP.fromFFIType hs_bindgen_a3b0a867fcbd4630_base

{-# NOINLINE pixman_region32_contains_point #-}
{-| __C declaration:__ @pixman_region32_contains_point@

    __defined at:__ @pixman.h 719:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box32_t) -> IO Pixman_bool_t)
pixman_region32_contains_point =
  RIP.unsafePerformIO hs_bindgen_a3b0a867fcbd4630

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_17b94a2e77c21f8d" hs_bindgen_17b94a2e77c21f8d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_contains_rectangle@
hs_bindgen_17b94a2e77c21f8d :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_region_overlap_t))
hs_bindgen_17b94a2e77c21f8d =
  RIP.fromFFIType hs_bindgen_17b94a2e77c21f8d_base

{-# NOINLINE pixman_region32_contains_rectangle #-}
{-| __C declaration:__ @pixman_region32_contains_rectangle@

    __defined at:__ @pixman.h 725:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_contains_rectangle :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_region_overlap_t)
pixman_region32_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_17b94a2e77c21f8d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_empty@
foreign import ccall unsafe "hs_bindgen_5278688a5fc2c25c" hs_bindgen_5278688a5fc2c25c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_empty@
hs_bindgen_5278688a5fc2c25c :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_5278688a5fc2c25c =
  RIP.fromFFIType hs_bindgen_5278688a5fc2c25c_base

{-# NOINLINE pixman_region32_empty #-}
{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_empty =
  RIP.unsafePerformIO hs_bindgen_5278688a5fc2c25c

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_not_empty@
foreign import ccall unsafe "hs_bindgen_48c98e7e4d0d69d8" hs_bindgen_48c98e7e4d0d69d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_not_empty@
hs_bindgen_48c98e7e4d0d69d8 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_48c98e7e4d0d69d8 =
  RIP.fromFFIType hs_bindgen_48c98e7e4d0d69d8_base

{-# NOINLINE pixman_region32_not_empty #-}
{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_not_empty =
  RIP.unsafePerformIO hs_bindgen_48c98e7e4d0d69d8

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_extents@
foreign import ccall unsafe "hs_bindgen_f9a131a2ffca5777" hs_bindgen_f9a131a2ffca5777_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_extents@
hs_bindgen_f9a131a2ffca5777 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO (RIP.Ptr Pixman_box32_t)))
hs_bindgen_f9a131a2ffca5777 =
  RIP.fromFFIType hs_bindgen_f9a131a2ffca5777_base

{-# NOINLINE pixman_region32_extents #-}
{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO (RIP.Ptr Pixman_box32_t))
pixman_region32_extents =
  RIP.unsafePerformIO hs_bindgen_f9a131a2ffca5777

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_n_rects@
foreign import ccall unsafe "hs_bindgen_044500b82a090e08" hs_bindgen_044500b82a090e08_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_n_rects@
hs_bindgen_044500b82a090e08 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO RIP.CInt))
hs_bindgen_044500b82a090e08 =
  RIP.fromFFIType hs_bindgen_044500b82a090e08_base

{-# NOINLINE pixman_region32_n_rects #-}
{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> IO RIP.CInt)
pixman_region32_n_rects =
  RIP.unsafePerformIO hs_bindgen_044500b82a090e08

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_rectangles@
foreign import ccall unsafe "hs_bindgen_7c981e9c0e3abcf6" hs_bindgen_7c981e9c0e3abcf6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_rectangles@
hs_bindgen_7c981e9c0e3abcf6 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box32_t)))
hs_bindgen_7c981e9c0e3abcf6 =
  RIP.fromFFIType hs_bindgen_7c981e9c0e3abcf6_base

{-# NOINLINE pixman_region32_rectangles #-}
{-| __C declaration:__ @pixman_region32_rectangles@

    __defined at:__ @pixman.h 741:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_rectangles :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box32_t))
pixman_region32_rectangles =
  RIP.unsafePerformIO hs_bindgen_7c981e9c0e3abcf6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_equal@
foreign import ccall unsafe "hs_bindgen_ec7ae8d947457132" hs_bindgen_ec7ae8d947457132_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_equal@
hs_bindgen_ec7ae8d947457132 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_ec7ae8d947457132 =
  RIP.fromFFIType hs_bindgen_ec7ae8d947457132_base

{-# NOINLINE pixman_region32_equal #-}
{-| __C declaration:__ @pixman_region32_equal@

    __defined at:__ @pixman.h 745:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_equal :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region32_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_equal =
  RIP.unsafePerformIO hs_bindgen_ec7ae8d947457132

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_selfcheck@
foreign import ccall unsafe "hs_bindgen_543a9480b0e682e4" hs_bindgen_543a9480b0e682e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_selfcheck@
hs_bindgen_543a9480b0e682e4 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_543a9480b0e682e4 =
  RIP.fromFFIType hs_bindgen_543a9480b0e682e4_base

{-# NOINLINE pixman_region32_selfcheck #-}
{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO Pixman_bool_t)
pixman_region32_selfcheck =
  RIP.unsafePerformIO hs_bindgen_543a9480b0e682e4

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_reset@
foreign import ccall unsafe "hs_bindgen_feaccea8dd9fadb5" hs_bindgen_feaccea8dd9fadb5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_reset@
hs_bindgen_feaccea8dd9fadb5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ()))
hs_bindgen_feaccea8dd9fadb5 =
  RIP.fromFFIType hs_bindgen_feaccea8dd9fadb5_base

{-# NOINLINE pixman_region32_reset #-}
{-| __C declaration:__ @pixman_region32_reset@

    __defined at:__ @pixman.h 752:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_reset :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> (PtrConst.PtrConst Pixman_box32_t) -> IO ())
pixman_region32_reset =
  RIP.unsafePerformIO hs_bindgen_feaccea8dd9fadb5

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_clear@
foreign import ccall unsafe "hs_bindgen_13644311e35bf8e7" hs_bindgen_13644311e35bf8e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region32_clear@
hs_bindgen_13644311e35bf8e7 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ()))
hs_bindgen_13644311e35bf8e7 =
  RIP.fromFFIType hs_bindgen_13644311e35bf8e7_base

{-# NOINLINE pixman_region32_clear #-}
{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear :: RIP.FunPtr ((RIP.Ptr Pixman_region32_t) -> IO ())
pixman_region32_clear =
  RIP.unsafePerformIO hs_bindgen_13644311e35bf8e7

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init@
foreign import ccall unsafe "hs_bindgen_bf7a75abcc76be69" hs_bindgen_bf7a75abcc76be69_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init@
hs_bindgen_bf7a75abcc76be69 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ()))
hs_bindgen_bf7a75abcc76be69 =
  RIP.fromFFIType hs_bindgen_bf7a75abcc76be69_base

{-# NOINLINE pixman_region64f_init #-}
{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ())
pixman_region64f_init =
  RIP.unsafePerformIO hs_bindgen_bf7a75abcc76be69

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rect@
foreign import ccall unsafe "hs_bindgen_453eedbb2e5de8cc" hs_bindgen_453eedbb2e5de8cc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rect@
hs_bindgen_453eedbb2e5de8cc :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ()))
hs_bindgen_453eedbb2e5de8cc =
  RIP.fromFFIType hs_bindgen_453eedbb2e5de8cc_base

{-# NOINLINE pixman_region64f_init_rect #-}
{-| __C declaration:__ @pixman_region64f_init_rect@

    __defined at:__ @pixman.h 793:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO ())
pixman_region64f_init_rect =
  RIP.unsafePerformIO hs_bindgen_453eedbb2e5de8cc

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rectf@
foreign import ccall unsafe "hs_bindgen_eb6b3e329c2e8092" hs_bindgen_eb6b3e329c2e8092_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rectf@
hs_bindgen_eb6b3e329c2e8092 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_eb6b3e329c2e8092 =
  RIP.fromFFIType hs_bindgen_eb6b3e329c2e8092_base

{-# NOINLINE pixman_region64f_init_rectf #-}
{-| __C declaration:__ @pixman_region64f_init_rectf@

    __defined at:__ @pixman.h 800:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rectf :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_region64f_init_rectf =
  RIP.unsafePerformIO hs_bindgen_eb6b3e329c2e8092

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rects@
foreign import ccall unsafe "hs_bindgen_34025c81a31b059a" hs_bindgen_34025c81a31b059a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_rects@
hs_bindgen_34025c81a31b059a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_34025c81a31b059a =
  RIP.fromFFIType hs_bindgen_34025c81a31b059a_base

{-# NOINLINE pixman_region64f_init_rects #-}
{-| __C declaration:__ @pixman_region64f_init_rects@

    __defined at:__ @pixman.h 807:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_rects :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_region64f_init_rects =
  RIP.unsafePerformIO hs_bindgen_34025c81a31b059a

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_with_extents@
foreign import ccall unsafe "hs_bindgen_cc5ad936339778c1" hs_bindgen_cc5ad936339778c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_with_extents@
hs_bindgen_cc5ad936339778c1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ()))
hs_bindgen_cc5ad936339778c1 =
  RIP.fromFFIType hs_bindgen_cc5ad936339778c1_base

{-# NOINLINE pixman_region64f_init_with_extents #-}
{-| __C declaration:__ @pixman_region64f_init_with_extents@

    __defined at:__ @pixman.h 812:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_with_extents :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ())
pixman_region64f_init_with_extents =
  RIP.unsafePerformIO hs_bindgen_cc5ad936339778c1

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_from_image@
foreign import ccall unsafe "hs_bindgen_fddc6f157c8723e3" hs_bindgen_fddc6f157c8723e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_init_from_image@
hs_bindgen_fddc6f157c8723e3 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (RIP.Ptr Pixman_image_t) -> IO ()))
hs_bindgen_fddc6f157c8723e3 =
  RIP.fromFFIType hs_bindgen_fddc6f157c8723e3_base

{-# NOINLINE pixman_region64f_init_from_image #-}
{-| __C declaration:__ @pixman_region64f_init_from_image@

    __defined at:__ @pixman.h 816:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init_from_image :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (RIP.Ptr Pixman_image_t) -> IO ())
pixman_region64f_init_from_image =
  RIP.unsafePerformIO hs_bindgen_fddc6f157c8723e3

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_fini@
foreign import ccall unsafe "hs_bindgen_a515e398e5490c47" hs_bindgen_a515e398e5490c47_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_fini@
hs_bindgen_a515e398e5490c47 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ()))
hs_bindgen_a515e398e5490c47 =
  RIP.fromFFIType hs_bindgen_a515e398e5490c47_base

{-# NOINLINE pixman_region64f_fini #-}
{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ())
pixman_region64f_fini =
  RIP.unsafePerformIO hs_bindgen_a515e398e5490c47

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_translate@
foreign import ccall unsafe "hs_bindgen_f4a731bda6db0cd5" hs_bindgen_f4a731bda6db0cd5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_translate@
hs_bindgen_f4a731bda6db0cd5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_f4a731bda6db0cd5 =
  RIP.fromFFIType hs_bindgen_f4a731bda6db0cd5_base

{-# NOINLINE pixman_region64f_translate #-}
{-| __C declaration:__ @pixman_region64f_translate@

    __defined at:__ @pixman.h 825:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translate :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_region64f_translate =
  RIP.unsafePerformIO hs_bindgen_f4a731bda6db0cd5

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_translatef@
foreign import ccall unsafe "hs_bindgen_8ffe0b02e7ff19b6" hs_bindgen_8ffe0b02e7ff19b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_translatef@
hs_bindgen_8ffe0b02e7ff19b6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_8ffe0b02e7ff19b6 =
  RIP.fromFFIType hs_bindgen_8ffe0b02e7ff19b6_base

{-# NOINLINE pixman_region64f_translatef #-}
{-| __C declaration:__ @pixman_region64f_translatef@

    __defined at:__ @pixman.h 830:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_translatef :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_region64f_translatef =
  RIP.unsafePerformIO hs_bindgen_8ffe0b02e7ff19b6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_copy@
foreign import ccall unsafe "hs_bindgen_827632ef42ad84a6" hs_bindgen_827632ef42ad84a6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_copy@
hs_bindgen_827632ef42ad84a6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_827632ef42ad84a6 =
  RIP.fromFFIType hs_bindgen_827632ef42ad84a6_base

{-# NOINLINE pixman_region64f_copy #-}
{-| __C declaration:__ @pixman_region64f_copy@

    __defined at:__ @pixman.h 835:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_copy :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_copy =
  RIP.unsafePerformIO hs_bindgen_827632ef42ad84a6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect@
foreign import ccall unsafe "hs_bindgen_8f5a904719672697" hs_bindgen_8f5a904719672697_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect@
hs_bindgen_8f5a904719672697 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_8f5a904719672697 =
  RIP.fromFFIType hs_bindgen_8f5a904719672697_base

{-# NOINLINE pixman_region64f_intersect #-}
{-| __C declaration:__ @pixman_region64f_intersect@

    __defined at:__ @pixman.h 839:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_intersect =
  RIP.unsafePerformIO hs_bindgen_8f5a904719672697

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_union@
foreign import ccall unsafe "hs_bindgen_202107bc7bf7aaed" hs_bindgen_202107bc7bf7aaed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_union@
hs_bindgen_202107bc7bf7aaed :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_202107bc7bf7aaed =
  RIP.fromFFIType hs_bindgen_202107bc7bf7aaed_base

{-# NOINLINE pixman_region64f_union #-}
{-| __C declaration:__ @pixman_region64f_union@

    __defined at:__ @pixman.h 844:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_union =
  RIP.unsafePerformIO hs_bindgen_202107bc7bf7aaed

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect_rect@
foreign import ccall unsafe "hs_bindgen_65e242b1d0a7bf82" hs_bindgen_65e242b1d0a7bf82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect_rect@
hs_bindgen_65e242b1d0a7bf82 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_65e242b1d0a7bf82 =
  RIP.fromFFIType hs_bindgen_65e242b1d0a7bf82_base

{-# NOINLINE pixman_region64f_intersect_rect #-}
{-| __C declaration:__ @pixman_region64f_intersect_rect@

    __defined at:__ @pixman.h 849:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region64f_intersect_rect =
  RIP.unsafePerformIO hs_bindgen_65e242b1d0a7bf82

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect_rectf@
foreign import ccall unsafe "hs_bindgen_c2d8e29aac00e5df" hs_bindgen_c2d8e29aac00e5df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_intersect_rectf@
hs_bindgen_c2d8e29aac00e5df :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_c2d8e29aac00e5df =
  RIP.fromFFIType hs_bindgen_c2d8e29aac00e5df_base

{-# NOINLINE pixman_region64f_intersect_rectf #-}
{-| __C declaration:__ @pixman_region64f_intersect_rectf@

    __defined at:__ @pixman.h 857:16@

    __exported by:__ @pixman.h@
-}
pixman_region64f_intersect_rectf :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_region64f_intersect_rectf =
  RIP.unsafePerformIO hs_bindgen_c2d8e29aac00e5df

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_union_rect@
foreign import ccall unsafe "hs_bindgen_149baab4dde2c162" hs_bindgen_149baab4dde2c162_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_union_rect@
hs_bindgen_149baab4dde2c162 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t))
hs_bindgen_149baab4dde2c162 =
  RIP.fromFFIType hs_bindgen_149baab4dde2c162_base

{-# NOINLINE pixman_region64f_union_rect #-}
{-| __C declaration:__ @pixman_region64f_union_rect@

    __defined at:__ @pixman.h 865:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rect :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> RIP.CUInt -> RIP.CUInt -> IO Pixman_bool_t)
pixman_region64f_union_rect =
  RIP.unsafePerformIO hs_bindgen_149baab4dde2c162

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_union_rectf@
foreign import ccall unsafe "hs_bindgen_66edaaf41284f3f9" hs_bindgen_66edaaf41284f3f9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_union_rectf@
hs_bindgen_66edaaf41284f3f9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t))
hs_bindgen_66edaaf41284f3f9 =
  RIP.fromFFIType hs_bindgen_66edaaf41284f3f9_base

{-# NOINLINE pixman_region64f_union_rectf #-}
{-| __C declaration:__ @pixman_region64f_union_rectf@

    __defined at:__ @pixman.h 873:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_union_rectf :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO Pixman_bool_t)
pixman_region64f_union_rectf =
  RIP.unsafePerformIO hs_bindgen_66edaaf41284f3f9

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_subtract@
foreign import ccall unsafe "hs_bindgen_d3c2599ceffa8190" hs_bindgen_d3c2599ceffa8190_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_subtract@
hs_bindgen_d3c2599ceffa8190 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_d3c2599ceffa8190 =
  RIP.fromFFIType hs_bindgen_d3c2599ceffa8190_base

{-# NOINLINE pixman_region64f_subtract #-}
{-| __C declaration:__ @pixman_region64f_subtract@

    __defined at:__ @pixman.h 881:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_subtract :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_subtract =
  RIP.unsafePerformIO hs_bindgen_d3c2599ceffa8190

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_inverse@
foreign import ccall unsafe "hs_bindgen_ab7f09c6818d8bf8" hs_bindgen_ab7f09c6818d8bf8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_inverse@
hs_bindgen_ab7f09c6818d8bf8 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_bool_t))
hs_bindgen_ab7f09c6818d8bf8 =
  RIP.fromFFIType hs_bindgen_ab7f09c6818d8bf8_base

{-# NOINLINE pixman_region64f_inverse #-}
{-| __C declaration:__ @pixman_region64f_inverse@

    __defined at:__ @pixman.h 886:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_inverse :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_bool_t)
pixman_region64f_inverse =
  RIP.unsafePerformIO hs_bindgen_ab7f09c6818d8bf8

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_point@
foreign import ccall unsafe "hs_bindgen_9cf10110e2971492" hs_bindgen_9cf10110e2971492_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_point@
hs_bindgen_9cf10110e2971492 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t))
hs_bindgen_9cf10110e2971492 =
  RIP.fromFFIType hs_bindgen_9cf10110e2971492_base

{-# NOINLINE pixman_region64f_contains_point #-}
{-| __C declaration:__ @pixman_region64f_contains_point@

    __defined at:__ @pixman.h 891:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_point :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t)
pixman_region64f_contains_point =
  RIP.unsafePerformIO hs_bindgen_9cf10110e2971492

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_pointf@
foreign import ccall unsafe "hs_bindgen_cbc4081cdd46c83d" hs_bindgen_cbc4081cdd46c83d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_pointf@
hs_bindgen_cbc4081cdd46c83d :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t))
hs_bindgen_cbc4081cdd46c83d =
  RIP.fromFFIType hs_bindgen_cbc4081cdd46c83d_base

{-# NOINLINE pixman_region64f_contains_pointf #-}
{-| __C declaration:__ @pixman_region64f_contains_pointf@

    __defined at:__ @pixman.h 897:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_pointf :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> RIP.CDouble -> RIP.CDouble -> (RIP.Ptr Pixman_box64f_t) -> IO Pixman_bool_t)
pixman_region64f_contains_pointf =
  RIP.unsafePerformIO hs_bindgen_cbc4081cdd46c83d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_rectangle@
foreign import ccall unsafe "hs_bindgen_88c278d69b1502c9" hs_bindgen_88c278d69b1502c9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_contains_rectangle@
hs_bindgen_88c278d69b1502c9 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_region_overlap_t))
hs_bindgen_88c278d69b1502c9 =
  RIP.fromFFIType hs_bindgen_88c278d69b1502c9_base

{-# NOINLINE pixman_region64f_contains_rectangle #-}
{-| __C declaration:__ @pixman_region64f_contains_rectangle@

    __defined at:__ @pixman.h 903:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_contains_rectangle :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO Pixman_region_overlap_t)
pixman_region64f_contains_rectangle =
  RIP.unsafePerformIO hs_bindgen_88c278d69b1502c9

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_empty@
foreign import ccall unsafe "hs_bindgen_952c879de1a2eb31" hs_bindgen_952c879de1a2eb31_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_empty@
hs_bindgen_952c879de1a2eb31 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_952c879de1a2eb31 =
  RIP.fromFFIType hs_bindgen_952c879de1a2eb31_base

{-# NOINLINE pixman_region64f_empty #-}
{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_empty =
  RIP.unsafePerformIO hs_bindgen_952c879de1a2eb31

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_not_empty@
foreign import ccall unsafe "hs_bindgen_4c740bc3d53a5538" hs_bindgen_4c740bc3d53a5538_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_not_empty@
hs_bindgen_4c740bc3d53a5538 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_4c740bc3d53a5538 =
  RIP.fromFFIType hs_bindgen_4c740bc3d53a5538_base

{-# NOINLINE pixman_region64f_not_empty #-}
{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_not_empty =
  RIP.unsafePerformIO hs_bindgen_4c740bc3d53a5538

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_extents@
foreign import ccall unsafe "hs_bindgen_327d19bebc721e49" hs_bindgen_327d19bebc721e49_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_extents@
hs_bindgen_327d19bebc721e49 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO (RIP.Ptr Pixman_box64f_t)))
hs_bindgen_327d19bebc721e49 =
  RIP.fromFFIType hs_bindgen_327d19bebc721e49_base

{-# NOINLINE pixman_region64f_extents #-}
{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO (RIP.Ptr Pixman_box64f_t))
pixman_region64f_extents =
  RIP.unsafePerformIO hs_bindgen_327d19bebc721e49

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_n_rects@
foreign import ccall unsafe "hs_bindgen_065311ca0f31910b" hs_bindgen_065311ca0f31910b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_n_rects@
hs_bindgen_065311ca0f31910b :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO RIP.CInt))
hs_bindgen_065311ca0f31910b =
  RIP.fromFFIType hs_bindgen_065311ca0f31910b_base

{-# NOINLINE pixman_region64f_n_rects #-}
{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> IO RIP.CInt)
pixman_region64f_n_rects =
  RIP.unsafePerformIO hs_bindgen_065311ca0f31910b

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_rectangles@
foreign import ccall unsafe "hs_bindgen_d1c94d902255b924" hs_bindgen_d1c94d902255b924_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_rectangles@
hs_bindgen_d1c94d902255b924 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box64f_t)))
hs_bindgen_d1c94d902255b924 =
  RIP.fromFFIType hs_bindgen_d1c94d902255b924_base

{-# NOINLINE pixman_region64f_rectangles #-}
{-| __C declaration:__ @pixman_region64f_rectangles@

    __defined at:__ @pixman.h 919:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_rectangles :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (RIP.Ptr RIP.CInt) -> IO (RIP.Ptr Pixman_box64f_t))
pixman_region64f_rectangles =
  RIP.unsafePerformIO hs_bindgen_d1c94d902255b924

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_equal@
foreign import ccall unsafe "hs_bindgen_3f5e33d6997c80e5" hs_bindgen_3f5e33d6997c80e5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_equal@
hs_bindgen_3f5e33d6997c80e5 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_3f5e33d6997c80e5 =
  RIP.fromFFIType hs_bindgen_3f5e33d6997c80e5_base

{-# NOINLINE pixman_region64f_equal #-}
{-| __C declaration:__ @pixman_region64f_equal@

    __defined at:__ @pixman.h 923:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_equal :: RIP.FunPtr ((PtrConst.PtrConst Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_equal =
  RIP.unsafePerformIO hs_bindgen_3f5e33d6997c80e5

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_selfcheck@
foreign import ccall unsafe "hs_bindgen_64ab9728dab1b990" hs_bindgen_64ab9728dab1b990_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_selfcheck@
hs_bindgen_64ab9728dab1b990 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_64ab9728dab1b990 =
  RIP.fromFFIType hs_bindgen_64ab9728dab1b990_base

{-# NOINLINE pixman_region64f_selfcheck #-}
{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_region64f_selfcheck =
  RIP.unsafePerformIO hs_bindgen_64ab9728dab1b990

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_reset@
foreign import ccall unsafe "hs_bindgen_c7b37023e078a162" hs_bindgen_c7b37023e078a162_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_reset@
hs_bindgen_c7b37023e078a162 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ()))
hs_bindgen_c7b37023e078a162 =
  RIP.fromFFIType hs_bindgen_c7b37023e078a162_base

{-# NOINLINE pixman_region64f_reset #-}
{-| __C declaration:__ @pixman_region64f_reset@

    __defined at:__ @pixman.h 930:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_reset :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> (PtrConst.PtrConst Pixman_box64f_t) -> IO ())
pixman_region64f_reset =
  RIP.unsafePerformIO hs_bindgen_c7b37023e078a162

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_clear@
foreign import ccall unsafe "hs_bindgen_4a5f60d528d311f1" hs_bindgen_4a5f60d528d311f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_region64f_clear@
hs_bindgen_4a5f60d528d311f1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ()))
hs_bindgen_4a5f60d528d311f1 =
  RIP.fromFFIType hs_bindgen_4a5f60d528d311f1_base

{-# NOINLINE pixman_region64f_clear #-}
{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear :: RIP.FunPtr ((RIP.Ptr Pixman_region64f_t) -> IO ())
pixman_region64f_clear =
  RIP.unsafePerformIO hs_bindgen_4a5f60d528d311f1

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_blt@
foreign import ccall unsafe "hs_bindgen_ccb3142d8556f6d7" hs_bindgen_ccb3142d8556f6d7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_blt@
hs_bindgen_ccb3142d8556f6d7 :: IO (RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_ccb3142d8556f6d7 =
  RIP.fromFFIType hs_bindgen_ccb3142d8556f6d7_base

{-# NOINLINE pixman_blt #-}
{-| __C declaration:__ @pixman_blt@

    __defined at:__ @pixman.h 939:15@

    __exported by:__ @pixman.h@
-}
pixman_blt :: RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> IO Pixman_bool_t)
pixman_blt =
  RIP.unsafePerformIO hs_bindgen_ccb3142d8556f6d7

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_fill@
foreign import ccall unsafe "hs_bindgen_09f18194f32df497" hs_bindgen_09f18194f32df497_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_fill@
hs_bindgen_09f18194f32df497 :: IO (RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> HsBindgen.Runtime.LibC.Word32 -> IO Pixman_bool_t))
hs_bindgen_09f18194f32df497 =
  RIP.fromFFIType hs_bindgen_09f18194f32df497_base

{-# NOINLINE pixman_fill #-}
{-| __C declaration:__ @pixman_fill@

    __defined at:__ @pixman.h 953:15@

    __exported by:__ @pixman.h@
-}
pixman_fill :: RIP.FunPtr ((RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> HsBindgen.Runtime.LibC.Word32 -> IO Pixman_bool_t)
pixman_fill =
  RIP.unsafePerformIO hs_bindgen_09f18194f32df497

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_version@
foreign import ccall unsafe "hs_bindgen_a53f0e71444a88fc" hs_bindgen_a53f0e71444a88fc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_version@
hs_bindgen_a53f0e71444a88fc :: IO (RIP.FunPtr (IO RIP.CInt))
hs_bindgen_a53f0e71444a88fc =
  RIP.fromFFIType hs_bindgen_a53f0e71444a88fc_base

{-# NOINLINE pixman_version #-}
{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: RIP.FunPtr (IO RIP.CInt)
pixman_version =
  RIP.unsafePerformIO hs_bindgen_a53f0e71444a88fc

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_version_string@
foreign import ccall unsafe "hs_bindgen_10632228e2d95c46" hs_bindgen_10632228e2d95c46_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_version_string@
hs_bindgen_10632228e2d95c46 :: IO (RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar)))
hs_bindgen_10632228e2d95c46 =
  RIP.fromFFIType hs_bindgen_10632228e2d95c46_base

{-# NOINLINE pixman_version_string #-}
{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: RIP.FunPtr (IO (PtrConst.PtrConst RIP.CChar))
pixman_version_string =
  RIP.unsafePerformIO hs_bindgen_10632228e2d95c46

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_format_supported_destination@
foreign import ccall unsafe "hs_bindgen_25b6836e9df5be11" hs_bindgen_25b6836e9df5be11_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_format_supported_destination@
hs_bindgen_25b6836e9df5be11 :: IO (RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t))
hs_bindgen_25b6836e9df5be11 =
  RIP.fromFFIType hs_bindgen_25b6836e9df5be11_base

{-# NOINLINE pixman_format_supported_destination #-}
{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination :: RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t)
pixman_format_supported_destination =
  RIP.unsafePerformIO hs_bindgen_25b6836e9df5be11

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_format_supported_source@
foreign import ccall unsafe "hs_bindgen_b021e9a72a5339aa" hs_bindgen_b021e9a72a5339aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_format_supported_source@
hs_bindgen_b021e9a72a5339aa :: IO (RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t))
hs_bindgen_b021e9a72a5339aa =
  RIP.fromFFIType hs_bindgen_b021e9a72a5339aa_base

{-# NOINLINE pixman_format_supported_source #-}
{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source :: RIP.FunPtr (Pixman_format_code_t -> IO Pixman_bool_t)
pixman_format_supported_source =
  RIP.unsafePerformIO hs_bindgen_b021e9a72a5339aa

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_solid_fill@
foreign import ccall unsafe "hs_bindgen_a20c74f4715fe774" hs_bindgen_a20c74f4715fe774_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_solid_fill@
hs_bindgen_a20c74f4715fe774 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_color_t) -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_a20c74f4715fe774 =
  RIP.fromFFIType hs_bindgen_a20c74f4715fe774_base

{-# NOINLINE pixman_image_create_solid_fill #-}
{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill :: RIP.FunPtr ((PtrConst.PtrConst Pixman_color_t) -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_solid_fill =
  RIP.unsafePerformIO hs_bindgen_a20c74f4715fe774

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_linear_gradient@
foreign import ccall unsafe "hs_bindgen_ec1656042fbaf702" hs_bindgen_ec1656042fbaf702_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_linear_gradient@
hs_bindgen_ec1656042fbaf702 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_ec1656042fbaf702 =
  RIP.fromFFIType hs_bindgen_ec1656042fbaf702_base

{-# NOINLINE pixman_image_create_linear_gradient #-}
{-| __C declaration:__ @pixman_image_create_linear_gradient@

    __defined at:__ @pixman.h 1148:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_linear_gradient :: RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_linear_gradient =
  RIP.unsafePerformIO hs_bindgen_ec1656042fbaf702

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_radial_gradient@
foreign import ccall unsafe "hs_bindgen_ac5c9e47496e0073" hs_bindgen_ac5c9e47496e0073_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_radial_gradient@
hs_bindgen_ac5c9e47496e0073 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_ac5c9e47496e0073 =
  RIP.fromFFIType hs_bindgen_ac5c9e47496e0073_base

{-# NOINLINE pixman_image_create_radial_gradient #-}
{-| __C declaration:__ @pixman_image_create_radial_gradient@

    __defined at:__ @pixman.h 1154:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_radial_gradient :: RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> (PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_radial_gradient =
  RIP.unsafePerformIO hs_bindgen_ac5c9e47496e0073

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_conical_gradient@
foreign import ccall unsafe "hs_bindgen_9b9eac8cee580f46" hs_bindgen_9b9eac8cee580f46_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_conical_gradient@
hs_bindgen_9b9eac8cee580f46 :: IO (RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_9b9eac8cee580f46 =
  RIP.fromFFIType hs_bindgen_9b9eac8cee580f46_base

{-# NOINLINE pixman_image_create_conical_gradient #-}
{-| __C declaration:__ @pixman_image_create_conical_gradient@

    __defined at:__ @pixman.h 1162:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_conical_gradient :: RIP.FunPtr ((PtrConst.PtrConst Pixman_point_fixed_t) -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_gradient_stop_t) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_conical_gradient =
  RIP.unsafePerformIO hs_bindgen_9b9eac8cee580f46

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_bits@
foreign import ccall unsafe "hs_bindgen_ffce917fafa06a45" hs_bindgen_ffce917fafa06a45_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_bits@
hs_bindgen_ffce917fafa06a45 :: IO (RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_ffce917fafa06a45 =
  RIP.fromFFIType hs_bindgen_ffce917fafa06a45_base

{-# NOINLINE pixman_image_create_bits #-}
{-| __C declaration:__ @pixman_image_create_bits@

    __defined at:__ @pixman.h 1168:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits :: RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_bits =
  RIP.unsafePerformIO hs_bindgen_ffce917fafa06a45

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_bits_no_clear@
foreign import ccall unsafe "hs_bindgen_f94008234aee911b" hs_bindgen_f94008234aee911b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_create_bits_no_clear@
hs_bindgen_f94008234aee911b :: IO (RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_f94008234aee911b =
  RIP.fromFFIType hs_bindgen_f94008234aee911b_base

{-# NOINLINE pixman_image_create_bits_no_clear #-}
{-| __C declaration:__ @pixman_image_create_bits_no_clear@

    __defined at:__ @pixman.h 1175:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_bits_no_clear :: RIP.FunPtr (Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> (RIP.Ptr HsBindgen.Runtime.LibC.Word32) -> RIP.CInt -> IO (RIP.Ptr Pixman_image_t))
pixman_image_create_bits_no_clear =
  RIP.unsafePerformIO hs_bindgen_f94008234aee911b

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_ref@
foreign import ccall unsafe "hs_bindgen_84099b43e9269c67" hs_bindgen_84099b43e9269c67_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_ref@
hs_bindgen_84099b43e9269c67 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr Pixman_image_t)))
hs_bindgen_84099b43e9269c67 =
  RIP.fromFFIType hs_bindgen_84099b43e9269c67_base

{-# NOINLINE pixman_image_ref #-}
{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr Pixman_image_t))
pixman_image_ref =
  RIP.unsafePerformIO hs_bindgen_84099b43e9269c67

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_unref@
foreign import ccall unsafe "hs_bindgen_ab2dde97a1d9bdd3" hs_bindgen_ab2dde97a1d9bdd3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_unref@
hs_bindgen_ab2dde97a1d9bdd3 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t))
hs_bindgen_ab2dde97a1d9bdd3 =
  RIP.fromFFIType hs_bindgen_ab2dde97a1d9bdd3_base

{-# NOINLINE pixman_image_unref #-}
{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t)
pixman_image_unref =
  RIP.unsafePerformIO hs_bindgen_ab2dde97a1d9bdd3

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_destroy_function@
foreign import ccall unsafe "hs_bindgen_8c732f0430fdf0c0" hs_bindgen_8c732f0430fdf0c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_destroy_function@
hs_bindgen_8c732f0430fdf0c0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_image_destroy_func_t -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8c732f0430fdf0c0 =
  RIP.fromFFIType hs_bindgen_8c732f0430fdf0c0_base

{-# NOINLINE pixman_image_set_destroy_function #-}
{-| __C declaration:__ @pixman_image_set_destroy_function@

    __defined at:__ @pixman.h 1190:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_destroy_function :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_image_destroy_func_t -> (RIP.Ptr RIP.Void) -> IO ())
pixman_image_set_destroy_function =
  RIP.unsafePerformIO hs_bindgen_8c732f0430fdf0c0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_destroy_data@
foreign import ccall unsafe "hs_bindgen_afd38337024851e0" hs_bindgen_afd38337024851e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_destroy_data@
hs_bindgen_afd38337024851e0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_afd38337024851e0 =
  RIP.fromFFIType hs_bindgen_afd38337024851e0_base

{-# NOINLINE pixman_image_get_destroy_data #-}
{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr RIP.Void))
pixman_image_get_destroy_data =
  RIP.unsafePerformIO hs_bindgen_afd38337024851e0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region@
foreign import ccall unsafe "hs_bindgen_992fef94f204a972" hs_bindgen_992fef94f204a972_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region@
hs_bindgen_992fef94f204a972 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t))
hs_bindgen_992fef94f204a972 =
  RIP.fromFFIType hs_bindgen_992fef94f204a972_base

{-# NOINLINE pixman_image_set_clip_region #-}
{-| __C declaration:__ @pixman_image_set_clip_region@

    __defined at:__ @pixman.h 1199:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region16_t) -> IO Pixman_bool_t)
pixman_image_set_clip_region =
  RIP.unsafePerformIO hs_bindgen_992fef94f204a972

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region32@
foreign import ccall unsafe "hs_bindgen_3b5def32706f53b9" hs_bindgen_3b5def32706f53b9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region32@
hs_bindgen_3b5def32706f53b9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t))
hs_bindgen_3b5def32706f53b9 =
  RIP.fromFFIType hs_bindgen_3b5def32706f53b9_base

{-# NOINLINE pixman_image_set_clip_region32 #-}
{-| __C declaration:__ @pixman_image_set_clip_region32@

    __defined at:__ @pixman.h 1203:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region32 :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region32_t) -> IO Pixman_bool_t)
pixman_image_set_clip_region32 =
  RIP.unsafePerformIO hs_bindgen_3b5def32706f53b9

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region64f@
foreign import ccall unsafe "hs_bindgen_148a8fcb05669d69" hs_bindgen_148a8fcb05669d69_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_clip_region64f@
hs_bindgen_148a8fcb05669d69 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t))
hs_bindgen_148a8fcb05669d69 =
  RIP.fromFFIType hs_bindgen_148a8fcb05669d69_base

{-# NOINLINE pixman_image_set_clip_region64f #-}
{-| __C declaration:__ @pixman_image_set_clip_region64f@

    __defined at:__ @pixman.h 1207:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_clip_region64f :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_region64f_t) -> IO Pixman_bool_t)
pixman_image_set_clip_region64f =
  RIP.unsafePerformIO hs_bindgen_148a8fcb05669d69

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_has_client_clip@
foreign import ccall unsafe "hs_bindgen_e834f55a5f538f2f" hs_bindgen_e834f55a5f538f2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_has_client_clip@
hs_bindgen_e834f55a5f538f2f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ()))
hs_bindgen_e834f55a5f538f2f =
  RIP.fromFFIType hs_bindgen_e834f55a5f538f2f_base

{-# NOINLINE pixman_image_set_has_client_clip #-}
{-| __C declaration:__ @pixman_image_set_has_client_clip@

    __defined at:__ @pixman.h 1211:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_has_client_clip :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ())
pixman_image_set_has_client_clip =
  RIP.unsafePerformIO hs_bindgen_e834f55a5f538f2f

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_transform@
foreign import ccall unsafe "hs_bindgen_da6449c625665db6" hs_bindgen_da6449c625665db6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_transform@
hs_bindgen_da6449c625665db6 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_transform_t) -> IO Pixman_bool_t))
hs_bindgen_da6449c625665db6 =
  RIP.fromFFIType hs_bindgen_da6449c625665db6_base

{-# NOINLINE pixman_image_set_transform #-}
{-| __C declaration:__ @pixman_image_set_transform@

    __defined at:__ @pixman.h 1215:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_transform :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_transform_t) -> IO Pixman_bool_t)
pixman_image_set_transform =
  RIP.unsafePerformIO hs_bindgen_da6449c625665db6

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_repeat@
foreign import ccall unsafe "hs_bindgen_626135e7875fde14" hs_bindgen_626135e7875fde14_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_repeat@
hs_bindgen_626135e7875fde14 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_repeat_t -> IO ()))
hs_bindgen_626135e7875fde14 =
  RIP.fromFFIType hs_bindgen_626135e7875fde14_base

{-# NOINLINE pixman_image_set_repeat #-}
{-| __C declaration:__ @pixman_image_set_repeat@

    __defined at:__ @pixman.h 1219:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_repeat :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_repeat_t -> IO ())
pixman_image_set_repeat =
  RIP.unsafePerformIO hs_bindgen_626135e7875fde14

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_dither@
foreign import ccall unsafe "hs_bindgen_c7747ac296333339" hs_bindgen_c7747ac296333339_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_dither@
hs_bindgen_c7747ac296333339 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_dither_t -> IO ()))
hs_bindgen_c7747ac296333339 =
  RIP.fromFFIType hs_bindgen_c7747ac296333339_base

{-# NOINLINE pixman_image_set_dither #-}
{-| __C declaration:__ @pixman_image_set_dither@

    __defined at:__ @pixman.h 1223:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_dither_t -> IO ())
pixman_image_set_dither =
  RIP.unsafePerformIO hs_bindgen_c7747ac296333339

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_dither_offset@
foreign import ccall unsafe "hs_bindgen_a7faf2e1d9db30cb" hs_bindgen_a7faf2e1d9db30cb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_dither_offset@
hs_bindgen_a7faf2e1d9db30cb :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_a7faf2e1d9db30cb =
  RIP.fromFFIType hs_bindgen_a7faf2e1d9db30cb_base

{-# NOINLINE pixman_image_set_dither_offset #-}
{-| __C declaration:__ @pixman_image_set_dither_offset@

    __defined at:__ @pixman.h 1227:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_dither_offset :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_image_set_dither_offset =
  RIP.unsafePerformIO hs_bindgen_a7faf2e1d9db30cb

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_filter@
foreign import ccall unsafe "hs_bindgen_2d1c4949fdcb573a" hs_bindgen_2d1c4949fdcb573a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_filter@
hs_bindgen_2d1c4949fdcb573a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_filter_t -> (PtrConst.PtrConst Pixman_fixed_t) -> RIP.CInt -> IO Pixman_bool_t))
hs_bindgen_2d1c4949fdcb573a =
  RIP.fromFFIType hs_bindgen_2d1c4949fdcb573a_base

{-# NOINLINE pixman_image_set_filter #-}
{-| __C declaration:__ @pixman_image_set_filter@

    __defined at:__ @pixman.h 1232:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_filter :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_filter_t -> (PtrConst.PtrConst Pixman_fixed_t) -> RIP.CInt -> IO Pixman_bool_t)
pixman_image_set_filter =
  RIP.unsafePerformIO hs_bindgen_2d1c4949fdcb573a

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_source_clipping@
foreign import ccall unsafe "hs_bindgen_bf691ce07cc53fef" hs_bindgen_bf691ce07cc53fef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_source_clipping@
hs_bindgen_bf691ce07cc53fef :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ()))
hs_bindgen_bf691ce07cc53fef =
  RIP.fromFFIType hs_bindgen_bf691ce07cc53fef_base

{-# NOINLINE pixman_image_set_source_clipping #-}
{-| __C declaration:__ @pixman_image_set_source_clipping@

    __defined at:__ @pixman.h 1238:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_source_clipping :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ())
pixman_image_set_source_clipping =
  RIP.unsafePerformIO hs_bindgen_bf691ce07cc53fef

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_alpha_map@
foreign import ccall unsafe "hs_bindgen_75e7ad3d9d027d94" hs_bindgen_75e7ad3d9d027d94_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_alpha_map@
hs_bindgen_75e7ad3d9d027d94 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> IO ()))
hs_bindgen_75e7ad3d9d027d94 =
  RIP.fromFFIType hs_bindgen_75e7ad3d9d027d94_base

{-# NOINLINE pixman_image_set_alpha_map #-}
{-| __C declaration:__ @pixman_image_set_alpha_map@

    __defined at:__ @pixman.h 1242:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_alpha_map :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> IO ())
pixman_image_set_alpha_map =
  RIP.unsafePerformIO hs_bindgen_75e7ad3d9d027d94

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_component_alpha@
foreign import ccall unsafe "hs_bindgen_8638012d2ee9d0b3" hs_bindgen_8638012d2ee9d0b3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_component_alpha@
hs_bindgen_8638012d2ee9d0b3 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ()))
hs_bindgen_8638012d2ee9d0b3 =
  RIP.fromFFIType hs_bindgen_8638012d2ee9d0b3_base

{-# NOINLINE pixman_image_set_component_alpha #-}
{-| __C declaration:__ @pixman_image_set_component_alpha@

    __defined at:__ @pixman.h 1248:17@

    __exported by:__ @pixman.h@
-}
pixman_image_set_component_alpha :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_bool_t -> IO ())
pixman_image_set_component_alpha =
  RIP.unsafePerformIO hs_bindgen_8638012d2ee9d0b3

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_component_alpha@
foreign import ccall unsafe "hs_bindgen_360a69b0c23cd418" hs_bindgen_360a69b0c23cd418_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_component_alpha@
hs_bindgen_360a69b0c23cd418 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t))
hs_bindgen_360a69b0c23cd418 =
  RIP.fromFFIType hs_bindgen_360a69b0c23cd418_base

{-# NOINLINE pixman_image_get_component_alpha #-}
{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_bool_t)
pixman_image_get_component_alpha =
  RIP.unsafePerformIO hs_bindgen_360a69b0c23cd418

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_accessors@
foreign import ccall unsafe "hs_bindgen_ef118f1c1113b802" hs_bindgen_ef118f1c1113b802_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_accessors@
hs_bindgen_ef118f1c1113b802 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_read_memory_func_t -> Pixman_write_memory_func_t -> IO ()))
hs_bindgen_ef118f1c1113b802 =
  RIP.fromFFIType hs_bindgen_ef118f1c1113b802_base

{-# NOINLINE pixman_image_set_accessors #-}
{-| __C declaration:__ @pixman_image_set_accessors@

    __defined at:__ @pixman.h 1255:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_accessors :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> Pixman_read_memory_func_t -> Pixman_write_memory_func_t -> IO ())
pixman_image_set_accessors =
  RIP.unsafePerformIO hs_bindgen_ef118f1c1113b802

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_indexed@
foreign import ccall unsafe "hs_bindgen_28d4b28e389f3430" hs_bindgen_28d4b28e389f3430_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_set_indexed@
hs_bindgen_28d4b28e389f3430 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_indexed_t) -> IO ()))
hs_bindgen_28d4b28e389f3430 =
  RIP.fromFFIType hs_bindgen_28d4b28e389f3430_base

{-# NOINLINE pixman_image_set_indexed #-}
{-| __C declaration:__ @pixman_image_set_indexed@

    __defined at:__ @pixman.h 1260:7@

    __exported by:__ @pixman.h@
-}
pixman_image_set_indexed :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_indexed_t) -> IO ())
pixman_image_set_indexed =
  RIP.unsafePerformIO hs_bindgen_28d4b28e389f3430

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_data@
foreign import ccall unsafe "hs_bindgen_9276ea53e804a8df" hs_bindgen_9276ea53e804a8df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_data@
hs_bindgen_9276ea53e804a8df :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)))
hs_bindgen_9276ea53e804a8df =
  RIP.fromFFIType hs_bindgen_9276ea53e804a8df_base

{-# NOINLINE pixman_image_get_data #-}
{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32))
pixman_image_get_data =
  RIP.unsafePerformIO hs_bindgen_9276ea53e804a8df

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_width@
foreign import ccall unsafe "hs_bindgen_09d626944a52d425" hs_bindgen_09d626944a52d425_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_width@
hs_bindgen_09d626944a52d425 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_09d626944a52d425 =
  RIP.fromFFIType hs_bindgen_09d626944a52d425_base

{-# NOINLINE pixman_image_get_width #-}
{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_width =
  RIP.unsafePerformIO hs_bindgen_09d626944a52d425

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_height@
foreign import ccall unsafe "hs_bindgen_ff322bb285f5284d" hs_bindgen_ff322bb285f5284d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_height@
hs_bindgen_ff322bb285f5284d :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_ff322bb285f5284d =
  RIP.fromFFIType hs_bindgen_ff322bb285f5284d_base

{-# NOINLINE pixman_image_get_height #-}
{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_height =
  RIP.unsafePerformIO hs_bindgen_ff322bb285f5284d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_stride@
foreign import ccall unsafe "hs_bindgen_a49554839865bdce" hs_bindgen_a49554839865bdce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_stride@
hs_bindgen_a49554839865bdce :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_a49554839865bdce =
  RIP.fromFFIType hs_bindgen_a49554839865bdce_base

{-# NOINLINE pixman_image_get_stride #-}
{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_stride =
  RIP.unsafePerformIO hs_bindgen_a49554839865bdce

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_depth@
foreign import ccall unsafe "hs_bindgen_373e935f5e39a441" hs_bindgen_373e935f5e39a441_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_depth@
hs_bindgen_373e935f5e39a441 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt))
hs_bindgen_373e935f5e39a441 =
  RIP.fromFFIType hs_bindgen_373e935f5e39a441_base

{-# NOINLINE pixman_image_get_depth #-}
{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO RIP.CInt)
pixman_image_get_depth =
  RIP.unsafePerformIO hs_bindgen_373e935f5e39a441

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_format@
foreign import ccall unsafe "hs_bindgen_2266e5c92064ccf9" hs_bindgen_2266e5c92064ccf9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_get_format@
hs_bindgen_2266e5c92064ccf9 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_format_code_t))
hs_bindgen_2266e5c92064ccf9 =
  RIP.fromFFIType hs_bindgen_2266e5c92064ccf9_base

{-# NOINLINE pixman_image_get_format #-}
{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> IO Pixman_format_code_t)
pixman_image_get_format =
  RIP.unsafePerformIO hs_bindgen_2266e5c92064ccf9

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_filter_create_separable_convolution@
foreign import ccall unsafe "hs_bindgen_51e510fdd5624a56" hs_bindgen_51e510fdd5624a56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_filter_create_separable_convolution@
hs_bindgen_51e510fdd5624a56 :: IO (RIP.FunPtr ((RIP.Ptr RIP.CInt) -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> RIP.CInt -> RIP.CInt -> IO (RIP.Ptr Pixman_fixed_t)))
hs_bindgen_51e510fdd5624a56 =
  RIP.fromFFIType hs_bindgen_51e510fdd5624a56_base

{-# NOINLINE pixman_filter_create_separable_convolution #-}
{-| __C declaration:__ @pixman_filter_create_separable_convolution@

    __defined at:__ @pixman.h 1298:1@

    __exported by:__ @pixman.h@
-}
pixman_filter_create_separable_convolution :: RIP.FunPtr ((RIP.Ptr RIP.CInt) -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> Pixman_kernel_t -> RIP.CInt -> RIP.CInt -> IO (RIP.Ptr Pixman_fixed_t))
pixman_filter_create_separable_convolution =
  RIP.unsafePerformIO hs_bindgen_51e510fdd5624a56

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_fill_rectangles@
foreign import ccall unsafe "hs_bindgen_63424bd2cbd043bb" hs_bindgen_63424bd2cbd043bb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_fill_rectangles@
hs_bindgen_63424bd2cbd043bb :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_rectangle16_t) -> IO Pixman_bool_t))
hs_bindgen_63424bd2cbd043bb =
  RIP.fromFFIType hs_bindgen_63424bd2cbd043bb_base

{-# NOINLINE pixman_image_fill_rectangles #-}
{-| __C declaration:__ @pixman_image_fill_rectangles@

    __defined at:__ @pixman.h 1310:15@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_rectangles :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_rectangle16_t) -> IO Pixman_bool_t)
pixman_image_fill_rectangles =
  RIP.unsafePerformIO hs_bindgen_63424bd2cbd043bb

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_fill_boxes@
foreign import ccall unsafe "hs_bindgen_66281048be9c80ed" hs_bindgen_66281048be9c80ed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_fill_boxes@
hs_bindgen_66281048be9c80ed :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t))
hs_bindgen_66281048be9c80ed =
  RIP.fromFFIType hs_bindgen_66281048be9c80ed_base

{-# NOINLINE pixman_image_fill_boxes #-}
{-| __C declaration:__ @pixman_image_fill_boxes@

    __defined at:__ @pixman.h 1317:17@

    __exported by:__ @pixman.h@
-}
pixman_image_fill_boxes :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_color_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_box32_t) -> IO Pixman_bool_t)
pixman_image_fill_boxes =
  RIP.unsafePerformIO hs_bindgen_66281048be9c80ed

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_compute_composite_region@
foreign import ccall unsafe "hs_bindgen_81fc8338093cb027" hs_bindgen_81fc8338093cb027_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_compute_composite_region@
hs_bindgen_81fc8338093cb027 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO Pixman_bool_t))
hs_bindgen_81fc8338093cb027 =
  RIP.fromFFIType hs_bindgen_81fc8338093cb027_base

{-# NOINLINE pixman_compute_composite_region #-}
{-| __C declaration:__ @pixman_compute_composite_region@

    __defined at:__ @pixman.h 1325:15@

    __exported by:__ @pixman.h@
-}
pixman_compute_composite_region :: RIP.FunPtr ((RIP.Ptr Pixman_region16_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO Pixman_bool_t)
pixman_compute_composite_region =
  RIP.unsafePerformIO hs_bindgen_81fc8338093cb027

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_composite@
foreign import ccall unsafe "hs_bindgen_8bbffa7d7e76c147" hs_bindgen_8bbffa7d7e76c147_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_composite@
hs_bindgen_8bbffa7d7e76c147 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO ()))
hs_bindgen_8bbffa7d7e76c147 =
  RIP.fromFFIType hs_bindgen_8bbffa7d7e76c147_base

{-# NOINLINE pixman_image_composite #-}
{-| __C declaration:__ @pixman_image_composite@

    __defined at:__ @pixman.h 1339:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Word16 -> HsBindgen.Runtime.LibC.Word16 -> IO ())
pixman_image_composite =
  RIP.unsafePerformIO hs_bindgen_8bbffa7d7e76c147

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_composite32@
foreign import ccall unsafe "hs_bindgen_94a0d58e1dcc550e" hs_bindgen_94a0d58e1dcc550e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_composite32@
hs_bindgen_94a0d58e1dcc550e :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_94a0d58e1dcc550e =
  RIP.fromFFIType hs_bindgen_94a0d58e1dcc550e_base

{-# NOINLINE pixman_image_composite32 #-}
{-| __C declaration:__ @pixman_image_composite32@

    __defined at:__ @pixman.h 1353:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite32 :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
pixman_image_composite32 =
  RIP.unsafePerformIO hs_bindgen_94a0d58e1dcc550e

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_composite64f@
foreign import ccall unsafe "hs_bindgen_8a596d9cd2b2cba8" hs_bindgen_8a596d9cd2b2cba8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_image_composite64f@
hs_bindgen_8a596d9cd2b2cba8 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ()))
hs_bindgen_8a596d9cd2b2cba8 =
  RIP.fromFFIType hs_bindgen_8a596d9cd2b2cba8_base

{-# NOINLINE pixman_image_composite64f #-}
{-| __C declaration:__ @pixman_image_composite64f@

    __defined at:__ @pixman.h 1367:15@

    __exported by:__ @pixman.h@
-}
pixman_image_composite64f :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> RIP.CDouble -> IO ())
pixman_image_composite64f =
  RIP.unsafePerformIO hs_bindgen_8a596d9cd2b2cba8

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_disable_out_of_bounds_workaround@
foreign import ccall unsafe "hs_bindgen_5c4a66f37c3fd767" hs_bindgen_5c4a66f37c3fd767_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_disable_out_of_bounds_workaround@
hs_bindgen_5c4a66f37c3fd767 :: IO (RIP.FunPtr (IO ()))
hs_bindgen_5c4a66f37c3fd767 =
  RIP.fromFFIType hs_bindgen_5c4a66f37c3fd767_base

{-# NOINLINE pixman_disable_out_of_bounds_workaround #-}
{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: RIP.FunPtr (IO ())
pixman_disable_out_of_bounds_workaround =
  RIP.unsafePerformIO hs_bindgen_5c4a66f37c3fd767

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_create@
foreign import ccall unsafe "hs_bindgen_15134e11c7751857" hs_bindgen_15134e11c7751857_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_create@
hs_bindgen_15134e11c7751857 :: IO (RIP.FunPtr (IO (RIP.Ptr Pixman_glyph_cache_t)))
hs_bindgen_15134e11c7751857 =
  RIP.fromFFIType hs_bindgen_15134e11c7751857_base

{-# NOINLINE pixman_glyph_cache_create #-}
{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: RIP.FunPtr (IO (RIP.Ptr Pixman_glyph_cache_t))
pixman_glyph_cache_create =
  RIP.unsafePerformIO hs_bindgen_15134e11c7751857

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_destroy@
foreign import ccall unsafe "hs_bindgen_b894408fc9a420f0" hs_bindgen_b894408fc9a420f0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_destroy@
hs_bindgen_b894408fc9a420f0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ()))
hs_bindgen_b894408fc9a420f0 =
  RIP.fromFFIType hs_bindgen_b894408fc9a420f0_base

{-# NOINLINE pixman_glyph_cache_destroy #-}
{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ())
pixman_glyph_cache_destroy =
  RIP.unsafePerformIO hs_bindgen_b894408fc9a420f0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_freeze@
foreign import ccall unsafe "hs_bindgen_0e5bbda192fb2599" hs_bindgen_0e5bbda192fb2599_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_freeze@
hs_bindgen_0e5bbda192fb2599 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ()))
hs_bindgen_0e5bbda192fb2599 =
  RIP.fromFFIType hs_bindgen_0e5bbda192fb2599_base

{-# NOINLINE pixman_glyph_cache_freeze #-}
{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ())
pixman_glyph_cache_freeze =
  RIP.unsafePerformIO hs_bindgen_0e5bbda192fb2599

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_thaw@
foreign import ccall unsafe "hs_bindgen_d5ee3ab06b6a43be" hs_bindgen_d5ee3ab06b6a43be_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_thaw@
hs_bindgen_d5ee3ab06b6a43be :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ()))
hs_bindgen_d5ee3ab06b6a43be =
  RIP.fromFFIType hs_bindgen_d5ee3ab06b6a43be_base

{-# NOINLINE pixman_glyph_cache_thaw #-}
{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> IO ())
pixman_glyph_cache_thaw =
  RIP.unsafePerformIO hs_bindgen_d5ee3ab06b6a43be

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_lookup@
foreign import ccall unsafe "hs_bindgen_9282f42124d69efe" hs_bindgen_9282f42124d69efe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_lookup@
hs_bindgen_9282f42124d69efe :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_9282f42124d69efe =
  RIP.fromFFIType hs_bindgen_9282f42124d69efe_base

{-# NOINLINE pixman_glyph_cache_lookup #-}
{-| __C declaration:__ @pixman_glyph_cache_lookup@

    __defined at:__ @pixman.h 1424:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_lookup :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO (PtrConst.PtrConst RIP.Void))
pixman_glyph_cache_lookup =
  RIP.unsafePerformIO hs_bindgen_9282f42124d69efe

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_insert@
foreign import ccall unsafe "hs_bindgen_8770dd6e399be59f" hs_bindgen_8770dd6e399be59f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_insert@
hs_bindgen_8770dd6e399be59f :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_image_t) -> IO (PtrConst.PtrConst RIP.Void)))
hs_bindgen_8770dd6e399be59f =
  RIP.fromFFIType hs_bindgen_8770dd6e399be59f_base

{-# NOINLINE pixman_glyph_cache_insert #-}
{-| __C declaration:__ @pixman_glyph_cache_insert@

    __defined at:__ @pixman.h 1429:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_insert :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.CInt -> RIP.CInt -> (RIP.Ptr Pixman_image_t) -> IO (PtrConst.PtrConst RIP.Void))
pixman_glyph_cache_insert =
  RIP.unsafePerformIO hs_bindgen_8770dd6e399be59f

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_remove@
foreign import ccall unsafe "hs_bindgen_5c9b6f193f1c13dd" hs_bindgen_5c9b6f193f1c13dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_cache_remove@
hs_bindgen_5c9b6f193f1c13dd :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_5c9b6f193f1c13dd =
  RIP.fromFFIType hs_bindgen_5c9b6f193f1c13dd_base

{-# NOINLINE pixman_glyph_cache_remove #-}
{-| __C declaration:__ @pixman_glyph_cache_remove@

    __defined at:__ @pixman.h 1437:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_remove :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
pixman_glyph_cache_remove =
  RIP.unsafePerformIO hs_bindgen_5c9b6f193f1c13dd

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_get_extents@
foreign import ccall unsafe "hs_bindgen_871554ffff4bf118" hs_bindgen_871554ffff4bf118_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_get_extents@
hs_bindgen_871554ffff4bf118 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (RIP.Ptr Pixman_glyph_t) -> (RIP.Ptr Pixman_box32_t) -> IO ()))
hs_bindgen_871554ffff4bf118 =
  RIP.fromFFIType hs_bindgen_871554ffff4bf118_base

{-# NOINLINE pixman_glyph_get_extents #-}
{-| __C declaration:__ @pixman_glyph_get_extents@

    __defined at:__ @pixman.h 1442:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_extents :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (RIP.Ptr Pixman_glyph_t) -> (RIP.Ptr Pixman_box32_t) -> IO ())
pixman_glyph_get_extents =
  RIP.unsafePerformIO hs_bindgen_871554ffff4bf118

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_get_mask_format@
foreign import ccall unsafe "hs_bindgen_34c5c908d63d5559" hs_bindgen_34c5c908d63d5559_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_glyph_get_mask_format@
hs_bindgen_34c5c908d63d5559 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO Pixman_format_code_t))
hs_bindgen_34c5c908d63d5559 =
  RIP.fromFFIType hs_bindgen_34c5c908d63d5559_base

{-# NOINLINE pixman_glyph_get_mask_format #-}
{-| __C declaration:__ @pixman_glyph_get_mask_format@

    __defined at:__ @pixman.h 1448:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_get_mask_format :: RIP.FunPtr ((RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO Pixman_format_code_t)
pixman_glyph_get_mask_format =
  RIP.unsafePerformIO hs_bindgen_34c5c908d63d5559

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_glyphs@
foreign import ccall unsafe "hs_bindgen_9a049b29b82bd857" hs_bindgen_9a049b29b82bd857_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_glyphs@
hs_bindgen_9a049b29b82bd857 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ()))
hs_bindgen_9a049b29b82bd857 =
  RIP.fromFFIType hs_bindgen_9a049b29b82bd857_base

{-# NOINLINE pixman_composite_glyphs #-}
{-| __C declaration:__ @pixman_composite_glyphs@

    __defined at:__ @pixman.h 1453:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ())
pixman_composite_glyphs =
  RIP.unsafePerformIO hs_bindgen_9a049b29b82bd857

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_glyphs_no_mask@
foreign import ccall unsafe "hs_bindgen_6ca5f26e17b5adaa" hs_bindgen_6ca5f26e17b5adaa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_glyphs_no_mask@
hs_bindgen_6ca5f26e17b5adaa :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ()))
hs_bindgen_6ca5f26e17b5adaa =
  RIP.fromFFIType hs_bindgen_6ca5f26e17b5adaa_base

{-# NOINLINE pixman_composite_glyphs_no_mask #-}
{-| __C declaration:__ @pixman_composite_glyphs_no_mask@

    __defined at:__ @pixman.h 1470:23@

    __exported by:__ @pixman.h@
-}
pixman_composite_glyphs_no_mask :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (RIP.Ptr Pixman_glyph_cache_t) -> RIP.CInt -> (PtrConst.PtrConst Pixman_glyph_t) -> IO ())
pixman_composite_glyphs_no_mask =
  RIP.unsafePerformIO hs_bindgen_6ca5f26e17b5adaa

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_sample_ceil_y@
foreign import ccall unsafe "hs_bindgen_d0bf1f8b3c26d94d" hs_bindgen_d0bf1f8b3c26d94d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_sample_ceil_y@
hs_bindgen_d0bf1f8b3c26d94d :: IO (RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t))
hs_bindgen_d0bf1f8b3c26d94d =
  RIP.fromFFIType hs_bindgen_d0bf1f8b3c26d94d_base

{-# NOINLINE pixman_sample_ceil_y #-}
{-| __C declaration:__ @pixman_sample_ceil_y@

    __defined at:__ @pixman.h 1538:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_ceil_y :: RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t)
pixman_sample_ceil_y =
  RIP.unsafePerformIO hs_bindgen_d0bf1f8b3c26d94d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_sample_floor_y@
foreign import ccall unsafe "hs_bindgen_b6fb6cd13c301595" hs_bindgen_b6fb6cd13c301595_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_sample_floor_y@
hs_bindgen_b6fb6cd13c301595 :: IO (RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t))
hs_bindgen_b6fb6cd13c301595 =
  RIP.fromFFIType hs_bindgen_b6fb6cd13c301595_base

{-# NOINLINE pixman_sample_floor_y #-}
{-| __C declaration:__ @pixman_sample_floor_y@

    __defined at:__ @pixman.h 1542:16@

    __exported by:__ @pixman.h@
-}
pixman_sample_floor_y :: RIP.FunPtr (Pixman_fixed_t -> RIP.CInt -> IO Pixman_fixed_t)
pixman_sample_floor_y =
  RIP.unsafePerformIO hs_bindgen_b6fb6cd13c301595

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_edge_step@
foreign import ccall unsafe "hs_bindgen_6004c17f00170f94" hs_bindgen_6004c17f00170f94_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_edge_step@
hs_bindgen_6004c17f00170f94 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> IO ()))
hs_bindgen_6004c17f00170f94 =
  RIP.fromFFIType hs_bindgen_6004c17f00170f94_base

{-# NOINLINE pixman_edge_step #-}
{-| __C declaration:__ @pixman_edge_step@

    __defined at:__ @pixman.h 1546:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_step :: RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> IO ())
pixman_edge_step =
  RIP.unsafePerformIO hs_bindgen_6004c17f00170f94

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_edge_init@
foreign import ccall unsafe "hs_bindgen_c927edb2426e68f1" hs_bindgen_c927edb2426e68f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_edge_init@
hs_bindgen_c927edb2426e68f1 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_c927edb2426e68f1 =
  RIP.fromFFIType hs_bindgen_c927edb2426e68f1_base

{-# NOINLINE pixman_edge_init #-}
{-| __C declaration:__ @pixman_edge_init@

    __defined at:__ @pixman.h 1550:16@

    __exported by:__ @pixman.h@
-}
pixman_edge_init :: RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_edge_init =
  RIP.unsafePerformIO hs_bindgen_c927edb2426e68f1

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_line_fixed_edge_init@
foreign import ccall unsafe "hs_bindgen_bda485b9e14d1bd0" hs_bindgen_bda485b9e14d1bd0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_line_fixed_edge_init@
hs_bindgen_bda485b9e14d1bd0 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_line_fixed_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_bda485b9e14d1bd0 =
  RIP.fromFFIType hs_bindgen_bda485b9e14d1bd0_base

{-# NOINLINE pixman_line_fixed_edge_init #-}
{-| __C declaration:__ @pixman_line_fixed_edge_init@

    __defined at:__ @pixman.h 1559:16@

    __exported by:__ @pixman.h@
-}
pixman_line_fixed_edge_init :: RIP.FunPtr ((RIP.Ptr Pixman_edge_t) -> RIP.CInt -> Pixman_fixed_t -> (PtrConst.PtrConst Pixman_line_fixed_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_line_fixed_edge_init =
  RIP.unsafePerformIO hs_bindgen_bda485b9e14d1bd0

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_rasterize_edges@
foreign import ccall unsafe "hs_bindgen_23a6118c4cb8ca0d" hs_bindgen_23a6118c4cb8ca0d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_rasterize_edges@
hs_bindgen_23a6118c4cb8ca0d :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_edge_t) -> (RIP.Ptr Pixman_edge_t) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ()))
hs_bindgen_23a6118c4cb8ca0d =
  RIP.fromFFIType hs_bindgen_23a6118c4cb8ca0d_base

{-# NOINLINE pixman_rasterize_edges #-}
{-| __C declaration:__ @pixman_rasterize_edges@

    __defined at:__ @pixman.h 1567:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_edges :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_edge_t) -> (RIP.Ptr Pixman_edge_t) -> Pixman_fixed_t -> Pixman_fixed_t -> IO ())
pixman_rasterize_edges =
  RIP.unsafePerformIO hs_bindgen_23a6118c4cb8ca0d

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_add_traps@
foreign import ccall unsafe "hs_bindgen_bc72b1aad4eace82" hs_bindgen_bc72b1aad4eace82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_add_traps@
hs_bindgen_bc72b1aad4eace82 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> (PtrConst.PtrConst Pixman_trap_t) -> IO ()))
hs_bindgen_bc72b1aad4eace82 =
  RIP.fromFFIType hs_bindgen_bc72b1aad4eace82_base

{-# NOINLINE pixman_add_traps #-}
{-| __C declaration:__ @pixman_add_traps@

    __defined at:__ @pixman.h 1574:16@

    __exported by:__ @pixman.h@
-}
pixman_add_traps :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> (PtrConst.PtrConst Pixman_trap_t) -> IO ())
pixman_add_traps =
  RIP.unsafePerformIO hs_bindgen_bc72b1aad4eace82

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_add_trapezoids@
foreign import ccall unsafe "hs_bindgen_aeae03749fca8f5a" hs_bindgen_aeae03749fca8f5a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_add_trapezoids@
hs_bindgen_aeae03749fca8f5a :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ()))
hs_bindgen_aeae03749fca8f5a =
  RIP.fromFFIType hs_bindgen_aeae03749fca8f5a_base

{-# NOINLINE pixman_add_trapezoids #-}
{-| __C declaration:__ @pixman_add_trapezoids@

    __defined at:__ @pixman.h 1581:16@

    __exported by:__ @pixman.h@
-}
pixman_add_trapezoids :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int16 -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ())
pixman_add_trapezoids =
  RIP.unsafePerformIO hs_bindgen_aeae03749fca8f5a

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_rasterize_trapezoid@
foreign import ccall unsafe "hs_bindgen_152b396d3e99bfd5" hs_bindgen_152b396d3e99bfd5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_rasterize_trapezoid@
hs_bindgen_152b396d3e99bfd5 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_trapezoid_t) -> RIP.CInt -> RIP.CInt -> IO ()))
hs_bindgen_152b396d3e99bfd5 =
  RIP.fromFFIType hs_bindgen_152b396d3e99bfd5_base

{-# NOINLINE pixman_rasterize_trapezoid #-}
{-| __C declaration:__ @pixman_rasterize_trapezoid@

    __defined at:__ @pixman.h 1588:16@

    __exported by:__ @pixman.h@
-}
pixman_rasterize_trapezoid :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> (PtrConst.PtrConst Pixman_trapezoid_t) -> RIP.CInt -> RIP.CInt -> IO ())
pixman_rasterize_trapezoid =
  RIP.unsafePerformIO hs_bindgen_152b396d3e99bfd5

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_trapezoids@
foreign import ccall unsafe "hs_bindgen_b5813da6409a7c88" hs_bindgen_b5813da6409a7c88_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_trapezoids@
hs_bindgen_b5813da6409a7c88 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ()))
hs_bindgen_b5813da6409a7c88 =
  RIP.fromFFIType hs_bindgen_b5813da6409a7c88_base

{-# NOINLINE pixman_composite_trapezoids #-}
{-| __C declaration:__ @pixman_composite_trapezoids@

    __defined at:__ @pixman.h 1594:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_trapezoids :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_trapezoid_t) -> IO ())
pixman_composite_trapezoids =
  RIP.unsafePerformIO hs_bindgen_b5813da6409a7c88

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_triangles@
foreign import ccall unsafe "hs_bindgen_548b0340a9c53178" hs_bindgen_548b0340a9c53178_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_composite_triangles@
hs_bindgen_548b0340a9c53178 :: IO (RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ()))
hs_bindgen_548b0340a9c53178 =
  RIP.fromFFIType hs_bindgen_548b0340a9c53178_base

{-# NOINLINE pixman_composite_triangles #-}
{-| __C declaration:__ @pixman_composite_triangles@

    __defined at:__ @pixman.h 1606:15@

    __exported by:__ @pixman.h@
-}
pixman_composite_triangles :: RIP.FunPtr (Pixman_op_t -> (RIP.Ptr Pixman_image_t) -> (RIP.Ptr Pixman_image_t) -> Pixman_format_code_t -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ())
pixman_composite_triangles =
  RIP.unsafePerformIO hs_bindgen_548b0340a9c53178

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_add_triangles@
foreign import ccall unsafe "hs_bindgen_ba3321cf804ea5b2" hs_bindgen_ba3321cf804ea5b2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_pixman_Generated.Pixman_get_pixman_add_triangles@
hs_bindgen_ba3321cf804ea5b2 :: IO (RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ()))
hs_bindgen_ba3321cf804ea5b2 =
  RIP.fromFFIType hs_bindgen_ba3321cf804ea5b2_base

{-# NOINLINE pixman_add_triangles #-}
{-| __C declaration:__ @pixman_add_triangles@

    __defined at:__ @pixman.h 1618:12@

    __exported by:__ @pixman.h@
-}
pixman_add_triangles :: RIP.FunPtr ((RIP.Ptr Pixman_image_t) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.CInt -> (PtrConst.PtrConst Pixman_triangle_t) -> IO ())
pixman_add_triangles =
  RIP.unsafePerformIO hs_bindgen_ba3321cf804ea5b2
