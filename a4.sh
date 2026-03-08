#!/bin/bash

set -e

marks=("90" "80" "60" "20")

unset marks[3]

echo "${marks[@]}"


