# See LICENSE for license details.

#*****************************************************************************
# simple.S
#-----------------------------------------------------------------------------
#
# Test syscall trap.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64S
RVTEST_CODE_BEGIN

#ifdef __MACHINE_MODE
  #define sscratch mscratch
  #define sstatus mstatus
  #define scause mcause
  #define sepc mepc
  #define sret mret
  #define stvec_handler mtvec_handler
  #undef SSTATUS_SPP
  #define SSTATUS_SPP MSTATUS_MPP
#endif

testcase_start:
  li TESTNUM, 2

  # This is the expected trap code.

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
