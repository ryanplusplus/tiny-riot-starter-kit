/*!
 * @file
 * @brief
 */

#include "timer_group.h"
#include "heartbeat_led.h"
#include "xtimer.h"

int main(void)
{
  tiny_timer_group_t* timer_group = timer_group_init();
  heartbeat_led_init(timer_group);

  while(1) {
    xtimer_msleep(tiny_timer_group_run(timer_group));
  }
}
