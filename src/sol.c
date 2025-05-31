/*
   This file is part of sol (simple linux conSOLe)

   sol  Copyright (C) 2025  Amal Irfan K C

   Free to use, modify, and/or distribute under the GNU General
   Public License version 3.0 or (at your option) later.

   See the file LICENSE.txt, or <https://gnu.org/licenses> for
   more details.
*/
#include <unistd.h>

static const char msg[] = "Hello, World!\n";
#define msg_len (sizeof(msg) - 1)

int main()
{
    write(STDOUT_FILENO, msg, msg_len);
    return 0;
}
