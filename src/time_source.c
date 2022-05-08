/*!
 * @file
 * @brief
 */

#include "time_source.h"
#include "xtimer.h"

static tiny_time_source_ticks_t ticks(i_tiny_time_source_t* self)
{
  (void)self;
  return (tiny_time_source_ticks_t)(xtimer_now_usec() / 1000);
}

static const i_tiny_time_source_api_t api = { ticks };

i_tiny_time_source_t* time_source_init(void)
{
  static i_tiny_time_source_t self = { &api };
  return &self;
}
