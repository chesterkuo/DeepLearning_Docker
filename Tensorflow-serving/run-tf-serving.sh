sudo nvidia-docker run --name tf-serving -it -p 9000:9000 -v `pwd`/../Tensorflow-nmt-Example/nmt-host-attention-model:/tmp/model -e TF_SERVING_PORTE=9000 -e TF_SERVING_MODEL_NAME=NMT -e TF_SERViNG_MODEL_PATH=/tmp/model tensorflow-serving-gpu:1.0 

