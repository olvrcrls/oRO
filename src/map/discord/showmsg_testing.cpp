//
//  showmsg_testing.cpp
//  oRagnarok Online
//
//  Created by Wazaby (07-19-2021)
//

#include "showmsg_testing.hpp"
#include <cstdarg>
#include <stdio.h>

void ShowMessage(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}
void ShowStatus(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

void ShowInfo(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

void ShowNotice(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

void ShowWarning(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

void ShowDebug(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

void ShowError(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

void ShowFatalError(const char *format, ...)
{
  va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}
