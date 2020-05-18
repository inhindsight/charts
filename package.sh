#!/usr/bin/env bash

set -eo pipefail

mkdir tmp_charts
mkdir -p docs

helm package hindsight -u -d tmp_charts
helm repo index --merge index.yaml tmp_charts

mv tmp_charts/*.tgz docs/
mv tmp_charts/index.yaml index.yaml

rm -rf tmp_charts
