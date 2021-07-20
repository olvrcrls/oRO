//
//  discord_bot.hpp
//  oRagnarok Online
//
//  Created by Wazaby (07-19-2021)
//

#ifndef discord_bot_hpp
#define discord_bot_hpp

#include <iostream>
#include <stdio.h>
#include <string>

#ifndef TESTING
#include "../../common/timer.hpp"

TIMER_FUNC(discord_handle);
#else
void discord_handle();
#endif
void discord_send(const char* msg, const char* channel, const char* name);
int discord_init();
void discord_free();
int discord_script(const char* msg, const char* channel);
void discord_announce_drop(const char* msg);

#endif /* discord_bot_hpp */
