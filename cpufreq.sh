#!/bin/bash

if [ ! "`command -v cpupower`" ]; then
    echo "fail: \`cpupower\` missing | color=red"
    echo "---"
    echo "Please install \`cpupower\` tool ... | href='https://linux.die.net/man/1/cpupower'"
    exit
fi

current_frequency=`cpupower frequency-info -fm | grep "frequency:" | sed -e 's/.*: *//g' | sed -e 's/ *(.*//g'`
current_governor=`cpupower frequency-info | grep "may decide" | sed -e 's/.*"\(.*\)".*/\1/g'`
available_governors=`cpupower frequency-info -g | grep "governors:" | sed -e 's/.*: //g'`
switch_governor_command="sudo cpupower frequency-set -g"

echo "${current_frequency}"
echo "---"

for governor in ${available_governors}
do
    if [[ "${governor}" == "${current_governor}" ]]; then
        prefix="<b>"
        postfix=" •</b>"
    else
        prefix=""
        postfix=""
    fi
    echo "${prefix}${governor}${postfix} | terminal=false bash=\"${switch_governor_command} ${governor}\""
done

