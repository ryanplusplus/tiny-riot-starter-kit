/*!
 * @file
 * @brief
 */

#include <stddef.h>
#include "heartbeat_led.h"
#include "board.h"

enum {
  toggle_period_msec = 500
};

static void toggle(tiny_timer_group_t* timer_group, void* context)
{
  (void)timer_group;
  (void)context;
  LED0_TOGGLE;
}

void heartbeat_led_init(tiny_timer_group_t* timer_group)
{
  static tiny_timer_t timer;
  tiny_timer_start_periodic(timer_group, &timer, toggle_period_msec, NULL, toggle);
}
