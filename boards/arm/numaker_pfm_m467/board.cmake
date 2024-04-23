# SPDX-License-Identifier: Apache-2.0

board_runner_args(nulink "-f")
board_runner_args(pyocd "--target=m467hjhae")

# @LC@
board_runner_args(openocd "--use-elf" "--config=interface/nulink.cfg" "--config=target/numicroM4.cfg")
board_runner_args(jlink "--device=m467hjhan" "--speed=4000")

include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/nulink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/canopen.board.cmake)

# @LC@
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)

