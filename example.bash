#!/usr/bin/env bash

 . "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bash_toolkit.bash"


 is_strictly_positive_integer() {
     [[ $# -eq 1 ]] && [[ "$1" =~ ^[0-9]+$ ]] && [[ $1 -gt 0 ]] || \
     { error "$FUNCNAME: $1 must be a valid integer and > 0" ; return 1 ;}
 }

 # function __report_on_error() {
 #     local error_code=${?}
 #     error "Error in ${__file} on line ${1}"
 #     exit ${error_code}
 # }
 # ## trap call on ERROR will catch all errors including those inside functions
 # trap '__report_on_error ${LINENO}' ERR



info "__file: ${__file}"
info "__dir: ${__dir}"
info "__file_basename: ${__file_basename}"



echo "1"
is_strictly_positive_integer $1
echo "2"

# if needed
# trap __clean_up_before_exit EXIT

# info "$(echo -e "multiple lines example - line #1\\nmultiple lines example - line #2\\nimagine logging the output of 'ls -al /path/'")"

# # All of these go to STDERR, so you can use STDOUT for piping machine readable information to other software
# debug "Info useful to developers for debugging the application, not useful during operations."
# info "Normal operational messages - may be harvested for reporting, measuring throughput, etc. - no action required."
# notice "Events that are unusual but not error conditions - might be summarized in an email to developers or admins to spot potential problems - no immediate action required."
# warning "Warning messages, not an error, but indication that an error will occur if action is not taken, e.g. file system 85% full - each item must be resolved within a given time. This is a debug message"
# error "Non-urgent failures, these should be relayed to developers or admins; each item must be resolved within a given time."
# critical "Should be corrected immediately, but indicates failure in a primary system, an example is a loss of a backup ISP connection."
# alert "Should be corrected immediately, therefore notify staff who can fix the problem. An example would be the loss of a primary ISP connection."
# emergency "A \"panic\" condition usually affecting multiple apps/servers/sites. At this level it would usually notify all tech staff on call."
