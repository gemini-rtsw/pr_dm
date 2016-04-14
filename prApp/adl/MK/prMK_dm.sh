#!/bin/bash

source /etc/profile

export EPICS_DISPLAY_PATH=.:$GEMINI_TOP/share/dl/pr

export EPICS_DISPLAY_PATH=.:$GEMINI_TOP/share/dl/pr/data_MK
export EPICS_CA_ADDR_LIST="10.2.2.255"

dm2-4 -iconic PR_Master.dl top=pr:&

