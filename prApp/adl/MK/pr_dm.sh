#!/bin/bash


export EPICS_DISPLAY_PATH=.:$GEMINI_TOP/share/dl/pr

exec pr${GEMINI_SITE}_dm.sh

