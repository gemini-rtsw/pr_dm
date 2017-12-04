#!/bin/bash

source /etc/profile

#export EPICS_DISPLAY_PATH=.:../adl/CP/

export EPICS_DISPLAY_PATH=.:$GEMINI_TOP/share/dl/pr/data_CP
export EPICS_CA_ADDR_LIST="172.17.2.255"

dm2-4 -iconic PR_Master.dl top=pr:&

