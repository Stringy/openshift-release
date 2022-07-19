#!/usr/bin/env bash

set -eo pipefail

source .openshift-ci/jobs/integration-tests/env.sh

env

.openshift-ci/jobs/integration-tests/gcloud-init.sh
sudo -u circleci .openshift-ci/jobs/integration-tests/run-integration-tests.sh
