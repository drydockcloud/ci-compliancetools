# ci-compliancetools

Tools for generating compliance documents. For more information see the [Compliance Tools documentation](https://github.com/CivicActions/compliancetools).

## Getting Started

### Prerequisites

You will need to have Docker installed. See the [Install Docker docs](https://docs.docker.com/install/) for more information.

[Available on Docker Hub](https://hub.docker.com/r/drydockcloud/ci-secrender)

## Usage

1. Add the `activate` script and a `docker-compose.yml` file to your project root. Examples of these files are included in this repository.
1. Run `docker-compose pull`.
1. Run `. activate`.
1. Run any of the commands available to you; `createfiles`, `makefamilies`, and `makessp`

For more information about the commands, see the [documentation for compliancetools](https://github.com/CivicActions/compliancetools).

## License

This project is licensed under the GNU General Public License version 3 or any later version - see the [LICENSE](LICENSE) file for details. Some portions of this code are dedicated to the public domain under the terms of the Creative Commons

## Copyright

Copyright 2019-200 CivicActions, Inc.
