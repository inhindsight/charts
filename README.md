# Hindsight Chart

This repository serves as the official location for the hindsight kubernetes chart.  This chart is hosted and available at https://inhindsight.github.io/charts/index.yaml

### Instruction

* To install perform the following steps:
```
helm repo add inhindsight https://inhindsight.github.io/charts
helm repo update

helm upgrade hindsight inhindsight/hindsight \
     --install \
     --version 0.1.0 \
     --namespace default
     # --set overrides here
```

### Notes

* This chart defaults the image.tag to latest
