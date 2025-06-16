#!/bin/bash

source /etc/profile

#export EPICS_DISPLAY_PATH=.:../adl/CP/

export EPICS_DISPLAY_PATH=.:$GEMINI_TOP/share/dl/pr/data_MK
export EPICS_CA_ADDR_LIST="10.2.2.255"

# Use 64-bit dm2-4 if available, otherwise use bundled version, else system default
if [ -f "/gemsoft/opt/epics/extensions/bin/linux-x86_64/dm2-4" ]; then
    DM_CMD="/gemsoft/opt/epics/extensions/bin/linux-x86_64/dm2-4"
elif [ -f "$GEMINI_TOP/bin/dm2-4_64" ]; then
    DM_CMD="$GEMINI_TOP/bin/dm2-4_64"
else
    DM_CMD="dm2-4"
fi

$DM_CMD -iconic PR_Master.dl top=pr:&

