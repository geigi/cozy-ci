FROM ubuntu:jammy

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y python3 python3-pip libgirepository1.0-dev python3-gst-1.0 libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk-3-dev libgranite6 gir1.2-granite-1.0 libgranite-dev
RUN pip install -r https://raw.githubusercontent.com/geigi/cozy/master/requirements.txt
RUN pip install flake8 pytest pytest-mock