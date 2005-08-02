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
 * io_locate.c -- locate (console, no gfx) function for Windows
 *
 * chng: jan/2005 written [v1ctor]
 *       jul/2005 mod: use convert*console functions [mjs]
 *                mod: fixed return and default values [mjs]
 *
 */

#include "fb.h"

/*:::::*/
int fb_ConsoleLocate( int row, int col, int cursor )
{
    int ret_val;
    CONSOLE_CURSOR_INFO info;

    if( col < 1 )
        col = fb_ConsoleGetX();
    if( row < 1 )
        row = fb_ConsoleGetY();

    GetConsoleCursorInfo( fb_out_handle, &info );
    ret_val =
        (col & 0xFF) | ((row & 0xFF) << 8) | (info.bVisible ? 0x10000 : 0);

    fb_hConvertToConsole( &col, &row, NULL, NULL );

    fb_ConsoleLocateRawEx( fb_out_handle, row, col, cursor );

    return ret_val;
}

