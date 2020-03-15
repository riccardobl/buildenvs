ARG NAMESPACE=""
FROM ${NAMESPACE}buildenvs:java

RUN add-apt-repository -y ppa:oibaf/graphics-drivers && \
apt-get update && \
apt-get upgrade -y &&\
apt-get install -y mesa-utils llvm-dev xvfb pulseaudio pulseaudio-utils &&\
sed -i 's/; exit-idle-time = 20/exit-idle-time = -1/' /etc/pulse/daemon.conf 

ENV DISPLAY=:99
ENV MESA_LOADER_DRIVER_OVERRIDE=llvmpipe
ENV DISPLAY_RESOLUTION=1400x900x24

COPY init.sh /init.sh
RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
