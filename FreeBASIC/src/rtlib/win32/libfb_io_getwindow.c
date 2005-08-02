/*
 *  libfb - FreeBASIC's runtime library
 *	Copyright (C) 2004-2005 Andre V. T. Vicentini (av1ctor@yahoo.com.br) and others.
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/*
 * io_getwindow.c -- size of the console window
 *
 * chng: jul/2005 written [mjs]
 *       jul/2005 mod: added convert*console functions [mjs]
 *
 */

#include <stdlib.h>
#include "fb.h"

void fb_InitConsoleWindow( void );

/*:::::*/
void fb_ConsoleGetMaxWindowSize( int *cols, int *rows )
{
    COORD max = GetLargestConsoleWindowSize( fb_out_handle );
    if( cols != NULL )
        *cols = (max.X==0 ? FB_SCRN_DEFAULT_WIDTH : max.X);
    if( rows != NULL )
        *rows = (max.Y==0 ? FB_SCRN_DEFAULT_HEIGHT : max.Y);
}

FBCALL void fb_hConvertToConsole( int *left, int *top, int *right, int *bottom )
{
    int win_left, win_top;

    fb_InitConsoleWindow();

    if( FB_CONSOLE_WINDOW_EMPTY() )
        return;

    fb_hConsoleGetWindow( &win_left, &win_top, NULL, NULL );
    if( left != NULL )
        *left += win_left - 1;
    if( top != NULL )
        *top += win_top - 1;
    if( right != NULL )
        *right += win_left - 1;
    if( bottom != NULL )
        *bottom += win_top - 1;
}

FBCALL void fb_hConvertFromConsole( int *left, int *top, int *right, int *bottom )
{
    int win_left, win_top;

    fb_InitConsoleWindow();

    if( FB_CONSOLE_WINDOW_EMPTY() )
        return;

    fb_hConsoleGetWindow( &win_left, &win_top, NULL, NULL );
    if( left != NULL )
        *left -= win_left - 1;
    if( top != NULL )
        *top -= win_top - 1;
    if( right != NULL )
        *right -= win_left - 1;
    if( bottom != NULL )
        *bottom -= win_top - 1;
}
