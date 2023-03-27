#! /bin/sh

# Copyright 2019-2020 CivicActions, Inc. See the README file at the top-level
# directory of this distribution and at https://github.com/drydockcloud/ci-compliancetools#copyright.

# To be a good citizen, set the default output directory to /results

createfiles -o /results "$@"
makefamilies -o /results "$@"
makessp -o /results "$@"
