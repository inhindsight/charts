# Hindsight Chart

This repo serves as the source of truth and public repository for the hindsight kubernetes chart.

### Usage
```
helm repo add inhindsight https://inhindsight.github.io/charts
helm repo update

helm upgrade hindsight inhindsight/hindsight \
     --install \
     --version 0.1.0 \
     --namespace default \
     --set image.tag=latest \
     # --set overrides
```

### Maintaining this chart

Upon updating chart artifacts inside the ./hindsight directory, you must run ./package.sh to generate new artifacts.

These artifacts will be generated according to the version in ./hindsight/Chart.yaml so in most cases this version should be updated before running ./package.sh.  The generated tars and index.yaml in the ./docs directory are what are served upon installing this chart using the usage instructions above
