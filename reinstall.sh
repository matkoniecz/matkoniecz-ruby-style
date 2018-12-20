#!/usr/bin/env bash
set -Eeuo pipefail
IFS=$'\n\t'
err_report() {
    echo "Error on line $1"
}
trap 'err_report $LINENO' ERR

rm ./*.gem
gem build ./*.gemspec
gem install --user-install ./*.gem
