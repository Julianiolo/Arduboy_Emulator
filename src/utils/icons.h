#ifndef __UTILS_ICONS_H__
#define __UTILS_ICONS_H__

#define USE_ICONS 1

#if USE_ICONS
#include "extras/IconsFontAwesome6.h"

#define ADD_ICON(_icon_) _icon_ " "
#define ICON_OR_TEXT(_icon_,_text_) _icon_
#else
#define ADD_ICON(_icon_) 
#define ICON_OR_TEXT(_icon_,_text_) _text_
#endif

#endif