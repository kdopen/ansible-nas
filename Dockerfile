FROM python:3-slim-bullseye

RUN apt update && apt upgrade -y \
    && apt install -y \
	openssh-client \
   	vim \
   	sshpass \
   	avahi-daemon \
    && mkdir -p -m 777 /ansible-nas \
    && pip install ansible


WORKDIR /ansible-nas
COPY . .

ENTRYPOINT ["/usr/bin/env"]
CMD ["bash"]


