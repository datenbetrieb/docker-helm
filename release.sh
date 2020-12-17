#/bin/sh

# not very sane but working
# export BUILD_VER=3.4.2
export BUILD_VER=$1
sed -i -r -e "s/^(ENV VERSION=)(.*)*/\1${BUILD_VER}/" Dockerfile
docker build . || exit 99
git add Dockerfile
git commit -m "feat: helm $BUILD_VER"
git tag -m "helm $BUILD_VER" $BUILD_VER
