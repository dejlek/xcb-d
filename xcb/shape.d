/*
 * This file generated automatically from shape.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Shape_API XCB Shape API
 * @brief Shape XCB Protocol Implementation.
 * @{
 **/

module std.c.xcb.shape;

import std.c.xcb.xcb;
import std.c.xcb.xproto;

const int XCB_SHAPE_MAJOR_VERSION = 1;
const int XCB_SHAPE_MINOR_VERSION = 1;
  
extern(C) xcb_extension_t xcb_shape_id;

alias ubyte xcb_shape_op_t;

/**
 * @brief xcb_shape_op_iterator_t
 **/
struct xcb_shape_op_iterator_t {
    xcb_shape_op_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

alias ubyte xcb_shape_kind_t;

/**
 * @brief xcb_shape_kind_iterator_t
 **/
struct xcb_shape_kind_iterator_t {
    xcb_shape_kind_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

enum XcbShapeSO {
    SET,
    UNION,
    INTERSECT,
    SUBTRACT,
    INVERT
}

enum XcbShapeSK {
    BOUNDING,
    CLIP,
    INPUT
}

/** Opcode for xcb_shape_notify. */
const ubyte XCB_SHAPE_NOTIFY = 0;

/**
 * @brief xcb_shape_notify_event_t
 **/
struct xcb_shape_notify_event_t {
    ubyte            response_type; /**<  */
    xcb_shape_kind_t shape_kind; /**<  */
    ushort           sequence; /**<  */
    xcb_window_t     affected_window; /**<  */
    short            extents_x; /**<  */
    short            extents_y; /**<  */
    ushort           extents_width; /**<  */
    ushort           extents_height; /**<  */
    xcb_timestamp_t  server_time; /**<  */
    ubyte            shaped; /**<  */
    ubyte            pad0[11]; /**<  */
}

/**
 * @brief xcb_shape_query_version_cookie_t
 **/
struct xcb_shape_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_shape_query_version. */
const ubyte XCB_SHAPE_QUERY_VERSION = 0;

/**
 * @brief xcb_shape_query_version_request_t
 **/
struct xcb_shape_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_shape_query_version_reply_t
 **/
struct xcb_shape_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
}

/** Opcode for xcb_shape_rectangles. */
const ubyte XCB_SHAPE_RECTANGLES = 1;

/**
 * @brief xcb_shape_rectangles_request_t
 **/
struct xcb_shape_rectangles_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_shape_op_t   operation; /**<  */
    xcb_shape_kind_t destination_kind; /**<  */
    ubyte            ordering; /**<  */
    ubyte            pad0; /**<  */
    xcb_window_t     destination_window; /**<  */
    short            x_offset; /**<  */
    short            y_offset; /**<  */
}

/** Opcode for xcb_shape_mask. */
const ubyte XCB_SHAPE_MASK = 2;

/**
 * @brief xcb_shape_mask_request_t
 **/
struct xcb_shape_mask_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_shape_op_t   operation; /**<  */
    xcb_shape_kind_t destination_kind; /**<  */
    ubyte            pad0[2]; /**<  */
    xcb_window_t     destination_window; /**<  */
    short            x_offset; /**<  */
    short            y_offset; /**<  */
    xcb_pixmap_t     source_bitmap; /**<  */
}

/** Opcode for xcb_shape_combine. */
const ubyte XCB_SHAPE_COMBINE = 3;

/**
 * @brief xcb_shape_combine_request_t
 **/
struct xcb_shape_combine_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_shape_op_t   operation; /**<  */
    xcb_shape_kind_t destination_kind; /**<  */
    xcb_shape_kind_t source_kind; /**<  */
    ubyte            pad0; /**<  */
    xcb_window_t     destination_window; /**<  */
    short            x_offset; /**<  */
    short            y_offset; /**<  */
    xcb_window_t     source_window; /**<  */
}

/** Opcode for xcb_shape_offset. */
const ubyte XCB_SHAPE_OFFSET = 4;

/**
 * @brief xcb_shape_offset_request_t
 **/
struct xcb_shape_offset_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_shape_kind_t destination_kind; /**<  */
    ubyte            pad0[3]; /**<  */
    xcb_window_t     destination_window; /**<  */
    short            x_offset; /**<  */
    short            y_offset; /**<  */
}

/**
 * @brief xcb_shape_query_extents_cookie_t
 **/
struct xcb_shape_query_extents_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_shape_query_extents. */
const ubyte XCB_SHAPE_QUERY_EXTENTS = 5;

/**
 * @brief xcb_shape_query_extents_request_t
 **/
struct xcb_shape_query_extents_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t destination_window; /**<  */
}

/**
 * @brief xcb_shape_query_extents_reply_t
 **/
struct xcb_shape_query_extents_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  bounding_shaped; /**<  */
    ubyte  clip_shaped; /**<  */
    ubyte  pad1[2]; /**<  */
    short  bounding_shape_extents_x; /**<  */
    short  bounding_shape_extents_y; /**<  */
    ushort bounding_shape_extents_width; /**<  */
    ushort bounding_shape_extents_height; /**<  */
    short  clip_shape_extents_x; /**<  */
    short  clip_shape_extents_y; /**<  */
    ushort clip_shape_extents_width; /**<  */
    ushort clip_shape_extents_height; /**<  */
}

/** Opcode for xcb_shape_select_input. */
const ubyte XCB_SHAPE_SELECT_INPUT = 6;

/**
 * @brief xcb_shape_select_input_request_t
 **/
struct xcb_shape_select_input_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t destination_window; /**<  */
    ubyte        enable; /**<  */
    ubyte        pad0[3]; /**<  */
}

/**
 * @brief xcb_shape_input_selected_cookie_t
 **/
struct xcb_shape_input_selected_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_shape_input_selected. */
const ubyte XCB_SHAPE_INPUT_SELECTED = 7;

/**
 * @brief xcb_shape_input_selected_request_t
 **/
struct xcb_shape_input_selected_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t destination_window; /**<  */
}

/**
 * @brief xcb_shape_input_selected_reply_t
 **/
struct xcb_shape_input_selected_reply_t {
    ubyte  response_type; /**<  */
    ubyte  enabled; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/**
 * @brief xcb_shape_get_rectangles_cookie_t
 **/
struct xcb_shape_get_rectangles_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_shape_get_rectangles. */
const ubyte XCB_SHAPE_GET_RECTANGLES = 8;

/**
 * @brief xcb_shape_get_rectangles_request_t
 **/
struct xcb_shape_get_rectangles_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_window_t     window; /**<  */
    xcb_shape_kind_t source_kind; /**<  */
    ubyte            pad0[3]; /**<  */
}

/**
 * @brief xcb_shape_get_rectangles_reply_t
 **/
struct xcb_shape_get_rectangles_reply_t {
    ubyte  response_type; /**<  */
    ubyte  ordering; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   rectangles_len; /**<  */
    ubyte  pad0[20]; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_shape_op_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_shape_op_t)
 */

/*****************************************************************************
 **
 ** void xcb_shape_op_next
 ** 
 ** @param xcb_shape_op_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_shape_op_next (xcb_shape_op_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_shape_op_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_shape_op_end
 ** 
 ** @param xcb_shape_op_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_shape_op_end (xcb_shape_op_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_shape_kind_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_shape_kind_t)
 */

/*****************************************************************************
 **
 ** void xcb_shape_kind_next
 ** 
 ** @param xcb_shape_kind_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_shape_kind_next (xcb_shape_kind_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_shape_kind_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_shape_kind_end
 ** 
 ** @param xcb_shape_kind_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_shape_kind_end (xcb_shape_kind_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_shape_query_version_cookie_t xcb_shape_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_shape_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_query_version_cookie_t
xcb_shape_query_version (xcb_connection_t *c  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_shape_query_version_cookie_t xcb_shape_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_shape_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_query_version_cookie_t
xcb_shape_query_version_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shape_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_shape_query_version_reply_t * xcb_shape_query_version_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_shape_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_shape_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_shape_query_version_reply_t *
xcb_shape_query_version_reply (xcb_connection_t                  *c  /**< */,
                               xcb_shape_query_version_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_shape_rectangles_sizeof (const void  *_buffer  /**< */,
                             uint         rectangles_len  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_rectangles_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_shape_op_t         operation
 ** @param xcb_shape_kind_t       destination_kind
 ** @param ubyte                  ordering
 ** @param xcb_window_t           destination_window
 ** @param short                  x_offset
 ** @param short                  y_offset
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_rectangles_checked (xcb_connection_t      *c  /**< */,
                              xcb_shape_op_t         operation  /**< */,
                              xcb_shape_kind_t       destination_kind  /**< */,
                              ubyte                  ordering  /**< */,
                              xcb_window_t           destination_window  /**< */,
                              short                  x_offset  /**< */,
                              short                  y_offset  /**< */,
                              uint                   rectangles_len  /**< */,
                              const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_rectangles
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_shape_op_t         operation
 ** @param xcb_shape_kind_t       destination_kind
 ** @param ubyte                  ordering
 ** @param xcb_window_t           destination_window
 ** @param short                  x_offset
 ** @param short                  y_offset
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_rectangles (xcb_connection_t      *c  /**< */,
                      xcb_shape_op_t         operation  /**< */,
                      xcb_shape_kind_t       destination_kind  /**< */,
                      ubyte                  ordering  /**< */,
                      xcb_window_t           destination_window  /**< */,
                      short                  x_offset  /**< */,
                      short                  y_offset  /**< */,
                      uint                   rectangles_len  /**< */,
                      const xcb_rectangle_t *rectangles  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_mask_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shape_op_t    operation
 ** @param xcb_shape_kind_t  destination_kind
 ** @param xcb_window_t      destination_window
 ** @param short             x_offset
 ** @param short             y_offset
 ** @param xcb_pixmap_t      source_bitmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_mask_checked (xcb_connection_t *c  /**< */,
                        xcb_shape_op_t    operation  /**< */,
                        xcb_shape_kind_t  destination_kind  /**< */,
                        xcb_window_t      destination_window  /**< */,
                        short             x_offset  /**< */,
                        short             y_offset  /**< */,
                        xcb_pixmap_t      source_bitmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_mask
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shape_op_t    operation
 ** @param xcb_shape_kind_t  destination_kind
 ** @param xcb_window_t      destination_window
 ** @param short             x_offset
 ** @param short             y_offset
 ** @param xcb_pixmap_t      source_bitmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_mask (xcb_connection_t *c  /**< */,
                xcb_shape_op_t    operation  /**< */,
                xcb_shape_kind_t  destination_kind  /**< */,
                xcb_window_t      destination_window  /**< */,
                short             x_offset  /**< */,
                short             y_offset  /**< */,
                xcb_pixmap_t      source_bitmap  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_combine_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shape_op_t    operation
 ** @param xcb_shape_kind_t  destination_kind
 ** @param xcb_shape_kind_t  source_kind
 ** @param xcb_window_t      destination_window
 ** @param short             x_offset
 ** @param short             y_offset
 ** @param xcb_window_t      source_window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_combine_checked (xcb_connection_t *c  /**< */,
                           xcb_shape_op_t    operation  /**< */,
                           xcb_shape_kind_t  destination_kind  /**< */,
                           xcb_shape_kind_t  source_kind  /**< */,
                           xcb_window_t      destination_window  /**< */,
                           short             x_offset  /**< */,
                           short             y_offset  /**< */,
                           xcb_window_t      source_window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_combine
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shape_op_t    operation
 ** @param xcb_shape_kind_t  destination_kind
 ** @param xcb_shape_kind_t  source_kind
 ** @param xcb_window_t      destination_window
 ** @param short             x_offset
 ** @param short             y_offset
 ** @param xcb_window_t      source_window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_combine (xcb_connection_t *c  /**< */,
                   xcb_shape_op_t    operation  /**< */,
                   xcb_shape_kind_t  destination_kind  /**< */,
                   xcb_shape_kind_t  source_kind  /**< */,
                   xcb_window_t      destination_window  /**< */,
                   short             x_offset  /**< */,
                   short             y_offset  /**< */,
                   xcb_window_t      source_window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_offset_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shape_kind_t  destination_kind
 ** @param xcb_window_t      destination_window
 ** @param short             x_offset
 ** @param short             y_offset
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_offset_checked (xcb_connection_t *c  /**< */,
                          xcb_shape_kind_t  destination_kind  /**< */,
                          xcb_window_t      destination_window  /**< */,
                          short             x_offset  /**< */,
                          short             y_offset  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_offset
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shape_kind_t  destination_kind
 ** @param xcb_window_t      destination_window
 ** @param short             x_offset
 ** @param short             y_offset
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_offset (xcb_connection_t *c  /**< */,
                  xcb_shape_kind_t  destination_kind  /**< */,
                  xcb_window_t      destination_window  /**< */,
                  short             x_offset  /**< */,
                  short             y_offset  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_shape_query_extents_cookie_t xcb_shape_query_extents
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      destination_window
 ** @returns xcb_shape_query_extents_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_query_extents_cookie_t
xcb_shape_query_extents (xcb_connection_t *c  /**< */,
                         xcb_window_t      destination_window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_shape_query_extents_cookie_t xcb_shape_query_extents_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      destination_window
 ** @returns xcb_shape_query_extents_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_query_extents_cookie_t
xcb_shape_query_extents_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_window_t      destination_window  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shape_query_extents_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_shape_query_extents_reply_t * xcb_shape_query_extents_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_shape_query_extents_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_shape_query_extents_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_shape_query_extents_reply_t *
xcb_shape_query_extents_reply (xcb_connection_t                  *c  /**< */,
                               xcb_shape_query_extents_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_select_input_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      destination_window
 ** @param ubyte             enable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_select_input_checked (xcb_connection_t *c  /**< */,
                                xcb_window_t      destination_window  /**< */,
                                ubyte             enable  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_shape_select_input
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      destination_window
 ** @param ubyte             enable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shape_select_input (xcb_connection_t *c  /**< */,
                        xcb_window_t      destination_window  /**< */,
                        ubyte             enable  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_shape_input_selected_cookie_t xcb_shape_input_selected
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      destination_window
 ** @returns xcb_shape_input_selected_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_input_selected_cookie_t
xcb_shape_input_selected (xcb_connection_t *c  /**< */,
                          xcb_window_t      destination_window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_shape_input_selected_cookie_t xcb_shape_input_selected_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      destination_window
 ** @returns xcb_shape_input_selected_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_input_selected_cookie_t
xcb_shape_input_selected_unchecked (xcb_connection_t *c  /**< */,
                                    xcb_window_t      destination_window  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shape_input_selected_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_shape_input_selected_reply_t * xcb_shape_input_selected_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_shape_input_selected_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_shape_input_selected_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_shape_input_selected_reply_t *
xcb_shape_input_selected_reply (xcb_connection_t                   *c  /**< */,
                                xcb_shape_input_selected_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

extern(C) int
xcb_shape_get_rectangles_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_shape_get_rectangles_cookie_t xcb_shape_get_rectangles
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_shape_kind_t  source_kind
 ** @returns xcb_shape_get_rectangles_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_get_rectangles_cookie_t
xcb_shape_get_rectangles (xcb_connection_t *c  /**< */,
                          xcb_window_t      window  /**< */,
                          xcb_shape_kind_t  source_kind  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_shape_get_rectangles_cookie_t xcb_shape_get_rectangles_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_shape_kind_t  source_kind
 ** @returns xcb_shape_get_rectangles_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shape_get_rectangles_cookie_t
xcb_shape_get_rectangles_unchecked (xcb_connection_t *c  /**< */,
                                    xcb_window_t      window  /**< */,
                                    xcb_shape_kind_t  source_kind  /**< */);


/*****************************************************************************
 **
 ** xcb_rectangle_t * xcb_shape_get_rectangles_rectangles
 ** 
 ** @param const xcb_shape_get_rectangles_reply_t *R
 ** @returns xcb_rectangle_t *
 **
 *****************************************************************************/
 
xcb_rectangle_t *
xcb_shape_get_rectangles_rectangles (const xcb_shape_get_rectangles_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_shape_get_rectangles_rectangles_length
 ** 
 ** @param const xcb_shape_get_rectangles_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_shape_get_rectangles_rectangles_length (const xcb_shape_get_rectangles_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_rectangle_iterator_t xcb_shape_get_rectangles_rectangles_iterator
 ** 
 ** @param const xcb_shape_get_rectangles_reply_t *R
 ** @returns xcb_rectangle_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_rectangle_iterator_t
xcb_shape_get_rectangles_rectangles_iterator (const xcb_shape_get_rectangles_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shape_get_rectangles_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_shape_get_rectangles_reply_t * xcb_shape_get_rectangles_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_shape_get_rectangles_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_shape_get_rectangles_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_shape_get_rectangles_reply_t *
xcb_shape_get_rectangles_reply (xcb_connection_t                   *c  /**< */,
                                xcb_shape_get_rectangles_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

/**
 * @}
 */
