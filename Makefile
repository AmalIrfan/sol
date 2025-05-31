
#  This file is part of sol (simple linux conSOLe)

#  sol  Copyright (C) 2025  Amal Irfan K C

#  Free to use, modify, and/or distribute under the GNU General
#  Public License version 3.0 or (at your option) later.

#  See the file LICENSE.txt, or <https://gnu.org/licenses> for
#  more details.

# The program file is put in BUILDDIR
PROG = sol

SRCDIR = src
OBJDIR = obj
BUILDDIR = build

SRCFILES = $(wildcard $(SRCDIR)/*)
OBJFILES = $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(SRCFILES))

.PHONY: all clean
all: $(BUILDDIR)/$(PROG)

$(BUILDDIR)/$(PROG): $(OBJFILES) | $(BUILDDIR)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $^ $(LDFLAGS)

$(BUILDDIR) $(OBJDIR):
	mkdir $@

clean:
	rm -r $(BUILDDIR) $(OBJDIR)
