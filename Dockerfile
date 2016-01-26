FROM drydock/u12nod:prod

RUN echo "================= Adding gclould binaries ============"
ENV CLOUD_SDK_REPO "cloud-sdk-trusty"
RUN echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN sudo apt-get update && sudo apt-get install google-cloud-sdk

RUN mkdir -p /tmp/logs
ADD . /src
