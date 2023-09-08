#!/bin/bash

help() {
    echo "$0 [ARGS]"
    echo ""
    echo "ARGS"
    echo "<no args>  Install entire playbook"
    echo "dev        Install only developer tools"
    echo ""
}


if [ $# -eq 0 ]; then
    echo "Run full ansible playbook on local machine"
    ansible-playbook -c local local.yml
    exit 0
fi


case "$1" in
  "-h" | "--help")
    help
    exit 0
    ;;
  "dev")
    echo "Run only developer task from within the ansible playbook on local machine"
    ansible-playbook -c local local.yml --tags "dev"
    exit 0
    ;;
  *)
    echo "Unknown command '$1'"
    help
    exit 1
    ;;
esac
