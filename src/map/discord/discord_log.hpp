//
//  discord_log.hpp
//  oRagnarok Online
//
//  Created by Wazaby (07-19-2021)
//

#ifndef discord_log_hpp
#define discord_log_hpp

#include "discord_log_entry.hpp"
#include <memory>
#include <mutex>
#include <queue>
#include <stdio.h>
#include <string>

namespace rocord
{
  class log
  {
  public:
    log();
    virtual ~log();
    void warning(std::string msg);
    void print(std::string msg, log_type ltype, bool need_sync = false);
    // TODO copy by value
    void handle_print();
    void welcome();
    void set_level(int level);

  private:
    void do_print(log_entry &entry);
    std::mutex m;
    std::queue<std::shared_ptr<log_entry>> print_queue;
    int level = 0xFF;
  };
}
#endif /* discord_log_hpp*/
