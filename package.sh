#!/usr/bin/env bash

mkdir tmp_charts
mkdir -p docs/

helm package hindsight -u -d tmp_charts
helm repo index --merge docs/index.yaml tmp_charts

mv tmp_charts/*.tgz docs
mv tmp_charts/index.yaml docs/index.yaml

rm -rf tmp_charts
