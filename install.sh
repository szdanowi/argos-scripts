#!/bin/bash

SRC_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
TGT_DIR="${HOME}/.config/argos"

SRC_NAME="cpufreq.sh"
TGT_NAME="cpufreq.3s.sh"

echo ""
echo "Linking from: ${SRC_DIR}"
echo "Linking to:   ${TGT_DIR}"
echo ""

if [ ! -d "${TGT_DIR}" ]; then
    echo "Error: ${TGT_DIR} does not exist - is argos extension installed?"
    echo "Aborting."
    exit
fi

echo "Linking ${SRC_NAME} as ${TGT_NAME} ..."
cd "${TGT_DIR}"
ln -s -i "${SRC_DIR}/${SRC_NAME}" "${TGT_NAME}"
echo "... Done."
echo ""
