#!/bin/bash
#
# Test a Stack template by instantiating it and then running tests and benchmarks.

set -e

STACK=stack
STACK_CONFIG="${PWD}/test-config.yaml"

main() {
    local template_file="${PWD}/$1"
    local tmp_dir
    tmp_dir="$(mktemp -d)"
    local project_name="test-project"
    cd "${tmp_dir}"
    STACK_CONFIG="${STACK_CONFIG}" "${STACK}" new "${project_name}" --bare "${template_file}"
    STACK_CONFIG="${STACK_CONFIG}" "${STACK}" test --fast
    STACK_CONFIG="${STACK_CONFIG}" "${STACK}" bench --fast
    # Deliberately leave the directory around if the test fails so we can
    # debug the failure.
    rm -rf "${tmp_dir}"
}

main "$@"
