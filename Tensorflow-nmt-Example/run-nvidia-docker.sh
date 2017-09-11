sudo nvidia-docker run -v `pwd`/nmt-host-model:/tmp/tensorflow-build/tensorflow-nmt/nmt_model -it tensorflow-nmt-de-en-translation:1.0 /bin/bash
