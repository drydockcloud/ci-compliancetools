#! /bin/sh

# To be a good citizen, set the default output directory to /results

createfiles -o /results "$@"
makefamilies -o /results "$@"
makessp -o /results "$@"