#!/usr/bin/env bash

mkdir tmp_charts
mkdir -p docs

helm package charts -u -d tmp_charts
helm repo index --merge index.yaml tmp_charts

mv tmp_charts/*.tgz docs/
mv tmp_charts/index.yaml index.yaml

rm -rf tmp_charts
