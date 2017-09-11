sudo -E docker build --build-arg HTTP_PROXY=http://proxy-chain.intel.com:911 -t tensorflow-nmt-vi-en-translation:1.0 -f ./Dockerfile-x86-cuda8.0-cudnn6-ubuntu16.04 .
