#!/bin/bash

set -eo pipefail

for i in {1..100}; do
  buildkite-agent pipeline upload <<YAML
  steps:
    - label: "Agent Load Test"
      command: "echo Running job $i && sleep 30"
  YAML
done

exit 0