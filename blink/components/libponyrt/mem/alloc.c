#ifdef __linux__
#define _GNU_SOURCE
#endif
#include <platform.h>
#include <string.h>
#include <stdio.h>

#define PAGE_SIZE 4096

#if defined PLATFORM_IS_POSIX_BASED && undefined PLATFORM_IS_XTENSA
#include <sys/mman.h>
#endif

#if defined(PLATFORM_IS_MACOSX)
#include <mach/vm_statistics.h>
#endif



void* ponyint_virt_alloc(size_t bytes)
{
  void* p;
  bool ok = true;

#if defined(PLATFORM_IS_WINDOWS)
  p = VirtualAlloc(NULL, bytes, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
  if(p == NULL)
    ok = false;
#elif defined(PLATFORM_IS_POSIX_BASED) && undefined PLATFORM_IS_XTENSA
#if defined(PLATFORM_IS_LINUX)
  p = mmap(0, bytes, PROT_READ | PROT_WRITE,
    MAP_PRIVATE | MAP_ANONYMOUS | MAP_NORESERVE, -1, 0);
#elif defined(PLATFORM_IS_MACOSX)
  p = mmap(0, bytes, PROT_READ | PROT_WRITE,
    MAP_PRIVATE | MAP_ANON | VM_FLAGS_SUPERPAGE_SIZE_ANY, -1, 0);
#elif defined(PLATFORM_IS_DRAGONFLY)
  p = mmap(0, bytes, PROT_READ | PROT_WRITE,
    MAP_PRIVATE | MAP_ANON, -1, 0);
#elif defined(PLATFORM_IS_OPENBSD)
  p = mmap(0, bytes, PROT_READ | PROT_WRITE,
    MAP_PRIVATE | MAP_ANON, -1, 0);
#elif defined(PLATFORM_IS_BSD)
#ifndef MAP_ALIGNED_SUPER
#define MAP_ALIGNED_SUPER 0
#endif
  p = mmap(0, bytes, PROT_READ | PROT_WRITE,
    MAP_PRIVATE | MAP_ANON | MAP_ALIGNED_SUPER, -1, 0);
#endif
  if(p == MAP_FAILED)
    ok = false;
#else
  if (posix_memalign(&p, sysconf(_SC_PAGESIZE), bytes) != 0) {
    ok = false; /* LCOV_EXCL_LINE */
  }               /* LCOV_EXCL_LINE */
#endif

  if(!ok)
  {
    perror("out of memory: ");
    abort();
  }

  return p;
}

void ponyint_virt_free(void* p, size_t bytes)
{
#if defined(PLATFORM_IS_WINDOWS)
  VirtualFree(p, 0, MEM_RELEASE);
#elif defined(PLATFORM_IS_POSIX_BASED) && undefined PLATFORM_IS_XTENSA
  munmap(p, bytes);
#else
  free(p);
#endif
}
