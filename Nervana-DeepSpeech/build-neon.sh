sudo -E docker build --build-arg HTTP_PROXY=http://proxy-chain.intel.com:911 -t neon-cuda8-cudnn6:2.1.0 -f ./Dockerfile-x86-cuda8.0-cudnn6-ubuntu16.04-neon-2.1 .
