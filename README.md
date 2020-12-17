# helm3 + kubectl

docker image with helm3 and kubectl baked in

# usage

## helm3

    docker run --rm -it datenbetrieb/helm

## kubectl

    docker run --rm -it --entrypoint "" datenbetrieb/helm kubectl version

# release

quick and dirty, update, commit and tag a version

```./release.sh 3.4.3```
