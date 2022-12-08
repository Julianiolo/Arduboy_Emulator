#ifndef __UTILS_ICONS_H__
#define __UTILS_ICONS_H__

#define USE_ICONS 1

#if USE_ICONS
#include "extras/IconsFontAwesome6.h"

#define ADD_ICON(icon) icon " "
#define ICON_OR_TEXT(icon,text) icon
#else
#define ADD_ICON(icon) 
#define ICON_OR_TEXT(icon,text) text
#endif

#endif