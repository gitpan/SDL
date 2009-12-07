#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#ifndef aTHX_
#define aTHX_
#endif

#include <SDL.h>
#ifdef HAVE_SDL_GFX
#include <SDL_gfxPrimitives.h>
#endif

MODULE = SDL::GFX::Primitives 	PACKAGE = SDL::GFX::Primitives    PREFIX = gfx_prim_

=for documentation

The Following are XS bindings to the SDL_gfx Library

Described here:

See: L<http://www.ferzkopp.net/joomla/content/view/19/14/>

=cut

#ifdef HAVE_SDL_GFX

int
gfx_prim_pixel_color(dst, x, y, color)
	SDL_Surface *dst
	Sint16 x
	Sint16 y
	Uint32 color
	CODE:
		RETVAL = pixelColor(dst, x, y, color);
	OUTPUT:
		RETVAL

int
gfx_prim_pixel_RGBA(dst, x, y, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = pixelRGBA(dst, x, y, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_hline_color(dst, x1, x2, y, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 x2
	Sint16 y
	Uint32 color
	CODE:
		RETVAL = hlineColor(dst, x1, x2, y, color);
	OUTPUT:
		RETVAL

int
gfx_prim_hline_RGBA(dst, x1, x2, y, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 x2
	Sint16 y
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = hlineRGBA(dst, x1, x2, y, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_vline_color(dst, x, y1, y2, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y1
	Sint16 y2
	Uint32 color
	CODE:
		RETVAL = vlineColor(dst, x, y1, y2, color);
	OUTPUT:
		RETVAL

int
gfx_prim_vline_RGBA(dst, x, y1, y2, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y1
	Sint16 y2
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = vlineRGBA(dst, x, y1, y2, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_rectangle_color(dst, x1, y1, x2, y2, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint32 color
	CODE:
		RETVAL = rectangleColor(dst, x1, y1, x2, y2, color);
	OUTPUT:
		RETVAL

int
gfx_prim_rectangle_RGBA(dst, x1, y1, x2, y2, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = rectangleRGBA(dst, x1, y1, x2, y2, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_box_color(dst, x1, y1, x2, y2, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint32 color
	CODE:
		RETVAL = boxColor(dst, x1, y1, x2, y2, color);
	OUTPUT:
		RETVAL

int
gfx_prim_box_RGBA(dst, x1, y1, x2, y2, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = boxRGBA(dst, x1, y1, x2, y2, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_line_color(dst, x1, y1, x2, y2, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint32 color
	CODE:
		RETVAL = lineColor(dst, x1, y1, x2, y2, color);
	OUTPUT:
		RETVAL

int
gfx_prim_line_RGBA(dst, x1, y1, x2, y2, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = lineRGBA(dst, x1, y1, x2, y2, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_aaline_color(dst, x1, y1, x2, y2, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint32 color
	CODE:
		RETVAL = aalineColor(dst, x1, y1, x2, y2, color);
	OUTPUT:
		RETVAL

int
gfx_prim_aaline_RGBA(dst, x1, y1, x2, y2, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = aalineRGBA(dst, x1, y1, x2, y2, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_circle_color(dst, x, y, r, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 r
	Uint32 color
	CODE:
		RETVAL = circleColor(dst, x, y, r, color);
	OUTPUT:
		RETVAL

int
gfx_prim_circle_RGBA(dst, x, y, rad, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = circleRGBA(dst, x, y, rad, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_arc_color(dst, x, y, r, start, end, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 r
	Sint16 start
	Sint16 end
	Uint32 color
	CODE:
		RETVAL = arcColor(dst, x, y, r, start, end, color);
	OUTPUT:
		RETVAL

int
gfx_prim_arc_RGBA(dst, x, y, rad, start, end, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Sint16 start
	Sint16 end
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = arcRGBA(dst, x, y, rad, start, end, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_aacircle_color(dst, x, y, r, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 r
	Uint32 color
	CODE:
		RETVAL = aacircleColor(dst, x, y, r, color);
	OUTPUT:
		RETVAL

int
gfx_prim_aacircle_RGBA(dst, x, y, rad, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = aacircleRGBA(dst, x, y, rad, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_circle_color(dst, x, y, r, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 r
	Uint32 color
	CODE:
		RETVAL = filledCircleColor(dst, x, y, r, color);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_circle_RGBA(dst, x, y, rad, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = filledCircleRGBA(dst, x, y, rad, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_ellipse_color(dst, x, y, rx, ry, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rx
	Sint16 ry
	Uint32 color
	CODE:
		RETVAL = ellipseColor(dst, x, y, rx, ry, color);
	OUTPUT:
		RETVAL

int
gfx_prim_ellipse_RGBA(dst, x, y, rx, ry, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rx
	Sint16 ry
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = ellipseRGBA(dst, x, y, rx, ry, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_aaellipse_color(dst, xc, yc, rx, ry, color)
	SDL_Surface * dst
	Sint16 xc
	Sint16 yc
	Sint16 rx
	Sint16 ry
	Uint32 color
	CODE:
		RETVAL = aaellipseColor(dst, xc, yc, rx, ry, color);
	OUTPUT:
		RETVAL

int
gfx_prim_aaellipse_RGBA(dst, x, y, rx, ry, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rx
	Sint16 ry
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = aaellipseRGBA(dst, x, y, rx, ry, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_ellipse_color(dst, x, y, rx, ry, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rx
	Sint16 ry
	Uint32 color
	CODE:
		RETVAL = filledEllipseColor(dst, x, y, rx, ry, color);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_ellipse_RGBA(dst, x, y, rx, ry, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rx
	Sint16 ry
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = filledEllipseRGBA(dst, x, y, rx, ry, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_pie_color(dst, x, y, rad, start, end, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Sint16 start
	Sint16 end
	Uint32 color
	CODE:
		RETVAL = pieColor(dst, x, y, rad, start, end, color);
	OUTPUT:
		RETVAL

int
gfx_prim_pie_RGBA(dst, x, y, rad, start, end, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Sint16 start
	Sint16 end
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = pieRGBA(dst, x, y, rad, start, end, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_pie_color(dst, x, y, rad, start, end, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Sint16 start
	Sint16 end
	Uint32 color
	CODE:
		RETVAL = filledPieColor(dst, x, y, rad, start, end, color);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_pie_RGBA(dst, x, y, rad, start, end, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	Sint16 rad
	Sint16 start
	Sint16 end
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = filledPieRGBA(dst, x, y, rad, start, end, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_trigon_color(dst, x1, y1, x2, y2, x3, y3, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Sint16 x3
	Sint16 y3
	Uint32 color
	CODE:
		RETVAL = trigonColor(dst, x1, y1, x2, y2, x3, y3, color);
	OUTPUT:
		RETVAL

int
gfx_prim_trigon_RGBA(dst, x1, y1, x2, y2, x3, y3, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Sint16 x3
	Sint16 y3
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = trigonRGBA(dst, x1, y1, x2, y2, x3, y3, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_aatrigon_color(dst, x1, y1, x2, y2, x3, y3, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Sint16 x3
	Sint16 y3
	Uint32 color
	CODE:
		RETVAL = aatrigonColor(dst, x1, y1, x2, y2, x3, y3, color);
	OUTPUT:
		RETVAL

int
gfx_prim_aatrigon_RGBA(dst, x1, y1, x2, y2, x3, y3, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Sint16 x3
	Sint16 y3
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = aatrigonRGBA(dst, x1, y1, x2, y2, x3, y3, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_trigon_color(dst, x1, y1, x2, y2, x3, y3, color)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Sint16 x3
	Sint16 y3
	Uint32 color
	CODE:
		RETVAL = filledTrigonColor(dst, x1, y1, x2, y2, x3, y3, color);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_trigon_RGBA(dst, x1, y1, x2, y2, x3, y3, r, g, b, a)
	SDL_Surface * dst
	Sint16 x1
	Sint16 y1
	Sint16 x2
	Sint16 y2
	Sint16 x3
	Sint16 y3
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = filledTrigonRGBA(dst, x1, y1, x2, y2, x3, y3, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_polygon_color(dst, vx, vy, n, color)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint32 color
	CODE:
		RETVAL = polygonColor(dst, vx, vy, n, color);
	OUTPUT:
		RETVAL

int
gfx_prim_polygon_RGBA(dst, vx, vy, n, r, g, b, a)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = polygonRGBA(dst, vx, vy, n, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_aapolygon_color(dst, vx, vy, n, color)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint32 color
	CODE:
		RETVAL = aapolygonColor(dst, vx, vy, n, color);
	OUTPUT:
		RETVAL

int
gfx_prim_aapolygon_RGBA(dst, vx, vy, n, r, g, b, a)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = aapolygonRGBA(dst, vx, vy, n, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_polygon_color(dst, vx, vy, n, color)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint32 color
	CODE:
		RETVAL = filledPolygonColor(dst, vx, vy, n, color);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_polygon_RGBA(dst, vx, vy, n, r, g, b, a)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = filledPolygonRGBA(dst, vx, vy, n, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_textured_polygon(dst, vx, vy, n, texture, texture_dx, texture_dy)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	SDL_Surface * texture
	int texture_dx
	int texture_dy
	CODE:
		RETVAL = texturedPolygon(dst, vx, vy, n, texture, texture_dx, texture_dy);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_polygon_color_MT(dst, vx, vy, n, color, polyInts, polyAllocated)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint32 color
	int **polyInts
	int *polyAllocated
	CODE:
		RETVAL = filledPolygonColorMT(dst, vx, vy, n, color, polyInts, polyAllocated);
	OUTPUT:
		RETVAL

int
gfx_prim_filled_polygon_RGBA_MT(dst, vx, vy, n, r, g, b, a, polyInts, polyAllocated)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	int **polyInts
	int *polyAllocated
	CODE:
		RETVAL = filledPolygonRGBAMT(dst, vx, vy, n, r, g, b, a, polyInts, polyAllocated);
	OUTPUT:
		RETVAL

int
gfx_prim_textured_polygon_MT(dst, vx, vy, n, texture, texture_dx, texture_dy, polyInts, polyAllocated)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	SDL_Surface * texture
	int texture_dx
	int texture_dy
	int **polyInts
	int *polyAllocated
	CODE:
		RETVAL = texturedPolygonMT(dst, vx, vy, n, texture, texture_dx, texture_dy, polyInts, polyAllocated);
	OUTPUT:
		RETVAL

int
gfx_prim_bezier_color(dst, vx, vy, n, s, color)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	int s
	Uint32 color
	CODE:
		RETVAL = bezierColor(dst, vx, vy, n, s, color);
	OUTPUT:
		RETVAL

int
gfx_prim_bezier_RGBA(dst, vx, vy, n, s, r, g, b, a)
	SDL_Surface * dst
	const Sint16 * vx
	const Sint16 * vy
	int n
	int s
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = bezierRGBA(dst, vx, vy, n, s, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_character_color(dst, x, y, c, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	char c
	Uint32 color
	CODE:
		RETVAL = characterColor(dst, x, y, c, color);
	OUTPUT:
		RETVAL

int
gfx_prim_character_RGBA(dst, x, y, c, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	char c
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = characterRGBA(dst, x, y, c, r, g, b, a);
	OUTPUT:
		RETVAL

int
gfx_prim_string_color(dst, x, y, c, color)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	const char *c
	Uint32 color
	CODE:
		RETVAL = stringColor(dst, x, y, c, color);
	OUTPUT:
		RETVAL

int
gfx_prim_string_RGBA(dst, x, y, c, r, g, b, a)
	SDL_Surface * dst
	Sint16 x
	Sint16 y
	const char *c
	Uint8 r
	Uint8 g
	Uint8 b
	Uint8 a
	CODE:
		RETVAL = stringRGBA(dst, x, y, c, r, g, b, a);
	OUTPUT:
		RETVAL

void
gfx_prim_set_font(fontdata, cw, ch)
	void *fontdata
	int cw
	int ch
	CODE:
		gfxPrimitivesSetFont(fontdata, cw, ch);

#endif
