#!/bin/bash
# Dev-container-only environment. Sourced by gemini-rtsw-ci/dev_environment.sh,
# which forwards the variables this file *changes* into the container as -e args.
# Never installed by the RPM and never read at runtime, so nothing here can
# affect a real Gemini workstation.
#
# The dev image ships the pr RPM but none of the gemsoft site environment that
# a workstation gets from its own profile, so these have to be supplied here.

# Root of the gemsoft tree. prMK_dm.sh builds EPICS_DISPLAY_PATH from it;
# unset it resolves to "/share/dl/pr" and dm2-4 finds no screens.
export GEMINI_TOP=/gemsoft

# Which site's screens pr_dm.sh dispatches to: MK or CP.
export GEMINI_SITE=MK

# The site broadcast addresses baked into prMK_dm.sh/prCP_dm.sh are not
# reachable from a container, so PVs stay disconnected (white). Point this at a
# local soft IOC to get live values; leave it alone to just check the layout.
# export EPICS_CA_ADDR_LIST=127.0.0.1
# export EPICS_CA_AUTO_ADDR_LIST=NO
