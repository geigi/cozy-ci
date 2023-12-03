FROM debian:testing

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y python3 python3-pip libgirepository1.0-dev python3-gst-1.0 libgtk-4-1 libgtk-4-bin libgtk-4-common libgtk-4-dev libxml2-utils appstream-util desktop-file-utils gettext virtualenv libadwaita-1-0 libadwaita-1-dev
RUN pip install --break-system-packages -r https://raw.githubusercontent.com/geigi/cozy/master/requirements.txt
RUN pip install --break-system-packages flake8 pytest pytest-mock meson==0.61.0 ninja
