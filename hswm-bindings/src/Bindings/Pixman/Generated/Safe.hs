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
  , "void hs_bindgen_165d50e95bce9b90 ("
  , "  struct pixman_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_transform_init_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_294439db6431f42c ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point_3d)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_2f8476e8fcfbb994 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_point)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_c4213449907f2016 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2,"
  , "  struct pixman_transform const *arg3"
  , ")"
  , "{"
  , "  return (pixman_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_62edda35f8c1d67a ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_6f04000875e2e3ea ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c97322b18ad780a5 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_6b6e719eadaf51c5 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_bb1fb215db7830a3 ("
  , "  struct pixman_transform *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_fixed_t arg3"
  , ")"
  , "{"
  , "  (pixman_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_761afd8d77afb9d9 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform *arg2,"
  , "  pixman_fixed_t arg3,"
  , "  pixman_fixed_t arg4"
  , ")"
  , "{"
  , "  return (pixman_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_d0fb9d2b1b568261 ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_bounds)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_29450ef82dc20943 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_1a77fced56cc3399 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_identity)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_2786f82f707a85c8 ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_scale)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_a0841fe875e7be1b ("
  , "  struct pixman_transform const *arg1"
  , ")"
  , "{"
  , "  return (pixman_transform_is_int_translate)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_49e28c26ec72892d ("
  , "  struct pixman_transform const *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_is_inverse)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_f313f05447ab3572 ("
  , "  struct pixman_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_transform_from_pixman_f_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_eec72f7b2bf9d922 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_transform const *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_from_pixman_transform)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_9bac906033044d1a ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_invert)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_0112d7a5ee62e58e ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_point)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3660c124bce47fb8 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_f_vector *arg2"
  , ")"
  , "{"
  , "  (pixman_f_transform_point_3d)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_de77fb6e59a99e1e ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform const *arg2,"
  , "  struct pixman_f_transform const *arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_multiply)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9903a27e055f3bdd ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_scale)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_9e07c868de24bddc ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_scale)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_519205ffa3c11f08 ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_rotate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_914956ad4a1a4586 ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_rotate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_cc47030c952eacef ("
  , "  struct pixman_f_transform *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_5cd78cd14f168d5d ("
  , "  struct pixman_f_transform *arg1,"
  , "  struct pixman_f_transform *arg2,"
  , "  double arg3,"
  , "  double arg4"
  , ")"
  , "{"
  , "  return (pixman_f_transform_translate)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_058dfa617d399060 ("
  , "  struct pixman_f_transform const *arg1,"
  , "  struct pixman_box16 *arg2"
  , ")"
  , "{"
  , "  return (pixman_f_transform_bounds)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4c53f2add5750a58 ("
  , "  struct pixman_f_transform *arg1"
  , ")"
  , "{"
  , "  (pixman_f_transform_init_identity)(arg1);"
  , "}"
  , "void hs_bindgen_1264dbebc2fbcfa0 ("
  , "  pixman_box16_t *arg1,"
  , "  pixman_region16_data_t *arg2,"
  , "  pixman_region16_data_t *arg3"
  , ")"
  , "{"
  , "  (pixman_region_set_static_pointers)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5a347322d2b0e1cc ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_init)(arg1);"
  , "}"
  , "void hs_bindgen_39b01c1d1ec8cbde ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_c3714336d7147fed ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ece2c8267009b32a ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_91ccd9f1d1eca3b6 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_396e5e694eb38844 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_fini)(arg1);"
  , "}"
  , "void hs_bindgen_c1ad43765005ec0d ("
  , "  pixman_region16_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_c2c9292cb7e786b2 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_774e1593c708ce0d ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1c7a608bce48c043 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_67e60231d18bd625 ("
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
  , "pixman_bool_t hs_bindgen_26ec9f19d5c2c490 ("
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
  , "pixman_bool_t hs_bindgen_29a314912369602d ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_region16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_e7531fc34eab3724 ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_region16_t const *arg2,"
  , "  pixman_box16_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_e7b47e7eb15ef57e ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box16_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_f606a3d7b552476c ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b0f37490ecd9ee73 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_bbc0bee268826d6a ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_not_empty)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_ada82281e2aecd40 ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_df9a8833cf1df53d ("
  , "  pixman_region16_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_n_rects)(arg1);"
  , "}"
  , "pixman_box16_t *hs_bindgen_4c16896531d7eb47 ("
  , "  pixman_region16_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_7db8fa6bdf8e87ab ("
  , "  pixman_region16_t const *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_444f2082cae0aded ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_591f263bb01f42ed ("
  , "  pixman_region16_t *arg1,"
  , "  pixman_box16_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6193e97da278cea6 ("
  , "  pixman_region16_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region_clear)(arg1);"
  , "}"
  , "void hs_bindgen_5fc2efca25a63e58 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_init)(arg1);"
  , "}"
  , "void hs_bindgen_1a343a083059f83b ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region32_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_0931e2571d1a5341 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c874444d1c5b537c ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_08cd19cdcad0f153 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_91a838b7c5eee918 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_fini)(arg1);"
  , "}"
  , "void hs_bindgen_f9cb1c138c4bb141 ("
  , "  pixman_region32_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region32_translate)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_0243bad5d032c852 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_b91515270495af2c ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_37341c2e3deee7bb ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_78659c32c8935b9e ("
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
  , "pixman_bool_t hs_bindgen_221182b787ceda24 ("
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
  , "pixman_bool_t hs_bindgen_157cc5a08e80f9d6 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_region32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_1dd1fa1565214a25 ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_region32_t const *arg2,"
  , "  pixman_box32_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region32_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_f4c678c8e09e907f ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_662925f75d768726 ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_3d6fdeb40e2556ef ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_466b8184a14173a2 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_not_empty)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_25e9ecefe5441dc4 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_3bd8daeca61a9fa7 ("
  , "  pixman_region32_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_n_rects)(arg1);"
  , "}"
  , "pixman_box32_t *hs_bindgen_568edafc82e6978f ("
  , "  pixman_region32_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_ec7c4d357ac72d30 ("
  , "  pixman_region32_t const *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region32_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_5098ee5178372c21 ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region32_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_c3df885e4ea7cecb ("
  , "  pixman_region32_t *arg1,"
  , "  pixman_box32_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region32_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_487a04d45f33ce1b ("
  , "  pixman_region32_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region32_clear)(arg1);"
  , "}"
  , "void hs_bindgen_1de336a3bb363477 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_init)(arg1);"
  , "}"
  , "void hs_bindgen_99dd3e661a93e107 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  unsigned int arg4,"
  , "  unsigned int arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_39591a16e5bc0712 ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  double arg4,"
  , "  double arg5"
  , ")"
  , "{"
  , "  (pixman_region64f_init_rectf)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_855be570da344e24 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_init_rects)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5e267002c03c5bbe ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_with_extents)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4888a448d3e0bd9b ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_image_t *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_init_from_image)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7661bfe5617be33c ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_fini)(arg1);"
  , "}"
  , "void hs_bindgen_e2df40317964d561 ("
  , "  pixman_region64f_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translate)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f70f9439129cc50d ("
  , "  pixman_region64f_t *arg1,"
  , "  double arg2,"
  , "  double arg3"
  , ")"
  , "{"
  , "  (pixman_region64f_translatef)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_7c951a158296184c ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_copy)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_c73ea7f8911e77e6 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_intersect)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_604f6a1a57a967b3 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_union)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_b7349881c5ce0960 ("
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
  , "pixman_bool_t hs_bindgen_3d4628126a3e31e8 ("
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
  , "pixman_bool_t hs_bindgen_8647041aaf02c575 ("
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
  , "pixman_bool_t hs_bindgen_35e9e5afa4639d37 ("
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
  , "pixman_bool_t hs_bindgen_86fd8827e5c1f2da ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_region64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_subtract)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_f5ad7bb87a8f1c7c ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_region64f_t const *arg2,"
  , "  pixman_box64f_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_region64f_inverse)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_967b8447084764a9 ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_point)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_bool_t hs_bindgen_dbaff1ef0b97ca24 ("
  , "  pixman_region64f_t const *arg1,"
  , "  double arg2,"
  , "  double arg3,"
  , "  pixman_box64f_t *arg4"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_pointf)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_region_overlap_t hs_bindgen_d71fb68a593b4100 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_contains_rectangle)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_73fe188dbcdc90d4 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_empty)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_20eb4451ec84b0cc ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_not_empty)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_c4b94bf7d45b5363 ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_extents)(arg1);"
  , "}"
  , "signed int hs_bindgen_58e663b5b715c1eb ("
  , "  pixman_region64f_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_n_rects)(arg1);"
  , "}"
  , "pixman_box64f_t *hs_bindgen_62602acc910d1d5d ("
  , "  pixman_region64f_t const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_rectangles)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_d4426339d0eed260 ("
  , "  pixman_region64f_t const *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_region64f_equal)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_2d484255e616b5a3 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_region64f_selfcheck)(arg1);"
  , "}"
  , "void hs_bindgen_5547ff5edf93bed6 ("
  , "  pixman_region64f_t *arg1,"
  , "  pixman_box64f_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_region64f_reset)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_30b92a1de3da8dd1 ("
  , "  pixman_region64f_t *arg1"
  , ")"
  , "{"
  , "  (pixman_region64f_clear)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_2a42a4d28ec5e048 ("
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
  , "pixman_bool_t hs_bindgen_2ee85d63352b8812 ("
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
  , "signed int hs_bindgen_c892d518727928f1 (void)"
  , "{"
  , "  return (pixman_version)();"
  , "}"
  , "char const *hs_bindgen_b3c8d482dadd5809 (void)"
  , "{"
  , "  return (pixman_version_string)();"
  , "}"
  , "pixman_bool_t hs_bindgen_143a6cc98691319d ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_destination)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_1b4806e0a373b622 ("
  , "  pixman_format_code_t arg1"
  , ")"
  , "{"
  , "  return (pixman_format_supported_source)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_ed6d581a4cef66d7 ("
  , "  pixman_color_t const *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_create_solid_fill)(arg1);"
  , "}"
  , "pixman_image_t *hs_bindgen_d7536e5e8cc4cc4d ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_point_fixed_t const *arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_linear_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_178a9d1e09cb209e ("
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
  , "pixman_image_t *hs_bindgen_ea9f8ab7b906288a ("
  , "  pixman_point_fixed_t const *arg1,"
  , "  pixman_fixed_t arg2,"
  , "  pixman_gradient_stop_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_create_conical_gradient)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_image_t *hs_bindgen_a9970a8acba1da3a ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_5c901899cf14ee49 ("
  , "  pixman_format_code_t arg1,"
  , "  signed int arg2,"
  , "  signed int arg3,"
  , "  uint32_t *arg4,"
  , "  signed int arg5"
  , ")"
  , "{"
  , "  return (pixman_image_create_bits_no_clear)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_image_t *hs_bindgen_1ea5dca1e6123723 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_ref)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_a3a3b7281b730b24 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_unref)(arg1);"
  , "}"
  , "void hs_bindgen_85a8e439a7dff50d ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_destroy_func_t arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_destroy_function)(arg1, arg2, arg3);"
  , "}"
  , "void *hs_bindgen_0cb45bf17356286e ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_destroy_data)(arg1);"
  , "}"
  , "pixman_bool_t hs_bindgen_d237966b64c58a87 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region16_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_a0cdd7715bb25696 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region32_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region32)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_583535138fa58456 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_region64f_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_clip_region64f)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_111d5695e70608e5 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_has_client_clip)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_0c188b5779951a3e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_transform_t const *arg2"
  , ")"
  , "{"
  , "  return (pixman_image_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_96d251c5df50b465 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_repeat_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_repeat)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_57c294a5636634dd ("
  , "  pixman_image_t *arg1,"
  , "  pixman_dither_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_dither)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ec95184816c7fa52 ("
  , "  pixman_image_t *arg1,"
  , "  signed int arg2,"
  , "  signed int arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_dither_offset)(arg1, arg2, arg3);"
  , "}"
  , "pixman_bool_t hs_bindgen_45d5bdda00957728 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_filter_t arg2,"
  , "  pixman_fixed_t const *arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  return (pixman_image_set_filter)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_364fbf029efdb63e ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_source_clipping)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_88920ef8720b9915 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_image_t *arg2,"
  , "  int16_t arg3,"
  , "  int16_t arg4"
  , ")"
  , "{"
  , "  (pixman_image_set_alpha_map)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_0188c1cc1b9e6dc7 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_bool_t arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_component_alpha)(arg1, arg2);"
  , "}"
  , "pixman_bool_t hs_bindgen_c79972218f3059aa ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_component_alpha)(arg1);"
  , "}"
  , "void hs_bindgen_9aa495d881875aef ("
  , "  pixman_image_t *arg1,"
  , "  pixman_read_memory_func_t arg2,"
  , "  pixman_write_memory_func_t arg3"
  , ")"
  , "{"
  , "  (pixman_image_set_accessors)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_af55c5ad3b6cfe8a ("
  , "  pixman_image_t *arg1,"
  , "  pixman_indexed_t const *arg2"
  , ")"
  , "{"
  , "  (pixman_image_set_indexed)(arg1, arg2);"
  , "}"
  , "uint32_t *hs_bindgen_e6e5205141988527 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_data)(arg1);"
  , "}"
  , "signed int hs_bindgen_c0c3055f529cb306 ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_width)(arg1);"
  , "}"
  , "signed int hs_bindgen_fffff32f1768196e ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_height)(arg1);"
  , "}"
  , "signed int hs_bindgen_0299178be7aafe6b ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_stride)(arg1);"
  , "}"
  , "signed int hs_bindgen_72bbe8405b76230e ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_depth)(arg1);"
  , "}"
  , "pixman_format_code_t hs_bindgen_2fbb56dff385a34d ("
  , "  pixman_image_t *arg1"
  , ")"
  , "{"
  , "  return (pixman_image_get_format)(arg1);"
  , "}"
  , "pixman_fixed_t *hs_bindgen_051cf908dd37bff1 ("
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
  , "pixman_bool_t hs_bindgen_65ab881d0fe7a4e4 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_rectangle16_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_rectangles)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_74288429ecf3f5f4 ("
  , "  pixman_op_t arg1,"
  , "  pixman_image_t *arg2,"
  , "  pixman_color_t const *arg3,"
  , "  signed int arg4,"
  , "  pixman_box32_t const *arg5"
  , ")"
  , "{"
  , "  return (pixman_image_fill_boxes)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "pixman_bool_t hs_bindgen_7b3e1a77e7062e82 ("
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
  , "void hs_bindgen_ac0615770d162876 ("
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
  , "void hs_bindgen_43328f41d70c40b1 ("
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
  , "void hs_bindgen_388e6bc773a55108 ("
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
  , "void hs_bindgen_f0a83e38ba4ead92 (void)"
  , "{"
  , "  (pixman_disable_out_of_bounds_workaround)();"
  , "}"
  , "pixman_glyph_cache_t *hs_bindgen_03b63d516fafc127 (void)"
  , "{"
  , "  return (pixman_glyph_cache_create)();"
  , "}"
  , "void hs_bindgen_e3a7829f4d58d262 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_b3198b3dec3f8129 ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_freeze)(arg1);"
  , "}"
  , "void hs_bindgen_c5116d1c2a06a2eb ("
  , "  pixman_glyph_cache_t *arg1"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_thaw)(arg1);"
  , "}"
  , "void const *hs_bindgen_5598a53bcd3abc99 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_cache_lookup)(arg1, arg2, arg3);"
  , "}"
  , "void const *hs_bindgen_8367c902bfaba914 ("
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
  , "void hs_bindgen_e2a1f08f541484f0 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  void *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  (pixman_glyph_cache_remove)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_47fc9b9c8b9db326 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t *arg3,"
  , "  pixman_box32_t *arg4"
  , ")"
  , "{"
  , "  (pixman_glyph_get_extents)(arg1, arg2, arg3, arg4);"
  , "}"
  , "pixman_format_code_t hs_bindgen_8b577c79e1cded64 ("
  , "  pixman_glyph_cache_t *arg1,"
  , "  signed int arg2,"
  , "  pixman_glyph_t const *arg3"
  , ")"
  , "{"
  , "  return (pixman_glyph_get_mask_format)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c02695c96b341b01 ("
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
  , "void hs_bindgen_0def6df8738043b6 ("
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
  , "pixman_fixed_t hs_bindgen_7451f911c6bd1262 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_ceil_y)(arg1, arg2);"
  , "}"
  , "pixman_fixed_t hs_bindgen_68e556c8cdf01971 ("
  , "  pixman_fixed_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return (pixman_sample_floor_y)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ee84b0cf6cb50bbe ("
  , "  pixman_edge_t *arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  (pixman_edge_step)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ad165075d732944e ("
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
  , "void hs_bindgen_031ea42b10d99928 ("
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
  , "void hs_bindgen_6dc7df16e66de513 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_edge_t *arg2,"
  , "  pixman_edge_t *arg3,"
  , "  pixman_fixed_t arg4,"
  , "  pixman_fixed_t arg5"
  , ")"
  , "{"
  , "  (pixman_rasterize_edges)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_a769199f93cec077 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  int16_t arg3,"
  , "  signed int arg4,"
  , "  pixman_trap_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_traps)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_ad4702527062e763 ("
  , "  pixman_image_t *arg1,"
  , "  int16_t arg2,"
  , "  signed int arg3,"
  , "  signed int arg4,"
  , "  pixman_trapezoid_t const *arg5"
  , ")"
  , "{"
  , "  (pixman_add_trapezoids)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_6d27f34a9eb01b90 ("
  , "  pixman_image_t *arg1,"
  , "  pixman_trapezoid_t const *arg2,"
  , "  signed int arg3,"
  , "  signed int arg4"
  , ")"
  , "{"
  , "  (pixman_rasterize_trapezoid)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_08b95ef7abc45525 ("
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
  , "void hs_bindgen_eefa401258637ce0 ("
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
  , "void hs_bindgen_1742f42dbcd26ae7 ("
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_identity@
foreign import ccall safe "hs_bindgen_165d50e95bce9b90" hs_bindgen_165d50e95bce9b90_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_identity@
hs_bindgen_165d50e95bce9b90 ::
     RIP.Ptr Pixman_transform
  -> IO ()
hs_bindgen_165d50e95bce9b90 =
  RIP.fromFFIType hs_bindgen_165d50e95bce9b90_base

{-| __C declaration:__ @pixman_transform_init_identity@

    __defined at:__ @pixman.h 188:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_init_identity ::
     RIP.Ptr Pixman_transform
     -- ^ __C declaration:__ @matrix@
  -> IO ()
pixman_transform_init_identity =
  hs_bindgen_165d50e95bce9b90

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_point_3d@
foreign import ccall safe "hs_bindgen_294439db6431f42c" hs_bindgen_294439db6431f42c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_point_3d@
hs_bindgen_294439db6431f42c ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_294439db6431f42c =
  RIP.fromFFIType hs_bindgen_294439db6431f42c_base

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
  hs_bindgen_294439db6431f42c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_point@
foreign import ccall safe "hs_bindgen_2f8476e8fcfbb994" hs_bindgen_2f8476e8fcfbb994_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_point@
hs_bindgen_2f8476e8fcfbb994 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_vector
  -> IO Pixman_bool_t
hs_bindgen_2f8476e8fcfbb994 =
  RIP.fromFFIType hs_bindgen_2f8476e8fcfbb994_base

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
pixman_transform_point = hs_bindgen_2f8476e8fcfbb994

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_multiply@
foreign import ccall safe "hs_bindgen_c4213449907f2016" hs_bindgen_c4213449907f2016_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_multiply@
hs_bindgen_c4213449907f2016 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_c4213449907f2016 =
  RIP.fromFFIType hs_bindgen_c4213449907f2016_base

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
  hs_bindgen_c4213449907f2016

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_scale@
foreign import ccall safe "hs_bindgen_62edda35f8c1d67a" hs_bindgen_62edda35f8c1d67a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_scale@
hs_bindgen_62edda35f8c1d67a ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_62edda35f8c1d67a =
  RIP.fromFFIType hs_bindgen_62edda35f8c1d67a_base

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
  hs_bindgen_62edda35f8c1d67a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_scale@
foreign import ccall safe "hs_bindgen_6f04000875e2e3ea" hs_bindgen_6f04000875e2e3ea_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_scale@
hs_bindgen_6f04000875e2e3ea ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_6f04000875e2e3ea =
  RIP.fromFFIType hs_bindgen_6f04000875e2e3ea_base

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
pixman_transform_scale = hs_bindgen_6f04000875e2e3ea

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_rotate@
foreign import ccall safe "hs_bindgen_c97322b18ad780a5" hs_bindgen_c97322b18ad780a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_rotate@
hs_bindgen_c97322b18ad780a5 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_c97322b18ad780a5 =
  RIP.fromFFIType hs_bindgen_c97322b18ad780a5_base

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
  hs_bindgen_c97322b18ad780a5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_rotate@
foreign import ccall safe "hs_bindgen_6b6e719eadaf51c5" hs_bindgen_6b6e719eadaf51c5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_rotate@
hs_bindgen_6b6e719eadaf51c5 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_6b6e719eadaf51c5 =
  RIP.fromFFIType hs_bindgen_6b6e719eadaf51c5_base

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
pixman_transform_rotate = hs_bindgen_6b6e719eadaf51c5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_translate@
foreign import ccall safe "hs_bindgen_bb1fb215db7830a3" hs_bindgen_bb1fb215db7830a3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_init_translate@
hs_bindgen_bb1fb215db7830a3 ::
     RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_bb1fb215db7830a3 =
  RIP.fromFFIType hs_bindgen_bb1fb215db7830a3_base

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
  hs_bindgen_bb1fb215db7830a3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_translate@
foreign import ccall safe "hs_bindgen_761afd8d77afb9d9" hs_bindgen_761afd8d77afb9d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_translate@
hs_bindgen_761afd8d77afb9d9 ::
     RIP.Ptr Pixman_transform
  -> RIP.Ptr Pixman_transform
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO Pixman_bool_t
hs_bindgen_761afd8d77afb9d9 =
  RIP.fromFFIType hs_bindgen_761afd8d77afb9d9_base

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
  hs_bindgen_761afd8d77afb9d9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_bounds@
foreign import ccall safe "hs_bindgen_d0fb9d2b1b568261" hs_bindgen_d0fb9d2b1b568261_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_bounds@
hs_bindgen_d0fb9d2b1b568261 ::
     PtrConst.PtrConst Pixman_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_d0fb9d2b1b568261 =
  RIP.fromFFIType hs_bindgen_d0fb9d2b1b568261_base

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
pixman_transform_bounds = hs_bindgen_d0fb9d2b1b568261

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_invert@
foreign import ccall safe "hs_bindgen_29450ef82dc20943" hs_bindgen_29450ef82dc20943_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_invert@
hs_bindgen_29450ef82dc20943 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_29450ef82dc20943 =
  RIP.fromFFIType hs_bindgen_29450ef82dc20943_base

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
pixman_transform_invert = hs_bindgen_29450ef82dc20943

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_identity@
foreign import ccall safe "hs_bindgen_1a77fced56cc3399" hs_bindgen_1a77fced56cc3399_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_identity@
hs_bindgen_1a77fced56cc3399 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_1a77fced56cc3399 =
  RIP.fromFFIType hs_bindgen_1a77fced56cc3399_base

{-| __C declaration:__ @pixman_transform_is_identity@

    __defined at:__ @pixman.h 245:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_identity ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_identity =
  hs_bindgen_1a77fced56cc3399

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_scale@
foreign import ccall safe "hs_bindgen_2786f82f707a85c8" hs_bindgen_2786f82f707a85c8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_scale@
hs_bindgen_2786f82f707a85c8 ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_2786f82f707a85c8 =
  RIP.fromFFIType hs_bindgen_2786f82f707a85c8_base

{-| __C declaration:__ @pixman_transform_is_scale@

    __defined at:__ @pixman.h 248:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_scale ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_scale =
  hs_bindgen_2786f82f707a85c8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_int_translate@
foreign import ccall safe "hs_bindgen_a0841fe875e7be1b" hs_bindgen_a0841fe875e7be1b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_int_translate@
hs_bindgen_a0841fe875e7be1b ::
     PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_a0841fe875e7be1b =
  RIP.fromFFIType hs_bindgen_a0841fe875e7be1b_base

{-| __C declaration:__ @pixman_transform_is_int_translate@

    __defined at:__ @pixman.h 251:15@

    __exported by:__ @pixman.h@
-}
pixman_transform_is_int_translate ::
     PtrConst.PtrConst Pixman_transform
     -- ^ __C declaration:__ @t@
  -> IO Pixman_bool_t
pixman_transform_is_int_translate =
  hs_bindgen_a0841fe875e7be1b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_inverse@
foreign import ccall safe "hs_bindgen_49e28c26ec72892d" hs_bindgen_49e28c26ec72892d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_is_inverse@
hs_bindgen_49e28c26ec72892d ::
     PtrConst.PtrConst Pixman_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO Pixman_bool_t
hs_bindgen_49e28c26ec72892d =
  RIP.fromFFIType hs_bindgen_49e28c26ec72892d_base

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
  hs_bindgen_49e28c26ec72892d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_from_pixman_f_transform@
foreign import ccall safe "hs_bindgen_f313f05447ab3572" hs_bindgen_f313f05447ab3572_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_transform_from_pixman_f_transform@
hs_bindgen_f313f05447ab3572 ::
     RIP.Ptr Pixman_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_f313f05447ab3572 =
  RIP.fromFFIType hs_bindgen_f313f05447ab3572_base

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
  hs_bindgen_f313f05447ab3572

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_from_pixman_transform@
foreign import ccall safe "hs_bindgen_eec72f7b2bf9d922" hs_bindgen_eec72f7b2bf9d922_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_from_pixman_transform@
hs_bindgen_eec72f7b2bf9d922 ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_transform
  -> IO ()
hs_bindgen_eec72f7b2bf9d922 =
  RIP.fromFFIType hs_bindgen_eec72f7b2bf9d922_base

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
  hs_bindgen_eec72f7b2bf9d922

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_invert@
foreign import ccall safe "hs_bindgen_9bac906033044d1a" hs_bindgen_9bac906033044d1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_invert@
hs_bindgen_9bac906033044d1a ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO Pixman_bool_t
hs_bindgen_9bac906033044d1a =
  RIP.fromFFIType hs_bindgen_9bac906033044d1a_base

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
  hs_bindgen_9bac906033044d1a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_point@
foreign import ccall safe "hs_bindgen_0112d7a5ee62e58e" hs_bindgen_0112d7a5ee62e58e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_point@
hs_bindgen_0112d7a5ee62e58e ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO Pixman_bool_t
hs_bindgen_0112d7a5ee62e58e =
  RIP.fromFFIType hs_bindgen_0112d7a5ee62e58e_base

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
  hs_bindgen_0112d7a5ee62e58e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_point_3d@
foreign import ccall safe "hs_bindgen_3660c124bce47fb8" hs_bindgen_3660c124bce47fb8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_point_3d@
hs_bindgen_3660c124bce47fb8 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_f_vector
  -> IO ()
hs_bindgen_3660c124bce47fb8 =
  RIP.fromFFIType hs_bindgen_3660c124bce47fb8_base

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
  hs_bindgen_3660c124bce47fb8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_multiply@
foreign import ccall safe "hs_bindgen_de77fb6e59a99e1e" hs_bindgen_de77fb6e59a99e1e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_multiply@
hs_bindgen_de77fb6e59a99e1e ::
     RIP.Ptr Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> PtrConst.PtrConst Pixman_f_transform
  -> IO ()
hs_bindgen_de77fb6e59a99e1e =
  RIP.fromFFIType hs_bindgen_de77fb6e59a99e1e_base

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
  hs_bindgen_de77fb6e59a99e1e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_scale@
foreign import ccall safe "hs_bindgen_9903a27e055f3bdd" hs_bindgen_9903a27e055f3bdd_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_scale@
hs_bindgen_9903a27e055f3bdd ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_9903a27e055f3bdd =
  RIP.fromFFIType hs_bindgen_9903a27e055f3bdd_base

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
  hs_bindgen_9903a27e055f3bdd

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_scale@
foreign import ccall safe "hs_bindgen_9e07c868de24bddc" hs_bindgen_9e07c868de24bddc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_scale@
hs_bindgen_9e07c868de24bddc ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_9e07c868de24bddc =
  RIP.fromFFIType hs_bindgen_9e07c868de24bddc_base

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
  hs_bindgen_9e07c868de24bddc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_rotate@
foreign import ccall safe "hs_bindgen_519205ffa3c11f08" hs_bindgen_519205ffa3c11f08_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_rotate@
hs_bindgen_519205ffa3c11f08 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_519205ffa3c11f08 =
  RIP.fromFFIType hs_bindgen_519205ffa3c11f08_base

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
  hs_bindgen_519205ffa3c11f08

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_rotate@
foreign import ccall safe "hs_bindgen_914956ad4a1a4586" hs_bindgen_914956ad4a1a4586_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_rotate@
hs_bindgen_914956ad4a1a4586 ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_914956ad4a1a4586 =
  RIP.fromFFIType hs_bindgen_914956ad4a1a4586_base

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
  hs_bindgen_914956ad4a1a4586

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_translate@
foreign import ccall safe "hs_bindgen_cc47030c952eacef" hs_bindgen_cc47030c952eacef_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_translate@
hs_bindgen_cc47030c952eacef ::
     RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_cc47030c952eacef =
  RIP.fromFFIType hs_bindgen_cc47030c952eacef_base

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
  hs_bindgen_cc47030c952eacef

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_translate@
foreign import ccall safe "hs_bindgen_5cd78cd14f168d5d" hs_bindgen_5cd78cd14f168d5d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_translate@
hs_bindgen_5cd78cd14f168d5d ::
     RIP.Ptr Pixman_f_transform
  -> RIP.Ptr Pixman_f_transform
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_5cd78cd14f168d5d =
  RIP.fromFFIType hs_bindgen_5cd78cd14f168d5d_base

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
  hs_bindgen_5cd78cd14f168d5d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_bounds@
foreign import ccall safe "hs_bindgen_058dfa617d399060" hs_bindgen_058dfa617d399060_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_bounds@
hs_bindgen_058dfa617d399060 ::
     PtrConst.PtrConst Pixman_f_transform
  -> RIP.Ptr Pixman_box16
  -> IO Pixman_bool_t
hs_bindgen_058dfa617d399060 =
  RIP.fromFFIType hs_bindgen_058dfa617d399060_base

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
  hs_bindgen_058dfa617d399060

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_identity@
foreign import ccall safe "hs_bindgen_4c53f2add5750a58" hs_bindgen_4c53f2add5750a58_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_f_transform_init_identity@
hs_bindgen_4c53f2add5750a58 ::
     RIP.Ptr Pixman_f_transform
  -> IO ()
hs_bindgen_4c53f2add5750a58 =
  RIP.fromFFIType hs_bindgen_4c53f2add5750a58_base

{-| __C declaration:__ @pixman_f_transform_init_identity@

    __defined at:__ @pixman.h 337:15@

    __exported by:__ @pixman.h@
-}
pixman_f_transform_init_identity ::
     RIP.Ptr Pixman_f_transform
     -- ^ __C declaration:__ @t@
  -> IO ()
pixman_f_transform_init_identity =
  hs_bindgen_4c53f2add5750a58

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_set_static_pointers@
foreign import ccall safe "hs_bindgen_1264dbebc2fbcfa0" hs_bindgen_1264dbebc2fbcfa0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_set_static_pointers@
hs_bindgen_1264dbebc2fbcfa0 ::
     RIP.Ptr Pixman_box16_t
  -> RIP.Ptr Pixman_region16_data_t
  -> RIP.Ptr Pixman_region16_data_t
  -> IO ()
hs_bindgen_1264dbebc2fbcfa0 =
  RIP.fromFFIType hs_bindgen_1264dbebc2fbcfa0_base

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
  hs_bindgen_1264dbebc2fbcfa0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init@
foreign import ccall safe "hs_bindgen_5a347322d2b0e1cc" hs_bindgen_5a347322d2b0e1cc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init@
hs_bindgen_5a347322d2b0e1cc ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_5a347322d2b0e1cc =
  RIP.fromFFIType hs_bindgen_5a347322d2b0e1cc_base

{-| __C declaration:__ @pixman_region_init@

    __defined at:__ @pixman.h 502:25@

    __exported by:__ @pixman.h@
-}
pixman_region_init ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_init = hs_bindgen_5a347322d2b0e1cc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_rect@
foreign import ccall safe "hs_bindgen_39b01c1d1ec8cbde" hs_bindgen_39b01c1d1ec8cbde_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_rect@
hs_bindgen_39b01c1d1ec8cbde ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_39b01c1d1ec8cbde =
  RIP.fromFFIType hs_bindgen_39b01c1d1ec8cbde_base

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
pixman_region_init_rect = hs_bindgen_39b01c1d1ec8cbde

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_rects@
foreign import ccall safe "hs_bindgen_c3714336d7147fed" hs_bindgen_c3714336d7147fed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_rects@
hs_bindgen_c3714336d7147fed ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_c3714336d7147fed =
  RIP.fromFFIType hs_bindgen_c3714336d7147fed_base

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
  hs_bindgen_c3714336d7147fed

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_with_extents@
foreign import ccall safe "hs_bindgen_ece2c8267009b32a" hs_bindgen_ece2c8267009b32a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_with_extents@
hs_bindgen_ece2c8267009b32a ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_ece2c8267009b32a =
  RIP.fromFFIType hs_bindgen_ece2c8267009b32a_base

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
  hs_bindgen_ece2c8267009b32a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_from_image@
foreign import ccall safe "hs_bindgen_91ccd9f1d1eca3b6" hs_bindgen_91ccd9f1d1eca3b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_init_from_image@
hs_bindgen_91ccd9f1d1eca3b6 ::
     RIP.Ptr Pixman_region16_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_91ccd9f1d1eca3b6 =
  RIP.fromFFIType hs_bindgen_91ccd9f1d1eca3b6_base

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
  hs_bindgen_91ccd9f1d1eca3b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_fini@
foreign import ccall safe "hs_bindgen_396e5e694eb38844" hs_bindgen_396e5e694eb38844_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_fini@
hs_bindgen_396e5e694eb38844 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_396e5e694eb38844 =
  RIP.fromFFIType hs_bindgen_396e5e694eb38844_base

{-| __C declaration:__ @pixman_region_fini@

    __defined at:__ @pixman.h 525:25@

    __exported by:__ @pixman.h@
-}
pixman_region_fini ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_fini = hs_bindgen_396e5e694eb38844

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_translate@
foreign import ccall safe "hs_bindgen_c1ad43765005ec0d" hs_bindgen_c1ad43765005ec0d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_translate@
hs_bindgen_c1ad43765005ec0d ::
     RIP.Ptr Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_c1ad43765005ec0d =
  RIP.fromFFIType hs_bindgen_c1ad43765005ec0d_base

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
pixman_region_translate = hs_bindgen_c1ad43765005ec0d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_copy@
foreign import ccall safe "hs_bindgen_c2c9292cb7e786b2" hs_bindgen_c2c9292cb7e786b2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_copy@
hs_bindgen_c2c9292cb7e786b2 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_c2c9292cb7e786b2 =
  RIP.fromFFIType hs_bindgen_c2c9292cb7e786b2_base

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
pixman_region_copy = hs_bindgen_c2c9292cb7e786b2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_intersect@
foreign import ccall safe "hs_bindgen_774e1593c708ce0d" hs_bindgen_774e1593c708ce0d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_intersect@
hs_bindgen_774e1593c708ce0d ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_774e1593c708ce0d =
  RIP.fromFFIType hs_bindgen_774e1593c708ce0d_base

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
pixman_region_intersect = hs_bindgen_774e1593c708ce0d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_union@
foreign import ccall safe "hs_bindgen_1c7a608bce48c043" hs_bindgen_1c7a608bce48c043_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_union@
hs_bindgen_1c7a608bce48c043 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_1c7a608bce48c043 =
  RIP.fromFFIType hs_bindgen_1c7a608bce48c043_base

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
pixman_region_union = hs_bindgen_1c7a608bce48c043

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_union_rect@
foreign import ccall safe "hs_bindgen_67e60231d18bd625" hs_bindgen_67e60231d18bd625_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_union_rect@
hs_bindgen_67e60231d18bd625 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_67e60231d18bd625 =
  RIP.fromFFIType hs_bindgen_67e60231d18bd625_base

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
  hs_bindgen_67e60231d18bd625

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_intersect_rect@
foreign import ccall safe "hs_bindgen_26ec9f19d5c2c490" hs_bindgen_26ec9f19d5c2c490_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_intersect_rect@
hs_bindgen_26ec9f19d5c2c490 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_26ec9f19d5c2c490 =
  RIP.fromFFIType hs_bindgen_26ec9f19d5c2c490_base

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
  hs_bindgen_26ec9f19d5c2c490

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_subtract@
foreign import ccall safe "hs_bindgen_29a314912369602d" hs_bindgen_29a314912369602d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_subtract@
hs_bindgen_29a314912369602d ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_29a314912369602d =
  RIP.fromFFIType hs_bindgen_29a314912369602d_base

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
pixman_region_subtract = hs_bindgen_29a314912369602d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_inverse@
foreign import ccall safe "hs_bindgen_e7531fc34eab3724" hs_bindgen_e7531fc34eab3724_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_inverse@
hs_bindgen_e7531fc34eab3724 ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_e7531fc34eab3724 =
  RIP.fromFFIType hs_bindgen_e7531fc34eab3724_base

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
pixman_region_inverse = hs_bindgen_e7531fc34eab3724

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_contains_point@
foreign import ccall safe "hs_bindgen_e7b47e7eb15ef57e" hs_bindgen_e7b47e7eb15ef57e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_contains_point@
hs_bindgen_e7b47e7eb15ef57e ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box16_t
  -> IO Pixman_bool_t
hs_bindgen_e7b47e7eb15ef57e =
  RIP.fromFFIType hs_bindgen_e7b47e7eb15ef57e_base

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
  hs_bindgen_e7b47e7eb15ef57e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_contains_rectangle@
foreign import ccall safe "hs_bindgen_f606a3d7b552476c" hs_bindgen_f606a3d7b552476c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_contains_rectangle@
hs_bindgen_f606a3d7b552476c ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO Pixman_region_overlap_t
hs_bindgen_f606a3d7b552476c =
  RIP.fromFFIType hs_bindgen_f606a3d7b552476c_base

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
  hs_bindgen_f606a3d7b552476c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_empty@
foreign import ccall safe "hs_bindgen_b0f37490ecd9ee73" hs_bindgen_b0f37490ecd9ee73_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_empty@
hs_bindgen_b0f37490ecd9ee73 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_b0f37490ecd9ee73 =
  RIP.fromFFIType hs_bindgen_b0f37490ecd9ee73_base

{-| __C declaration:__ @pixman_region_empty@

    __defined at:__ @pixman.h 585:25@

    __exported by:__ @pixman.h@
-}
pixman_region_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_empty = hs_bindgen_b0f37490ecd9ee73

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_not_empty@
foreign import ccall safe "hs_bindgen_bbc0bee268826d6a" hs_bindgen_bbc0bee268826d6a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_not_empty@
hs_bindgen_bbc0bee268826d6a ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_bbc0bee268826d6a =
  RIP.fromFFIType hs_bindgen_bbc0bee268826d6a_base

{-| __C declaration:__ @pixman_region_not_empty@

    __defined at:__ @pixman.h 588:25@

    __exported by:__ @pixman.h@
-}
pixman_region_not_empty ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_not_empty = hs_bindgen_bbc0bee268826d6a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_extents@
foreign import ccall safe "hs_bindgen_ada82281e2aecd40" hs_bindgen_ada82281e2aecd40_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_extents@
hs_bindgen_ada82281e2aecd40 ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_ada82281e2aecd40 =
  RIP.fromFFIType hs_bindgen_ada82281e2aecd40_base

{-| __C declaration:__ @pixman_region_extents@

    __defined at:__ @pixman.h 591:25@

    __exported by:__ @pixman.h@
-}
pixman_region_extents ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box16_t)
pixman_region_extents = hs_bindgen_ada82281e2aecd40

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_n_rects@
foreign import ccall safe "hs_bindgen_df9a8833cf1df53d" hs_bindgen_df9a8833cf1df53d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_n_rects@
hs_bindgen_df9a8833cf1df53d ::
     PtrConst.PtrConst Pixman_region16_t
  -> IO RIP.CInt
hs_bindgen_df9a8833cf1df53d =
  RIP.fromFFIType hs_bindgen_df9a8833cf1df53d_base

{-| __C declaration:__ @pixman_region_n_rects@

    __defined at:__ @pixman.h 594:25@

    __exported by:__ @pixman.h@
-}
pixman_region_n_rects ::
     PtrConst.PtrConst Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region_n_rects = hs_bindgen_df9a8833cf1df53d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_rectangles@
foreign import ccall safe "hs_bindgen_4c16896531d7eb47" hs_bindgen_4c16896531d7eb47_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_rectangles@
hs_bindgen_4c16896531d7eb47 ::
     PtrConst.PtrConst Pixman_region16_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box16_t)
hs_bindgen_4c16896531d7eb47 =
  RIP.fromFFIType hs_bindgen_4c16896531d7eb47_base

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
  hs_bindgen_4c16896531d7eb47

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_equal@
foreign import ccall safe "hs_bindgen_7db8fa6bdf8e87ab" hs_bindgen_7db8fa6bdf8e87ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_equal@
hs_bindgen_7db8fa6bdf8e87ab ::
     PtrConst.PtrConst Pixman_region16_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_7db8fa6bdf8e87ab =
  RIP.fromFFIType hs_bindgen_7db8fa6bdf8e87ab_base

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
pixman_region_equal = hs_bindgen_7db8fa6bdf8e87ab

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_selfcheck@
foreign import ccall safe "hs_bindgen_444f2082cae0aded" hs_bindgen_444f2082cae0aded_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_selfcheck@
hs_bindgen_444f2082cae0aded ::
     RIP.Ptr Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_444f2082cae0aded =
  RIP.fromFFIType hs_bindgen_444f2082cae0aded_base

{-| __C declaration:__ @pixman_region_selfcheck@

    __defined at:__ @pixman.h 605:25@

    __exported by:__ @pixman.h@
-}
pixman_region_selfcheck ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region_selfcheck = hs_bindgen_444f2082cae0aded

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_reset@
foreign import ccall safe "hs_bindgen_591f263bb01f42ed" hs_bindgen_591f263bb01f42ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_reset@
hs_bindgen_591f263bb01f42ed ::
     RIP.Ptr Pixman_region16_t
  -> PtrConst.PtrConst Pixman_box16_t
  -> IO ()
hs_bindgen_591f263bb01f42ed =
  RIP.fromFFIType hs_bindgen_591f263bb01f42ed_base

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
pixman_region_reset = hs_bindgen_591f263bb01f42ed

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_clear@
foreign import ccall safe "hs_bindgen_6193e97da278cea6" hs_bindgen_6193e97da278cea6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region_clear@
hs_bindgen_6193e97da278cea6 ::
     RIP.Ptr Pixman_region16_t
  -> IO ()
hs_bindgen_6193e97da278cea6 =
  RIP.fromFFIType hs_bindgen_6193e97da278cea6_base

{-| __C declaration:__ @pixman_region_clear@

    __defined at:__ @pixman.h 612:8@

    __exported by:__ @pixman.h@
-}
pixman_region_clear ::
     RIP.Ptr Pixman_region16_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region_clear = hs_bindgen_6193e97da278cea6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init@
foreign import ccall safe "hs_bindgen_5fc2efca25a63e58" hs_bindgen_5fc2efca25a63e58_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init@
hs_bindgen_5fc2efca25a63e58 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_5fc2efca25a63e58 =
  RIP.fromFFIType hs_bindgen_5fc2efca25a63e58_base

{-| __C declaration:__ @pixman_region32_init@

    __defined at:__ @pixman.h 646:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_init ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_init = hs_bindgen_5fc2efca25a63e58

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_rect@
foreign import ccall safe "hs_bindgen_1a343a083059f83b" hs_bindgen_1a343a083059f83b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_rect@
hs_bindgen_1a343a083059f83b ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_1a343a083059f83b =
  RIP.fromFFIType hs_bindgen_1a343a083059f83b_base

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
  hs_bindgen_1a343a083059f83b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_rects@
foreign import ccall safe "hs_bindgen_0931e2571d1a5341" hs_bindgen_0931e2571d1a5341_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_rects@
hs_bindgen_0931e2571d1a5341 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_0931e2571d1a5341 =
  RIP.fromFFIType hs_bindgen_0931e2571d1a5341_base

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
  hs_bindgen_0931e2571d1a5341

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_with_extents@
foreign import ccall safe "hs_bindgen_c874444d1c5b537c" hs_bindgen_c874444d1c5b537c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_with_extents@
hs_bindgen_c874444d1c5b537c ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_c874444d1c5b537c =
  RIP.fromFFIType hs_bindgen_c874444d1c5b537c_base

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
  hs_bindgen_c874444d1c5b537c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_from_image@
foreign import ccall safe "hs_bindgen_08cd19cdcad0f153" hs_bindgen_08cd19cdcad0f153_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_init_from_image@
hs_bindgen_08cd19cdcad0f153 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_08cd19cdcad0f153 =
  RIP.fromFFIType hs_bindgen_08cd19cdcad0f153_base

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
  hs_bindgen_08cd19cdcad0f153

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_fini@
foreign import ccall safe "hs_bindgen_91a838b7c5eee918" hs_bindgen_91a838b7c5eee918_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_fini@
hs_bindgen_91a838b7c5eee918 ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_91a838b7c5eee918 =
  RIP.fromFFIType hs_bindgen_91a838b7c5eee918_base

{-| __C declaration:__ @pixman_region32_fini@

    __defined at:__ @pixman.h 669:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_fini ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_fini = hs_bindgen_91a838b7c5eee918

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_translate@
foreign import ccall safe "hs_bindgen_f9cb1c138c4bb141" hs_bindgen_f9cb1c138c4bb141_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_translate@
hs_bindgen_f9cb1c138c4bb141 ::
     RIP.Ptr Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_f9cb1c138c4bb141 =
  RIP.fromFFIType hs_bindgen_f9cb1c138c4bb141_base

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
  hs_bindgen_f9cb1c138c4bb141

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_copy@
foreign import ccall safe "hs_bindgen_0243bad5d032c852" hs_bindgen_0243bad5d032c852_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_copy@
hs_bindgen_0243bad5d032c852 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_0243bad5d032c852 =
  RIP.fromFFIType hs_bindgen_0243bad5d032c852_base

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
pixman_region32_copy = hs_bindgen_0243bad5d032c852

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_intersect@
foreign import ccall safe "hs_bindgen_b91515270495af2c" hs_bindgen_b91515270495af2c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_intersect@
hs_bindgen_b91515270495af2c ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_b91515270495af2c =
  RIP.fromFFIType hs_bindgen_b91515270495af2c_base

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
  hs_bindgen_b91515270495af2c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_union@
foreign import ccall safe "hs_bindgen_37341c2e3deee7bb" hs_bindgen_37341c2e3deee7bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_union@
hs_bindgen_37341c2e3deee7bb ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_37341c2e3deee7bb =
  RIP.fromFFIType hs_bindgen_37341c2e3deee7bb_base

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
pixman_region32_union = hs_bindgen_37341c2e3deee7bb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_intersect_rect@
foreign import ccall safe "hs_bindgen_78659c32c8935b9e" hs_bindgen_78659c32c8935b9e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_intersect_rect@
hs_bindgen_78659c32c8935b9e ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_78659c32c8935b9e =
  RIP.fromFFIType hs_bindgen_78659c32c8935b9e_base

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
  hs_bindgen_78659c32c8935b9e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_union_rect@
foreign import ccall safe "hs_bindgen_221182b787ceda24" hs_bindgen_221182b787ceda24_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_union_rect@
hs_bindgen_221182b787ceda24 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_221182b787ceda24 =
  RIP.fromFFIType hs_bindgen_221182b787ceda24_base

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
  hs_bindgen_221182b787ceda24

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_subtract@
foreign import ccall safe "hs_bindgen_157cc5a08e80f9d6" hs_bindgen_157cc5a08e80f9d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_subtract@
hs_bindgen_157cc5a08e80f9d6 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_157cc5a08e80f9d6 =
  RIP.fromFFIType hs_bindgen_157cc5a08e80f9d6_base

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
  hs_bindgen_157cc5a08e80f9d6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_inverse@
foreign import ccall safe "hs_bindgen_1dd1fa1565214a25" hs_bindgen_1dd1fa1565214a25_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_inverse@
hs_bindgen_1dd1fa1565214a25 ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_1dd1fa1565214a25 =
  RIP.fromFFIType hs_bindgen_1dd1fa1565214a25_base

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
pixman_region32_inverse = hs_bindgen_1dd1fa1565214a25

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_contains_point@
foreign import ccall safe "hs_bindgen_f4c678c8e09e907f" hs_bindgen_f4c678c8e09e907f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_contains_point@
hs_bindgen_f4c678c8e09e907f ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_f4c678c8e09e907f =
  RIP.fromFFIType hs_bindgen_f4c678c8e09e907f_base

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
  hs_bindgen_f4c678c8e09e907f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_contains_rectangle@
foreign import ccall safe "hs_bindgen_662925f75d768726" hs_bindgen_662925f75d768726_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_contains_rectangle@
hs_bindgen_662925f75d768726 ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_region_overlap_t
hs_bindgen_662925f75d768726 =
  RIP.fromFFIType hs_bindgen_662925f75d768726_base

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
  hs_bindgen_662925f75d768726

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_empty@
foreign import ccall safe "hs_bindgen_3d6fdeb40e2556ef" hs_bindgen_3d6fdeb40e2556ef_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_empty@
hs_bindgen_3d6fdeb40e2556ef ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_3d6fdeb40e2556ef =
  RIP.fromFFIType hs_bindgen_3d6fdeb40e2556ef_base

{-| __C declaration:__ @pixman_region32_empty@

    __defined at:__ @pixman.h 729:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_empty = hs_bindgen_3d6fdeb40e2556ef

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_not_empty@
foreign import ccall safe "hs_bindgen_466b8184a14173a2" hs_bindgen_466b8184a14173a2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_not_empty@
hs_bindgen_466b8184a14173a2 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_466b8184a14173a2 =
  RIP.fromFFIType hs_bindgen_466b8184a14173a2_base

{-| __C declaration:__ @pixman_region32_not_empty@

    __defined at:__ @pixman.h 732:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_not_empty ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_not_empty =
  hs_bindgen_466b8184a14173a2

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_extents@
foreign import ccall safe "hs_bindgen_25e9ecefe5441dc4" hs_bindgen_25e9ecefe5441dc4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_extents@
hs_bindgen_25e9ecefe5441dc4 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_25e9ecefe5441dc4 =
  RIP.fromFFIType hs_bindgen_25e9ecefe5441dc4_base

{-| __C declaration:__ @pixman_region32_extents@

    __defined at:__ @pixman.h 735:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_extents ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box32_t)
pixman_region32_extents = hs_bindgen_25e9ecefe5441dc4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_n_rects@
foreign import ccall safe "hs_bindgen_3bd8daeca61a9fa7" hs_bindgen_3bd8daeca61a9fa7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_n_rects@
hs_bindgen_3bd8daeca61a9fa7 ::
     PtrConst.PtrConst Pixman_region32_t
  -> IO RIP.CInt
hs_bindgen_3bd8daeca61a9fa7 =
  RIP.fromFFIType hs_bindgen_3bd8daeca61a9fa7_base

{-| __C declaration:__ @pixman_region32_n_rects@

    __defined at:__ @pixman.h 738:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_n_rects ::
     PtrConst.PtrConst Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region32_n_rects = hs_bindgen_3bd8daeca61a9fa7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_rectangles@
foreign import ccall safe "hs_bindgen_568edafc82e6978f" hs_bindgen_568edafc82e6978f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_rectangles@
hs_bindgen_568edafc82e6978f ::
     PtrConst.PtrConst Pixman_region32_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box32_t)
hs_bindgen_568edafc82e6978f =
  RIP.fromFFIType hs_bindgen_568edafc82e6978f_base

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
  hs_bindgen_568edafc82e6978f

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_equal@
foreign import ccall safe "hs_bindgen_ec7c4d357ac72d30" hs_bindgen_ec7c4d357ac72d30_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_equal@
hs_bindgen_ec7c4d357ac72d30 ::
     PtrConst.PtrConst Pixman_region32_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_ec7c4d357ac72d30 =
  RIP.fromFFIType hs_bindgen_ec7c4d357ac72d30_base

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
pixman_region32_equal = hs_bindgen_ec7c4d357ac72d30

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_selfcheck@
foreign import ccall safe "hs_bindgen_5098ee5178372c21" hs_bindgen_5098ee5178372c21_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_selfcheck@
hs_bindgen_5098ee5178372c21 ::
     RIP.Ptr Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_5098ee5178372c21 =
  RIP.fromFFIType hs_bindgen_5098ee5178372c21_base

{-| __C declaration:__ @pixman_region32_selfcheck@

    __defined at:__ @pixman.h 749:25@

    __exported by:__ @pixman.h@
-}
pixman_region32_selfcheck ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region32_selfcheck =
  hs_bindgen_5098ee5178372c21

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_reset@
foreign import ccall safe "hs_bindgen_c3df885e4ea7cecb" hs_bindgen_c3df885e4ea7cecb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_reset@
hs_bindgen_c3df885e4ea7cecb ::
     RIP.Ptr Pixman_region32_t
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO ()
hs_bindgen_c3df885e4ea7cecb =
  RIP.fromFFIType hs_bindgen_c3df885e4ea7cecb_base

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
pixman_region32_reset = hs_bindgen_c3df885e4ea7cecb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_clear@
foreign import ccall safe "hs_bindgen_487a04d45f33ce1b" hs_bindgen_487a04d45f33ce1b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region32_clear@
hs_bindgen_487a04d45f33ce1b ::
     RIP.Ptr Pixman_region32_t
  -> IO ()
hs_bindgen_487a04d45f33ce1b =
  RIP.fromFFIType hs_bindgen_487a04d45f33ce1b_base

{-| __C declaration:__ @pixman_region32_clear@

    __defined at:__ @pixman.h 756:8@

    __exported by:__ @pixman.h@
-}
pixman_region32_clear ::
     RIP.Ptr Pixman_region32_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region32_clear = hs_bindgen_487a04d45f33ce1b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init@
foreign import ccall safe "hs_bindgen_1de336a3bb363477" hs_bindgen_1de336a3bb363477_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init@
hs_bindgen_1de336a3bb363477 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_1de336a3bb363477 =
  RIP.fromFFIType hs_bindgen_1de336a3bb363477_base

{-| __C declaration:__ @pixman_region64f_init@

    __defined at:__ @pixman.h 790:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_init ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_init = hs_bindgen_1de336a3bb363477

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rect@
foreign import ccall safe "hs_bindgen_99dd3e661a93e107" hs_bindgen_99dd3e661a93e107_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rect@
hs_bindgen_99dd3e661a93e107 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO ()
hs_bindgen_99dd3e661a93e107 =
  RIP.fromFFIType hs_bindgen_99dd3e661a93e107_base

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
  hs_bindgen_99dd3e661a93e107

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rectf@
foreign import ccall safe "hs_bindgen_39591a16e5bc0712" hs_bindgen_39591a16e5bc0712_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rectf@
hs_bindgen_39591a16e5bc0712 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_39591a16e5bc0712 =
  RIP.fromFFIType hs_bindgen_39591a16e5bc0712_base

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
  hs_bindgen_39591a16e5bc0712

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rects@
foreign import ccall safe "hs_bindgen_855be570da344e24" hs_bindgen_855be570da344e24_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_rects@
hs_bindgen_855be570da344e24 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_855be570da344e24 =
  RIP.fromFFIType hs_bindgen_855be570da344e24_base

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
  hs_bindgen_855be570da344e24

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_with_extents@
foreign import ccall safe "hs_bindgen_5e267002c03c5bbe" hs_bindgen_5e267002c03c5bbe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_with_extents@
hs_bindgen_5e267002c03c5bbe ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_5e267002c03c5bbe =
  RIP.fromFFIType hs_bindgen_5e267002c03c5bbe_base

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
  hs_bindgen_5e267002c03c5bbe

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_from_image@
foreign import ccall safe "hs_bindgen_4888a448d3e0bd9b" hs_bindgen_4888a448d3e0bd9b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_init_from_image@
hs_bindgen_4888a448d3e0bd9b ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.Ptr Pixman_image_t
  -> IO ()
hs_bindgen_4888a448d3e0bd9b =
  RIP.fromFFIType hs_bindgen_4888a448d3e0bd9b_base

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
  hs_bindgen_4888a448d3e0bd9b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_fini@
foreign import ccall safe "hs_bindgen_7661bfe5617be33c" hs_bindgen_7661bfe5617be33c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_fini@
hs_bindgen_7661bfe5617be33c ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_7661bfe5617be33c =
  RIP.fromFFIType hs_bindgen_7661bfe5617be33c_base

{-| __C declaration:__ @pixman_region64f_fini@

    __defined at:__ @pixman.h 820:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_fini ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_fini = hs_bindgen_7661bfe5617be33c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_translate@
foreign import ccall safe "hs_bindgen_e2df40317964d561" hs_bindgen_e2df40317964d561_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_translate@
hs_bindgen_e2df40317964d561 ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_e2df40317964d561 =
  RIP.fromFFIType hs_bindgen_e2df40317964d561_base

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
  hs_bindgen_e2df40317964d561

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_translatef@
foreign import ccall safe "hs_bindgen_f70f9439129cc50d" hs_bindgen_f70f9439129cc50d_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_translatef@
hs_bindgen_f70f9439129cc50d ::
     RIP.Ptr Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO ()
hs_bindgen_f70f9439129cc50d =
  RIP.fromFFIType hs_bindgen_f70f9439129cc50d_base

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
  hs_bindgen_f70f9439129cc50d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_copy@
foreign import ccall safe "hs_bindgen_7c951a158296184c" hs_bindgen_7c951a158296184c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_copy@
hs_bindgen_7c951a158296184c ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_7c951a158296184c =
  RIP.fromFFIType hs_bindgen_7c951a158296184c_base

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
pixman_region64f_copy = hs_bindgen_7c951a158296184c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect@
foreign import ccall safe "hs_bindgen_c73ea7f8911e77e6" hs_bindgen_c73ea7f8911e77e6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect@
hs_bindgen_c73ea7f8911e77e6 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_c73ea7f8911e77e6 =
  RIP.fromFFIType hs_bindgen_c73ea7f8911e77e6_base

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
  hs_bindgen_c73ea7f8911e77e6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_union@
foreign import ccall safe "hs_bindgen_604f6a1a57a967b3" hs_bindgen_604f6a1a57a967b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_union@
hs_bindgen_604f6a1a57a967b3 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_604f6a1a57a967b3 =
  RIP.fromFFIType hs_bindgen_604f6a1a57a967b3_base

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
pixman_region64f_union = hs_bindgen_604f6a1a57a967b3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rect@
foreign import ccall safe "hs_bindgen_b7349881c5ce0960" hs_bindgen_b7349881c5ce0960_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rect@
hs_bindgen_b7349881c5ce0960 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_b7349881c5ce0960 =
  RIP.fromFFIType hs_bindgen_b7349881c5ce0960_base

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
  hs_bindgen_b7349881c5ce0960

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rectf@
foreign import ccall safe "hs_bindgen_3d4628126a3e31e8" hs_bindgen_3d4628126a3e31e8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_intersect_rectf@
hs_bindgen_3d4628126a3e31e8 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_3d4628126a3e31e8 =
  RIP.fromFFIType hs_bindgen_3d4628126a3e31e8_base

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
  hs_bindgen_3d4628126a3e31e8

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rect@
foreign import ccall safe "hs_bindgen_8647041aaf02c575" hs_bindgen_8647041aaf02c575_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rect@
hs_bindgen_8647041aaf02c575 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CUInt
  -> RIP.CUInt
  -> IO Pixman_bool_t
hs_bindgen_8647041aaf02c575 =
  RIP.fromFFIType hs_bindgen_8647041aaf02c575_base

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
  hs_bindgen_8647041aaf02c575

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rectf@
foreign import ccall safe "hs_bindgen_35e9e5afa4639d37" hs_bindgen_35e9e5afa4639d37_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> Double
  -> Double
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_union_rectf@
hs_bindgen_35e9e5afa4639d37 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.CDouble
  -> IO Pixman_bool_t
hs_bindgen_35e9e5afa4639d37 =
  RIP.fromFFIType hs_bindgen_35e9e5afa4639d37_base

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
  hs_bindgen_35e9e5afa4639d37

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_subtract@
foreign import ccall safe "hs_bindgen_86fd8827e5c1f2da" hs_bindgen_86fd8827e5c1f2da_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_subtract@
hs_bindgen_86fd8827e5c1f2da ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_86fd8827e5c1f2da =
  RIP.fromFFIType hs_bindgen_86fd8827e5c1f2da_base

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
  hs_bindgen_86fd8827e5c1f2da

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_inverse@
foreign import ccall safe "hs_bindgen_f5ad7bb87a8f1c7c" hs_bindgen_f5ad7bb87a8f1c7c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_inverse@
hs_bindgen_f5ad7bb87a8f1c7c ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_f5ad7bb87a8f1c7c =
  RIP.fromFFIType hs_bindgen_f5ad7bb87a8f1c7c_base

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
  hs_bindgen_f5ad7bb87a8f1c7c

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_point@
foreign import ccall safe "hs_bindgen_967b8447084764a9" hs_bindgen_967b8447084764a9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_point@
hs_bindgen_967b8447084764a9 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_967b8447084764a9 =
  RIP.fromFFIType hs_bindgen_967b8447084764a9_base

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
  hs_bindgen_967b8447084764a9

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_pointf@
foreign import ccall safe "hs_bindgen_dbaff1ef0b97ca24" hs_bindgen_dbaff1ef0b97ca24_base ::
     RIP.Ptr RIP.Void
  -> Double
  -> Double
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_pointf@
hs_bindgen_dbaff1ef0b97ca24 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.CDouble
  -> RIP.CDouble
  -> RIP.Ptr Pixman_box64f_t
  -> IO Pixman_bool_t
hs_bindgen_dbaff1ef0b97ca24 =
  RIP.fromFFIType hs_bindgen_dbaff1ef0b97ca24_base

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
  hs_bindgen_dbaff1ef0b97ca24

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_rectangle@
foreign import ccall safe "hs_bindgen_d71fb68a593b4100" hs_bindgen_d71fb68a593b4100_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_contains_rectangle@
hs_bindgen_d71fb68a593b4100 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO Pixman_region_overlap_t
hs_bindgen_d71fb68a593b4100 =
  RIP.fromFFIType hs_bindgen_d71fb68a593b4100_base

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
  hs_bindgen_d71fb68a593b4100

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_empty@
foreign import ccall safe "hs_bindgen_73fe188dbcdc90d4" hs_bindgen_73fe188dbcdc90d4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_empty@
hs_bindgen_73fe188dbcdc90d4 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_73fe188dbcdc90d4 =
  RIP.fromFFIType hs_bindgen_73fe188dbcdc90d4_base

{-| __C declaration:__ @pixman_region64f_empty@

    __defined at:__ @pixman.h 907:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_empty = hs_bindgen_73fe188dbcdc90d4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_not_empty@
foreign import ccall safe "hs_bindgen_20eb4451ec84b0cc" hs_bindgen_20eb4451ec84b0cc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_not_empty@
hs_bindgen_20eb4451ec84b0cc ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_20eb4451ec84b0cc =
  RIP.fromFFIType hs_bindgen_20eb4451ec84b0cc_base

{-| __C declaration:__ @pixman_region64f_not_empty@

    __defined at:__ @pixman.h 910:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_not_empty ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_not_empty =
  hs_bindgen_20eb4451ec84b0cc

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_extents@
foreign import ccall safe "hs_bindgen_c4b94bf7d45b5363" hs_bindgen_c4b94bf7d45b5363_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_extents@
hs_bindgen_c4b94bf7d45b5363 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_c4b94bf7d45b5363 =
  RIP.fromFFIType hs_bindgen_c4b94bf7d45b5363_base

{-| __C declaration:__ @pixman_region64f_extents@

    __defined at:__ @pixman.h 913:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_extents ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO (RIP.Ptr Pixman_box64f_t)
pixman_region64f_extents =
  hs_bindgen_c4b94bf7d45b5363

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_n_rects@
foreign import ccall safe "hs_bindgen_58e663b5b715c1eb" hs_bindgen_58e663b5b715c1eb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_n_rects@
hs_bindgen_58e663b5b715c1eb ::
     PtrConst.PtrConst Pixman_region64f_t
  -> IO RIP.CInt
hs_bindgen_58e663b5b715c1eb =
  RIP.fromFFIType hs_bindgen_58e663b5b715c1eb_base

{-| __C declaration:__ @pixman_region64f_n_rects@

    __defined at:__ @pixman.h 916:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_n_rects ::
     PtrConst.PtrConst Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO RIP.CInt
pixman_region64f_n_rects =
  hs_bindgen_58e663b5b715c1eb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_rectangles@
foreign import ccall safe "hs_bindgen_62602acc910d1d5d" hs_bindgen_62602acc910d1d5d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_rectangles@
hs_bindgen_62602acc910d1d5d ::
     PtrConst.PtrConst Pixman_region64f_t
  -> RIP.Ptr RIP.CInt
  -> IO (RIP.Ptr Pixman_box64f_t)
hs_bindgen_62602acc910d1d5d =
  RIP.fromFFIType hs_bindgen_62602acc910d1d5d_base

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
  hs_bindgen_62602acc910d1d5d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_equal@
foreign import ccall safe "hs_bindgen_d4426339d0eed260" hs_bindgen_d4426339d0eed260_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_equal@
hs_bindgen_d4426339d0eed260 ::
     PtrConst.PtrConst Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_d4426339d0eed260 =
  RIP.fromFFIType hs_bindgen_d4426339d0eed260_base

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
pixman_region64f_equal = hs_bindgen_d4426339d0eed260

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_selfcheck@
foreign import ccall safe "hs_bindgen_2d484255e616b5a3" hs_bindgen_2d484255e616b5a3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_selfcheck@
hs_bindgen_2d484255e616b5a3 ::
     RIP.Ptr Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_2d484255e616b5a3 =
  RIP.fromFFIType hs_bindgen_2d484255e616b5a3_base

{-| __C declaration:__ @pixman_region64f_selfcheck@

    __defined at:__ @pixman.h 927:25@

    __exported by:__ @pixman.h@
-}
pixman_region64f_selfcheck ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO Pixman_bool_t
pixman_region64f_selfcheck =
  hs_bindgen_2d484255e616b5a3

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_reset@
foreign import ccall safe "hs_bindgen_5547ff5edf93bed6" hs_bindgen_5547ff5edf93bed6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_reset@
hs_bindgen_5547ff5edf93bed6 ::
     RIP.Ptr Pixman_region64f_t
  -> PtrConst.PtrConst Pixman_box64f_t
  -> IO ()
hs_bindgen_5547ff5edf93bed6 =
  RIP.fromFFIType hs_bindgen_5547ff5edf93bed6_base

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
pixman_region64f_reset = hs_bindgen_5547ff5edf93bed6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_clear@
foreign import ccall safe "hs_bindgen_30b92a1de3da8dd1" hs_bindgen_30b92a1de3da8dd1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_region64f_clear@
hs_bindgen_30b92a1de3da8dd1 ::
     RIP.Ptr Pixman_region64f_t
  -> IO ()
hs_bindgen_30b92a1de3da8dd1 =
  RIP.fromFFIType hs_bindgen_30b92a1de3da8dd1_base

{-| __C declaration:__ @pixman_region64f_clear@

    __defined at:__ @pixman.h 934:8@

    __exported by:__ @pixman.h@
-}
pixman_region64f_clear ::
     RIP.Ptr Pixman_region64f_t
     -- ^ __C declaration:__ @region@
  -> IO ()
pixman_region64f_clear = hs_bindgen_30b92a1de3da8dd1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_blt@
foreign import ccall safe "hs_bindgen_2a42a4d28ec5e048" hs_bindgen_2a42a4d28ec5e048_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_blt@
hs_bindgen_2a42a4d28ec5e048 ::
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
hs_bindgen_2a42a4d28ec5e048 =
  RIP.fromFFIType hs_bindgen_2a42a4d28ec5e048_base

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
pixman_blt = hs_bindgen_2a42a4d28ec5e048

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_fill@
foreign import ccall safe "hs_bindgen_2ee85d63352b8812" hs_bindgen_2ee85d63352b8812_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_fill@
hs_bindgen_2ee85d63352b8812 ::
     RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.CInt
  -> HsBindgen.Runtime.LibC.Word32
  -> IO Pixman_bool_t
hs_bindgen_2ee85d63352b8812 =
  RIP.fromFFIType hs_bindgen_2ee85d63352b8812_base

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
pixman_fill = hs_bindgen_2ee85d63352b8812

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_version@
foreign import ccall safe "hs_bindgen_c892d518727928f1" hs_bindgen_c892d518727928f1_base ::
     IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_version@
hs_bindgen_c892d518727928f1 :: IO RIP.CInt
hs_bindgen_c892d518727928f1 =
  RIP.fromFFIType hs_bindgen_c892d518727928f1_base

{-| __C declaration:__ @pixman_version@

    __defined at:__ @pixman.h 964:15@

    __exported by:__ @pixman.h@
-}
pixman_version :: IO RIP.CInt
pixman_version = hs_bindgen_c892d518727928f1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_version_string@
foreign import ccall safe "hs_bindgen_b3c8d482dadd5809" hs_bindgen_b3c8d482dadd5809_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_version_string@
hs_bindgen_b3c8d482dadd5809 :: IO (PtrConst.PtrConst RIP.CChar)
hs_bindgen_b3c8d482dadd5809 =
  RIP.fromFFIType hs_bindgen_b3c8d482dadd5809_base

{-| __C declaration:__ @pixman_version_string@

    __defined at:__ @pixman.h 967:15@

    __exported by:__ @pixman.h@
-}
pixman_version_string :: IO (PtrConst.PtrConst RIP.CChar)
pixman_version_string = hs_bindgen_b3c8d482dadd5809

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_format_supported_destination@
foreign import ccall safe "hs_bindgen_143a6cc98691319d" hs_bindgen_143a6cc98691319d_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_format_supported_destination@
hs_bindgen_143a6cc98691319d ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_143a6cc98691319d =
  RIP.fromFFIType hs_bindgen_143a6cc98691319d_base

{-| __C declaration:__ @pixman_format_supported_destination@

    __defined at:__ @pixman.h 1138:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_destination ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_destination =
  hs_bindgen_143a6cc98691319d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_format_supported_source@
foreign import ccall safe "hs_bindgen_1b4806e0a373b622" hs_bindgen_1b4806e0a373b622_base ::
     RIP.Word32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_format_supported_source@
hs_bindgen_1b4806e0a373b622 ::
     Pixman_format_code_t
  -> IO Pixman_bool_t
hs_bindgen_1b4806e0a373b622 =
  RIP.fromFFIType hs_bindgen_1b4806e0a373b622_base

{-| __C declaration:__ @pixman_format_supported_source@

    __defined at:__ @pixman.h 1141:15@

    __exported by:__ @pixman.h@
-}
pixman_format_supported_source ::
     Pixman_format_code_t
     -- ^ __C declaration:__ @format@
  -> IO Pixman_bool_t
pixman_format_supported_source =
  hs_bindgen_1b4806e0a373b622

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_solid_fill@
foreign import ccall safe "hs_bindgen_ed6d581a4cef66d7" hs_bindgen_ed6d581a4cef66d7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_solid_fill@
hs_bindgen_ed6d581a4cef66d7 ::
     PtrConst.PtrConst Pixman_color_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_ed6d581a4cef66d7 =
  RIP.fromFFIType hs_bindgen_ed6d581a4cef66d7_base

{-| __C declaration:__ @pixman_image_create_solid_fill@

    __defined at:__ @pixman.h 1145:17@

    __exported by:__ @pixman.h@
-}
pixman_image_create_solid_fill ::
     PtrConst.PtrConst Pixman_color_t
     -- ^ __C declaration:__ @color@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_create_solid_fill =
  hs_bindgen_ed6d581a4cef66d7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_linear_gradient@
foreign import ccall safe "hs_bindgen_d7536e5e8cc4cc4d" hs_bindgen_d7536e5e8cc4cc4d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_linear_gradient@
hs_bindgen_d7536e5e8cc4cc4d ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_d7536e5e8cc4cc4d =
  RIP.fromFFIType hs_bindgen_d7536e5e8cc4cc4d_base

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
  hs_bindgen_d7536e5e8cc4cc4d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_radial_gradient@
foreign import ccall safe "hs_bindgen_178a9d1e09cb209e" hs_bindgen_178a9d1e09cb209e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_radial_gradient@
hs_bindgen_178a9d1e09cb209e ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_178a9d1e09cb209e =
  RIP.fromFFIType hs_bindgen_178a9d1e09cb209e_base

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
  hs_bindgen_178a9d1e09cb209e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_conical_gradient@
foreign import ccall safe "hs_bindgen_ea9f8ab7b906288a" hs_bindgen_ea9f8ab7b906288a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_conical_gradient@
hs_bindgen_ea9f8ab7b906288a ::
     PtrConst.PtrConst Pixman_point_fixed_t
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_gradient_stop_t
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_ea9f8ab7b906288a =
  RIP.fromFFIType hs_bindgen_ea9f8ab7b906288a_base

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
  hs_bindgen_ea9f8ab7b906288a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_bits@
foreign import ccall safe "hs_bindgen_a9970a8acba1da3a" hs_bindgen_a9970a8acba1da3a_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_bits@
hs_bindgen_a9970a8acba1da3a ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_a9970a8acba1da3a =
  RIP.fromFFIType hs_bindgen_a9970a8acba1da3a_base

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
  hs_bindgen_a9970a8acba1da3a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_bits_no_clear@
foreign import ccall safe "hs_bindgen_5c901899cf14ee49" hs_bindgen_5c901899cf14ee49_base ::
     RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_create_bits_no_clear@
hs_bindgen_5c901899cf14ee49 ::
     Pixman_format_code_t
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr HsBindgen.Runtime.LibC.Word32
  -> RIP.CInt
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_5c901899cf14ee49 =
  RIP.fromFFIType hs_bindgen_5c901899cf14ee49_base

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
  hs_bindgen_5c901899cf14ee49

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_ref@
foreign import ccall safe "hs_bindgen_1ea5dca1e6123723" hs_bindgen_1ea5dca1e6123723_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_ref@
hs_bindgen_1ea5dca1e6123723 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr Pixman_image_t)
hs_bindgen_1ea5dca1e6123723 =
  RIP.fromFFIType hs_bindgen_1ea5dca1e6123723_base

{-| __C declaration:__ @pixman_image_ref@

    __defined at:__ @pixman.h 1183:17@

    __exported by:__ @pixman.h@
-}
pixman_image_ref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr Pixman_image_t)
pixman_image_ref = hs_bindgen_1ea5dca1e6123723

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_unref@
foreign import ccall safe "hs_bindgen_a3a3b7281b730b24" hs_bindgen_a3a3b7281b730b24_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_unref@
hs_bindgen_a3a3b7281b730b24 ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_a3a3b7281b730b24 =
  RIP.fromFFIType hs_bindgen_a3a3b7281b730b24_base

{-| __C declaration:__ @pixman_image_unref@

    __defined at:__ @pixman.h 1186:17@

    __exported by:__ @pixman.h@
-}
pixman_image_unref ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_unref = hs_bindgen_a3a3b7281b730b24

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_destroy_function@
foreign import ccall safe "hs_bindgen_85a8e439a7dff50d" hs_bindgen_85a8e439a7dff50d_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_destroy_function@
hs_bindgen_85a8e439a7dff50d ::
     RIP.Ptr Pixman_image_t
  -> Pixman_image_destroy_func_t
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_85a8e439a7dff50d =
  RIP.fromFFIType hs_bindgen_85a8e439a7dff50d_base

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
  hs_bindgen_85a8e439a7dff50d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_destroy_data@
foreign import ccall safe "hs_bindgen_0cb45bf17356286e" hs_bindgen_0cb45bf17356286e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_destroy_data@
hs_bindgen_0cb45bf17356286e ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0cb45bf17356286e =
  RIP.fromFFIType hs_bindgen_0cb45bf17356286e_base

{-| __C declaration:__ @pixman_image_get_destroy_data@

    __defined at:__ @pixman.h 1195:9@

    __exported by:__ @pixman.h@
-}
pixman_image_get_destroy_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr RIP.Void)
pixman_image_get_destroy_data =
  hs_bindgen_0cb45bf17356286e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region@
foreign import ccall safe "hs_bindgen_d237966b64c58a87" hs_bindgen_d237966b64c58a87_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region@
hs_bindgen_d237966b64c58a87 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region16_t
  -> IO Pixman_bool_t
hs_bindgen_d237966b64c58a87 =
  RIP.fromFFIType hs_bindgen_d237966b64c58a87_base

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
  hs_bindgen_d237966b64c58a87

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region32@
foreign import ccall safe "hs_bindgen_a0cdd7715bb25696" hs_bindgen_a0cdd7715bb25696_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region32@
hs_bindgen_a0cdd7715bb25696 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region32_t
  -> IO Pixman_bool_t
hs_bindgen_a0cdd7715bb25696 =
  RIP.fromFFIType hs_bindgen_a0cdd7715bb25696_base

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
  hs_bindgen_a0cdd7715bb25696

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region64f@
foreign import ccall safe "hs_bindgen_583535138fa58456" hs_bindgen_583535138fa58456_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_clip_region64f@
hs_bindgen_583535138fa58456 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_region64f_t
  -> IO Pixman_bool_t
hs_bindgen_583535138fa58456 =
  RIP.fromFFIType hs_bindgen_583535138fa58456_base

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
  hs_bindgen_583535138fa58456

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_has_client_clip@
foreign import ccall safe "hs_bindgen_111d5695e70608e5" hs_bindgen_111d5695e70608e5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_has_client_clip@
hs_bindgen_111d5695e70608e5 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_111d5695e70608e5 =
  RIP.fromFFIType hs_bindgen_111d5695e70608e5_base

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
  hs_bindgen_111d5695e70608e5

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_transform@
foreign import ccall safe "hs_bindgen_0c188b5779951a3e" hs_bindgen_0c188b5779951a3e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_transform@
hs_bindgen_0c188b5779951a3e ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_transform_t
  -> IO Pixman_bool_t
hs_bindgen_0c188b5779951a3e =
  RIP.fromFFIType hs_bindgen_0c188b5779951a3e_base

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
  hs_bindgen_0c188b5779951a3e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_repeat@
foreign import ccall safe "hs_bindgen_96d251c5df50b465" hs_bindgen_96d251c5df50b465_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_repeat@
hs_bindgen_96d251c5df50b465 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_repeat_t
  -> IO ()
hs_bindgen_96d251c5df50b465 =
  RIP.fromFFIType hs_bindgen_96d251c5df50b465_base

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
pixman_image_set_repeat = hs_bindgen_96d251c5df50b465

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_dither@
foreign import ccall safe "hs_bindgen_57c294a5636634dd" hs_bindgen_57c294a5636634dd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_dither@
hs_bindgen_57c294a5636634dd ::
     RIP.Ptr Pixman_image_t
  -> Pixman_dither_t
  -> IO ()
hs_bindgen_57c294a5636634dd =
  RIP.fromFFIType hs_bindgen_57c294a5636634dd_base

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
pixman_image_set_dither = hs_bindgen_57c294a5636634dd

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_dither_offset@
foreign import ccall safe "hs_bindgen_ec95184816c7fa52" hs_bindgen_ec95184816c7fa52_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_dither_offset@
hs_bindgen_ec95184816c7fa52 ::
     RIP.Ptr Pixman_image_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_ec95184816c7fa52 =
  RIP.fromFFIType hs_bindgen_ec95184816c7fa52_base

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
  hs_bindgen_ec95184816c7fa52

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_filter@
foreign import ccall safe "hs_bindgen_45d5bdda00957728" hs_bindgen_45d5bdda00957728_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_filter@
hs_bindgen_45d5bdda00957728 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_filter_t
  -> PtrConst.PtrConst Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_bool_t
hs_bindgen_45d5bdda00957728 =
  RIP.fromFFIType hs_bindgen_45d5bdda00957728_base

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
pixman_image_set_filter = hs_bindgen_45d5bdda00957728

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_source_clipping@
foreign import ccall safe "hs_bindgen_364fbf029efdb63e" hs_bindgen_364fbf029efdb63e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_source_clipping@
hs_bindgen_364fbf029efdb63e ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_364fbf029efdb63e =
  RIP.fromFFIType hs_bindgen_364fbf029efdb63e_base

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
  hs_bindgen_364fbf029efdb63e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_alpha_map@
foreign import ccall safe "hs_bindgen_88920ef8720b9915" hs_bindgen_88920ef8720b9915_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_alpha_map@
hs_bindgen_88920ef8720b9915 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> IO ()
hs_bindgen_88920ef8720b9915 =
  RIP.fromFFIType hs_bindgen_88920ef8720b9915_base

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
  hs_bindgen_88920ef8720b9915

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_component_alpha@
foreign import ccall safe "hs_bindgen_0188c1cc1b9e6dc7" hs_bindgen_0188c1cc1b9e6dc7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_component_alpha@
hs_bindgen_0188c1cc1b9e6dc7 ::
     RIP.Ptr Pixman_image_t
  -> Pixman_bool_t
  -> IO ()
hs_bindgen_0188c1cc1b9e6dc7 =
  RIP.fromFFIType hs_bindgen_0188c1cc1b9e6dc7_base

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
  hs_bindgen_0188c1cc1b9e6dc7

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_component_alpha@
foreign import ccall safe "hs_bindgen_c79972218f3059aa" hs_bindgen_c79972218f3059aa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_component_alpha@
hs_bindgen_c79972218f3059aa ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_bool_t
hs_bindgen_c79972218f3059aa =
  RIP.fromFFIType hs_bindgen_c79972218f3059aa_base

{-| __C declaration:__ @pixman_image_get_component_alpha@

    __defined at:__ @pixman.h 1252:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_component_alpha ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_bool_t
pixman_image_get_component_alpha =
  hs_bindgen_c79972218f3059aa

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_accessors@
foreign import ccall safe "hs_bindgen_9aa495d881875aef" hs_bindgen_9aa495d881875aef_base ::
     RIP.Ptr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> RIP.FunPtr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_accessors@
hs_bindgen_9aa495d881875aef ::
     RIP.Ptr Pixman_image_t
  -> Pixman_read_memory_func_t
  -> Pixman_write_memory_func_t
  -> IO ()
hs_bindgen_9aa495d881875aef =
  RIP.fromFFIType hs_bindgen_9aa495d881875aef_base

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
  hs_bindgen_9aa495d881875aef

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_indexed@
foreign import ccall safe "hs_bindgen_af55c5ad3b6cfe8a" hs_bindgen_af55c5ad3b6cfe8a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_set_indexed@
hs_bindgen_af55c5ad3b6cfe8a ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_indexed_t
  -> IO ()
hs_bindgen_af55c5ad3b6cfe8a =
  RIP.fromFFIType hs_bindgen_af55c5ad3b6cfe8a_base

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
  hs_bindgen_af55c5ad3b6cfe8a

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_data@
foreign import ccall safe "hs_bindgen_e6e5205141988527" hs_bindgen_e6e5205141988527_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_data@
hs_bindgen_e6e5205141988527 ::
     RIP.Ptr Pixman_image_t
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
hs_bindgen_e6e5205141988527 =
  RIP.fromFFIType hs_bindgen_e6e5205141988527_base

{-| __C declaration:__ @pixman_image_get_data@

    __defined at:__ @pixman.h 1264:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_data ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO (RIP.Ptr HsBindgen.Runtime.LibC.Word32)
pixman_image_get_data = hs_bindgen_e6e5205141988527

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_width@
foreign import ccall safe "hs_bindgen_c0c3055f529cb306" hs_bindgen_c0c3055f529cb306_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_width@
hs_bindgen_c0c3055f529cb306 ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_c0c3055f529cb306 =
  RIP.fromFFIType hs_bindgen_c0c3055f529cb306_base

{-| __C declaration:__ @pixman_image_get_width@

    __defined at:__ @pixman.h 1267:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_width ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_width = hs_bindgen_c0c3055f529cb306

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_height@
foreign import ccall safe "hs_bindgen_fffff32f1768196e" hs_bindgen_fffff32f1768196e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_height@
hs_bindgen_fffff32f1768196e ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_fffff32f1768196e =
  RIP.fromFFIType hs_bindgen_fffff32f1768196e_base

{-| __C declaration:__ @pixman_image_get_height@

    __defined at:__ @pixman.h 1270:17@

    __exported by:__ @pixman.h@
-}
pixman_image_get_height ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_height = hs_bindgen_fffff32f1768196e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_stride@
foreign import ccall safe "hs_bindgen_0299178be7aafe6b" hs_bindgen_0299178be7aafe6b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_stride@
hs_bindgen_0299178be7aafe6b ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_0299178be7aafe6b =
  RIP.fromFFIType hs_bindgen_0299178be7aafe6b_base

{-| __C declaration:__ @pixman_image_get_stride@

    __defined at:__ @pixman.h 1273:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_stride ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_stride = hs_bindgen_0299178be7aafe6b

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_depth@
foreign import ccall safe "hs_bindgen_72bbe8405b76230e" hs_bindgen_72bbe8405b76230e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_depth@
hs_bindgen_72bbe8405b76230e ::
     RIP.Ptr Pixman_image_t
  -> IO RIP.CInt
hs_bindgen_72bbe8405b76230e =
  RIP.fromFFIType hs_bindgen_72bbe8405b76230e_base

{-| __C declaration:__ @pixman_image_get_depth@

    __defined at:__ @pixman.h 1276:6@

    __exported by:__ @pixman.h@
-}
pixman_image_get_depth ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO RIP.CInt
pixman_image_get_depth = hs_bindgen_72bbe8405b76230e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_format@
foreign import ccall safe "hs_bindgen_2fbb56dff385a34d" hs_bindgen_2fbb56dff385a34d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_get_format@
hs_bindgen_2fbb56dff385a34d ::
     RIP.Ptr Pixman_image_t
  -> IO Pixman_format_code_t
hs_bindgen_2fbb56dff385a34d =
  RIP.fromFFIType hs_bindgen_2fbb56dff385a34d_base

{-| __C declaration:__ @pixman_image_get_format@

    __defined at:__ @pixman.h 1279:22@

    __exported by:__ @pixman.h@
-}
pixman_image_get_format ::
     RIP.Ptr Pixman_image_t
     -- ^ __C declaration:__ @image@
  -> IO Pixman_format_code_t
pixman_image_get_format = hs_bindgen_2fbb56dff385a34d

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_filter_create_separable_convolution@
foreign import ccall safe "hs_bindgen_051cf908dd37bff1" hs_bindgen_051cf908dd37bff1_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_filter_create_separable_convolution@
hs_bindgen_051cf908dd37bff1 ::
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
hs_bindgen_051cf908dd37bff1 =
  RIP.fromFFIType hs_bindgen_051cf908dd37bff1_base

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
  hs_bindgen_051cf908dd37bff1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_fill_rectangles@
foreign import ccall safe "hs_bindgen_65ab881d0fe7a4e4" hs_bindgen_65ab881d0fe7a4e4_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_fill_rectangles@
hs_bindgen_65ab881d0fe7a4e4 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_rectangle16_t
  -> IO Pixman_bool_t
hs_bindgen_65ab881d0fe7a4e4 =
  RIP.fromFFIType hs_bindgen_65ab881d0fe7a4e4_base

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
  hs_bindgen_65ab881d0fe7a4e4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_fill_boxes@
foreign import ccall safe "hs_bindgen_74288429ecf3f5f4" hs_bindgen_74288429ecf3f5f4_base ::
     RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_fill_boxes@
hs_bindgen_74288429ecf3f5f4 ::
     Pixman_op_t
  -> RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_color_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_box32_t
  -> IO Pixman_bool_t
hs_bindgen_74288429ecf3f5f4 =
  RIP.fromFFIType hs_bindgen_74288429ecf3f5f4_base

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
pixman_image_fill_boxes = hs_bindgen_74288429ecf3f5f4

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_compute_composite_region@
foreign import ccall safe "hs_bindgen_7b3e1a77e7062e82" hs_bindgen_7b3e1a77e7062e82_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_compute_composite_region@
hs_bindgen_7b3e1a77e7062e82 ::
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
hs_bindgen_7b3e1a77e7062e82 =
  RIP.fromFFIType hs_bindgen_7b3e1a77e7062e82_base

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
  hs_bindgen_7b3e1a77e7062e82

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_composite@
foreign import ccall safe "hs_bindgen_ac0615770d162876" hs_bindgen_ac0615770d162876_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_composite@
hs_bindgen_ac0615770d162876 ::
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
hs_bindgen_ac0615770d162876 =
  RIP.fromFFIType hs_bindgen_ac0615770d162876_base

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
pixman_image_composite = hs_bindgen_ac0615770d162876

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_composite32@
foreign import ccall safe "hs_bindgen_43328f41d70c40b1" hs_bindgen_43328f41d70c40b1_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_composite32@
hs_bindgen_43328f41d70c40b1 ::
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
hs_bindgen_43328f41d70c40b1 =
  RIP.fromFFIType hs_bindgen_43328f41d70c40b1_base

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
  hs_bindgen_43328f41d70c40b1

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_composite64f@
foreign import ccall safe "hs_bindgen_388e6bc773a55108" hs_bindgen_388e6bc773a55108_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_image_composite64f@
hs_bindgen_388e6bc773a55108 ::
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
hs_bindgen_388e6bc773a55108 =
  RIP.fromFFIType hs_bindgen_388e6bc773a55108_base

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
  hs_bindgen_388e6bc773a55108

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_disable_out_of_bounds_workaround@
foreign import ccall safe "hs_bindgen_f0a83e38ba4ead92" hs_bindgen_f0a83e38ba4ead92_base ::
     IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_disable_out_of_bounds_workaround@
hs_bindgen_f0a83e38ba4ead92 :: IO ()
hs_bindgen_f0a83e38ba4ead92 =
  RIP.fromFFIType hs_bindgen_f0a83e38ba4ead92_base

{-| __C declaration:__ @pixman_disable_out_of_bounds_workaround@

    __defined at:__ @pixman.h 1399:6@

    __exported by:__ @pixman.h@
-}
pixman_disable_out_of_bounds_workaround :: IO ()
pixman_disable_out_of_bounds_workaround =
  hs_bindgen_f0a83e38ba4ead92

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_create@
foreign import ccall safe "hs_bindgen_03b63d516fafc127" hs_bindgen_03b63d516fafc127_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_create@
hs_bindgen_03b63d516fafc127 :: IO (RIP.Ptr Pixman_glyph_cache_t)
hs_bindgen_03b63d516fafc127 =
  RIP.fromFFIType hs_bindgen_03b63d516fafc127_base

{-| __C declaration:__ @pixman_glyph_cache_create@

    __defined at:__ @pixman.h 1412:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_create :: IO (RIP.Ptr Pixman_glyph_cache_t)
pixman_glyph_cache_create =
  hs_bindgen_03b63d516fafc127

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_destroy@
foreign import ccall safe "hs_bindgen_e3a7829f4d58d262" hs_bindgen_e3a7829f4d58d262_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_destroy@
hs_bindgen_e3a7829f4d58d262 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_e3a7829f4d58d262 =
  RIP.fromFFIType hs_bindgen_e3a7829f4d58d262_base

{-| __C declaration:__ @pixman_glyph_cache_destroy@

    __defined at:__ @pixman.h 1415:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_destroy ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_destroy =
  hs_bindgen_e3a7829f4d58d262

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_freeze@
foreign import ccall safe "hs_bindgen_b3198b3dec3f8129" hs_bindgen_b3198b3dec3f8129_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_freeze@
hs_bindgen_b3198b3dec3f8129 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_b3198b3dec3f8129 =
  RIP.fromFFIType hs_bindgen_b3198b3dec3f8129_base

{-| __C declaration:__ @pixman_glyph_cache_freeze@

    __defined at:__ @pixman.h 1418:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_freeze ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_freeze =
  hs_bindgen_b3198b3dec3f8129

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_thaw@
foreign import ccall safe "hs_bindgen_c5116d1c2a06a2eb" hs_bindgen_c5116d1c2a06a2eb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_thaw@
hs_bindgen_c5116d1c2a06a2eb ::
     RIP.Ptr Pixman_glyph_cache_t
  -> IO ()
hs_bindgen_c5116d1c2a06a2eb =
  RIP.fromFFIType hs_bindgen_c5116d1c2a06a2eb_base

{-| __C declaration:__ @pixman_glyph_cache_thaw@

    __defined at:__ @pixman.h 1421:23@

    __exported by:__ @pixman.h@
-}
pixman_glyph_cache_thaw ::
     RIP.Ptr Pixman_glyph_cache_t
     -- ^ __C declaration:__ @cache@
  -> IO ()
pixman_glyph_cache_thaw = hs_bindgen_c5116d1c2a06a2eb

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_lookup@
foreign import ccall safe "hs_bindgen_5598a53bcd3abc99" hs_bindgen_5598a53bcd3abc99_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_lookup@
hs_bindgen_5598a53bcd3abc99 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_5598a53bcd3abc99 =
  RIP.fromFFIType hs_bindgen_5598a53bcd3abc99_base

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
  hs_bindgen_5598a53bcd3abc99

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_insert@
foreign import ccall safe "hs_bindgen_8367c902bfaba914" hs_bindgen_8367c902bfaba914_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_insert@
hs_bindgen_8367c902bfaba914 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.CInt
  -> RIP.CInt
  -> RIP.Ptr Pixman_image_t
  -> IO (PtrConst.PtrConst RIP.Void)
hs_bindgen_8367c902bfaba914 =
  RIP.fromFFIType hs_bindgen_8367c902bfaba914_base

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
  hs_bindgen_8367c902bfaba914

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_remove@
foreign import ccall safe "hs_bindgen_e2a1f08f541484f0" hs_bindgen_e2a1f08f541484f0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_cache_remove@
hs_bindgen_e2a1f08f541484f0 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e2a1f08f541484f0 =
  RIP.fromFFIType hs_bindgen_e2a1f08f541484f0_base

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
  hs_bindgen_e2a1f08f541484f0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_get_extents@
foreign import ccall safe "hs_bindgen_47fc9b9c8b9db326" hs_bindgen_47fc9b9c8b9db326_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_get_extents@
hs_bindgen_47fc9b9c8b9db326 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> RIP.Ptr Pixman_glyph_t
  -> RIP.Ptr Pixman_box32_t
  -> IO ()
hs_bindgen_47fc9b9c8b9db326 =
  RIP.fromFFIType hs_bindgen_47fc9b9c8b9db326_base

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
  hs_bindgen_47fc9b9c8b9db326

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_get_mask_format@
foreign import ccall safe "hs_bindgen_8b577c79e1cded64" hs_bindgen_8b577c79e1cded64_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_glyph_get_mask_format@
hs_bindgen_8b577c79e1cded64 ::
     RIP.Ptr Pixman_glyph_cache_t
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_glyph_t
  -> IO Pixman_format_code_t
hs_bindgen_8b577c79e1cded64 =
  RIP.fromFFIType hs_bindgen_8b577c79e1cded64_base

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
  hs_bindgen_8b577c79e1cded64

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs@
foreign import ccall safe "hs_bindgen_c02695c96b341b01" hs_bindgen_c02695c96b341b01_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs@
hs_bindgen_c02695c96b341b01 ::
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
hs_bindgen_c02695c96b341b01 =
  RIP.fromFFIType hs_bindgen_c02695c96b341b01_base

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
pixman_composite_glyphs = hs_bindgen_c02695c96b341b01

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs_no_mask@
foreign import ccall safe "hs_bindgen_0def6df8738043b6" hs_bindgen_0def6df8738043b6_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_glyphs_no_mask@
hs_bindgen_0def6df8738043b6 ::
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
hs_bindgen_0def6df8738043b6 =
  RIP.fromFFIType hs_bindgen_0def6df8738043b6_base

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
  hs_bindgen_0def6df8738043b6

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_sample_ceil_y@
foreign import ccall safe "hs_bindgen_7451f911c6bd1262" hs_bindgen_7451f911c6bd1262_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_sample_ceil_y@
hs_bindgen_7451f911c6bd1262 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_7451f911c6bd1262 =
  RIP.fromFFIType hs_bindgen_7451f911c6bd1262_base

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
pixman_sample_ceil_y = hs_bindgen_7451f911c6bd1262

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_sample_floor_y@
foreign import ccall safe "hs_bindgen_68e556c8cdf01971" hs_bindgen_68e556c8cdf01971_base ::
     RIP.Int32
  -> RIP.Int32
  -> IO RIP.Int32

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_sample_floor_y@
hs_bindgen_68e556c8cdf01971 ::
     Pixman_fixed_t
  -> RIP.CInt
  -> IO Pixman_fixed_t
hs_bindgen_68e556c8cdf01971 =
  RIP.fromFFIType hs_bindgen_68e556c8cdf01971_base

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
pixman_sample_floor_y = hs_bindgen_68e556c8cdf01971

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_edge_step@
foreign import ccall safe "hs_bindgen_ee84b0cf6cb50bbe" hs_bindgen_ee84b0cf6cb50bbe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_edge_step@
hs_bindgen_ee84b0cf6cb50bbe ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> IO ()
hs_bindgen_ee84b0cf6cb50bbe =
  RIP.fromFFIType hs_bindgen_ee84b0cf6cb50bbe_base

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
pixman_edge_step = hs_bindgen_ee84b0cf6cb50bbe

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_edge_init@
foreign import ccall safe "hs_bindgen_ad165075d732944e" hs_bindgen_ad165075d732944e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_edge_init@
hs_bindgen_ad165075d732944e ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_ad165075d732944e =
  RIP.fromFFIType hs_bindgen_ad165075d732944e_base

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
pixman_edge_init = hs_bindgen_ad165075d732944e

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_line_fixed_edge_init@
foreign import ccall safe "hs_bindgen_031ea42b10d99928" hs_bindgen_031ea42b10d99928_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_line_fixed_edge_init@
hs_bindgen_031ea42b10d99928 ::
     RIP.Ptr Pixman_edge_t
  -> RIP.CInt
  -> Pixman_fixed_t
  -> PtrConst.PtrConst Pixman_line_fixed_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_031ea42b10d99928 =
  RIP.fromFFIType hs_bindgen_031ea42b10d99928_base

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
  hs_bindgen_031ea42b10d99928

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_rasterize_edges@
foreign import ccall safe "hs_bindgen_6dc7df16e66de513" hs_bindgen_6dc7df16e66de513_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_rasterize_edges@
hs_bindgen_6dc7df16e66de513 ::
     RIP.Ptr Pixman_image_t
  -> RIP.Ptr Pixman_edge_t
  -> RIP.Ptr Pixman_edge_t
  -> Pixman_fixed_t
  -> Pixman_fixed_t
  -> IO ()
hs_bindgen_6dc7df16e66de513 =
  RIP.fromFFIType hs_bindgen_6dc7df16e66de513_base

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
pixman_rasterize_edges = hs_bindgen_6dc7df16e66de513

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_add_traps@
foreign import ccall safe "hs_bindgen_a769199f93cec077" hs_bindgen_a769199f93cec077_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_add_traps@
hs_bindgen_a769199f93cec077 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trap_t
  -> IO ()
hs_bindgen_a769199f93cec077 =
  RIP.fromFFIType hs_bindgen_a769199f93cec077_base

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
pixman_add_traps = hs_bindgen_a769199f93cec077

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_add_trapezoids@
foreign import ccall safe "hs_bindgen_ad4702527062e763" hs_bindgen_ad4702527062e763_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int16
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_add_trapezoids@
hs_bindgen_ad4702527062e763 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int16
  -> RIP.CInt
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> IO ()
hs_bindgen_ad4702527062e763 =
  RIP.fromFFIType hs_bindgen_ad4702527062e763_base

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
pixman_add_trapezoids = hs_bindgen_ad4702527062e763

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_rasterize_trapezoid@
foreign import ccall safe "hs_bindgen_6d27f34a9eb01b90" hs_bindgen_6d27f34a9eb01b90_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_rasterize_trapezoid@
hs_bindgen_6d27f34a9eb01b90 ::
     RIP.Ptr Pixman_image_t
  -> PtrConst.PtrConst Pixman_trapezoid_t
  -> RIP.CInt
  -> RIP.CInt
  -> IO ()
hs_bindgen_6d27f34a9eb01b90 =
  RIP.fromFFIType hs_bindgen_6d27f34a9eb01b90_base

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
  hs_bindgen_6d27f34a9eb01b90

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_trapezoids@
foreign import ccall safe "hs_bindgen_08b95ef7abc45525" hs_bindgen_08b95ef7abc45525_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_trapezoids@
hs_bindgen_08b95ef7abc45525 ::
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
hs_bindgen_08b95ef7abc45525 =
  RIP.fromFFIType hs_bindgen_08b95ef7abc45525_base

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
  hs_bindgen_08b95ef7abc45525

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_triangles@
foreign import ccall safe "hs_bindgen_eefa401258637ce0" hs_bindgen_eefa401258637ce0_base ::
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

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_composite_triangles@
hs_bindgen_eefa401258637ce0 ::
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
hs_bindgen_eefa401258637ce0 =
  RIP.fromFFIType hs_bindgen_eefa401258637ce0_base

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
  hs_bindgen_eefa401258637ce0

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_add_triangles@
foreign import ccall safe "hs_bindgen_1742f42dbcd26ae7" hs_bindgen_1742f42dbcd26ae7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_pixman_Bindings.Pixman.Generated_Safe_pixman_add_triangles@
hs_bindgen_1742f42dbcd26ae7 ::
     RIP.Ptr Pixman_image_t
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> RIP.CInt
  -> PtrConst.PtrConst Pixman_triangle_t
  -> IO ()
hs_bindgen_1742f42dbcd26ae7 =
  RIP.fromFFIType hs_bindgen_1742f42dbcd26ae7_base

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
pixman_add_triangles = hs_bindgen_1742f42dbcd26ae7
