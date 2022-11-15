//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 reduc_base(f64 *restrict a, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i];

  return d;
}

//unrollx8
f64 reduc_basex8(f64 *restrict a, u64 n)
{
  double d = 0.0;
  #define UNROLL8 8
  for (u64 i = 0; i < n; i+=UNROLL8)
    d += a[i];

  return d;
}

