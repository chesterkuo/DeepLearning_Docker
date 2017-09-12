mkdir -p nmt-host-attention-model
sudo nvidia-docker run -v `pwd`/nmt-host-attention-model:/tmp/tensorflow-build/tensorflow-nmt/nmt_attention_model -it tensorflow-nmt-vi-en-translation:1.0 /bin/bash
