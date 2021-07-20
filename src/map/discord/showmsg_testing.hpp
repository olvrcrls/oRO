//
//  showmsg_testing.hpp
//  oRagnarok Online
//
//  Created by Wazaby (07-19-2021)
//

#ifndef showmsg_testing_hpp
#define showmsg_testing_hpp

#include <stdio.h>

void ShowMessage(const char *format, ...);
void ShowStatus(const char *format, ...);
void ShowInfo(const char *format, ...);
void ShowNotice(const char *format, ...);
void ShowWarning(const char *format, ...);
void ShowDebug(const char *format, ...);
void ShowError(const char *format, ...);

#endif /* showmsg_testing_hpp */
