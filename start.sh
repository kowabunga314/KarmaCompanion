#!/bin/bash
source ./venv/bin/activate

export FLASK_APP=karma_companion
export FLASK_DEBUG=false

while [ "$1" != "" ]; do
    case $1 in
        -d | --debug )          export FLASK_DEBUG=true
                                ;;
        * )                     exit 1
    esac
    shift
done

flask run
