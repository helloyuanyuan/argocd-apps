#!/bin/bash

JMETER_DEFAULT_ARGS="-n -Dlog_level.jmeter=${JMETER_LOG_LEVEL} -Jprometheus.ip=0.0.0.0"

echo "START Running Jmeter on `date`"
echo "jmeter log level = ${JMETER_LOG_LEVEL}"
echo "jmeter defautl args $JMETER_DEFAULT_ARGS"
echo "jmeter user args $@"

jmeter $@ $JMETER_DEFAULT_ARGS

echo "END Running Jmeter on `date`"