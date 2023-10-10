#!/bin/bash
export JAVA_BIN_DIR=/usr/java/default/bin # replace with your installed directory
cd ${JAVA_BIN_DIR}
a=(java javac javadoc javah javap javaws)
for exe in ${a[@]}; do
    sudo update-alternatives --install "/usr/bin/${exe}" "${exe}" "${JAVA_BIN_DIR}/${exe}" 1
    sudo update-alternatives --set ${exe} ${JAVA_BIN_DIR}/${exe}
done
