/* Include files */

#include "q3_cgxe.h"
#include "m_52DXLjie28n0dSzrUYp0eB.h"

unsigned int cgxe_q3_method_dispatcher(SimStruct* S, int_T method, void* data)
{
  if (ssGetChecksum0(S) == 4205183691 &&
      ssGetChecksum1(S) == 843466803 &&
      ssGetChecksum2(S) == 1676312510 &&
      ssGetChecksum3(S) == 4124491038) {
    method_dispatcher_52DXLjie28n0dSzrUYp0eB(S, method, data);
    return 1;
  }

  return 0;
}
