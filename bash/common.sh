#!/bin/bash

set -u

################################################################################
# PRINT HELPERS
################################################################################


function green()
{
        echo -e "\033[32m$*\033[0m"
}

function red()
{
        echo -e "\033[31m$*\033[0m"
}

function warn()
{
        echo -e "\033[33mWARN:$*\033[0m" >&2
}

function info()
{
        echo -e "\033[37mINFO:$*\033[0m" >&2
}

function echo_ok() {
        echo "✅ $*"
}

function echo_failure() {
        echo "❌ $*"
}

function echo_running() {
        echo_ok "$* is running"
}

function echo_not_running() {
        echo_failure "$* is not running"
}

################################################################################
# TEST FRAMEWORK
################################################################################

function assert()
{
        TEST_NAME="$1"
        shift
        CMD="$*"

        $CMD >.test_stdout 2>.test_stderr
        RT=$?

        if [ $RT -eq 0 ]
        then
                green ✅ $TEST_NAME
        else
                red ❌ $TEST_NAME
                cat .test_stderr
        fi

        rm -f .test_stdout .test_stderr
}

