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
     # --set overrides

### Maintaining this chart

TODO: Dont forget to fill this in  
