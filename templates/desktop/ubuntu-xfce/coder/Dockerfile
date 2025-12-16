FROM codercom/enterprise-minimal:latest

USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests dbus-x11 libdatetime-perl openssl ssl-cert xfce4 xfce4-goodies && \
    rm /run/reboot-required* || true && \
    rm -rf /var/lib/apt/lists/*

# Setting the required environment variables
RUN echo 'LANG=ja_JP.UTF-8' >> /etc/default/locale && \
    echo 'export GNOME_SHELL_SESSION_MODE=ubuntu' > /etc/skel/.xsessionrc && \
    echo 'export XDG_CURRENT_DESKTOP=xfce' >> /etc/skel/.xsessionrc && \
    echo 'export XDG_SESSION_TYPE=x11' >> /etc/skel/.xsessionrc

USER coder
