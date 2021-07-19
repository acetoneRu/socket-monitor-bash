#!/bin/bash

# Action to take if the socket is unresponsive:
ACTION="systemctl restart tinyproxy"

status() {
        ./monitor.expect $1 > /dev/null
        if [[ $? == "111" ]]; then
                return 1
        else
                return 0
        fi
}

main() {
        cd $(dirname "$0")

        status
        result=$?
        if [[ $result == 1 ]]; then
                echo Works!
        else
                echo Offline...
                $ACTION              
                sleep 3
                main
        fi
}

main