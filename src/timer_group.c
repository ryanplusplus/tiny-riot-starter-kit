/*!
 * @file
 * @brief
 */

#include "timer_group.h"
#include "time_source.h"

tiny_timer_group_t* timer_group_init(void)
{
  static tiny_timer_group_t self;
  tiny_timer_group_init(&self, time_source_init());
  return &self;
}
