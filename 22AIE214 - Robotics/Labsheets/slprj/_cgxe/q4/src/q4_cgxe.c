/* Include files */

#include "q4_cgxe.h"
#include "m_Twp7hBvc5EQgKkjQwYOpNG.h"

unsigned int cgxe_q4_method_dispatcher(SimStruct* S, int_T method, void* data)
{
  if (ssGetChecksum0(S) == 3646317177 &&
      ssGetChecksum1(S) == 542532680 &&
      ssGetChecksum2(S) == 3787873739 &&
      ssGetChecksum3(S) == 724168117) {
    method_dispatcher_Twp7hBvc5EQgKkjQwYOpNG(S, method, data);
    return 1;
  }

  return 0;
}
