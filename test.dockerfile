FROM python:3.9-slim-buster
USER root
WORKDIR /root
ENV PYTHONPATH /root
RUN apt-get update && apt-get install build-essential -y
RUN apt-get install git -y
# The following line is an example of how to install your modified plugins. In this case, it demonstrates how to install the 'deck' plugin.
# RUN pip install -U git+https://github.com/Yicheng-Lu-llll/flytekit.git@"demo#egg=flytekitplugins-deck-standard&subdirectory=plugins/flytekit-deck-standard" # replace with your own repo and branch
RUN pip install -U git+https://github.com/hebiao064/flytekit.git@bhe/test # replace with your own repo and branch
ENV FLYTE_INTERNAL_IMAGE "localhost:30000/flytekit:test" # replace with your own image name and tag
