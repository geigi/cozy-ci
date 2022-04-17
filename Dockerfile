FROM debian:testing

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y python3 python3-pip libgirepository1.0-dev python3-gst-1.0 libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk-3-dev libgranite6 gir1.2-granite-1.0 libgranite-dev libxml2-utils appstream-util desktop-file-utils gettext
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y libhandy-1-0 gir1.2-handy-1 libhandy-1-dev
RUN pip install -r https://raw.githubusercontent.com/geigi/cozy/master/requirements.txt
RUN pip install flake8 pytest pytest-mock meson==0.61.0 ninja
