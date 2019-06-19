#!/usr/bin/env bash

# Copyright 2019 Albert Lloveras Carbonell
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
# associated documentation files (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or
# substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
# NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

set -eu pipefail

RESET_STYLES="\033[0m"        # No text format at all (default to terminal settings)

SUCCESS_COLOR="\033[32m"      # Green
INFO_COLOR="\033[34m"         # Blue
WARNING_COLOR="\033[33m"      # Yellow
ERROR_COLOR="\033[31m"        # Red

SUCCESS_ICON="✅"
INFO_ICON="==>"
WARNING_ICON="🔔"
ERROR_ICON="❌"

BOLD_FONT="\033[1m"
UNDERLINE_FONT="\033[4m"

function print_info() {
    echo -e "${INFO_COLOR}${INFO_ICON}${RESET_STYLES} ${BOLD_FONT}${@}${RESET_STYLES}"
}

function print_success(){
    echo -e "${SUCCESS_COLOR}${SUCCESS_ICON}${RESET_STYLES}  ${BOLD_FONT}${@}${RESET_STYLES}"
}   

function print_error() {
    echo -e "${ERROR_COLOR}${ERROR_ICON}${RESET_STYLES}  ${BOLD_FONT}${@}${RESET_STYLES}"
} 

function print_warning() {
    echo -e "${WARNING_COLOR}${WARNING_ICON}${RESET_STYLES}  ${BOLD_FONT}${@}${RESET_STYLES}"
}