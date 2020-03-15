#!/bin/bash
pulseaudio --daemonize --system
pulseaudio --check --system 
/sbin/start-stop-daemon --start --quiet --pidfile /tmp/xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- ${DISPLAY} -screen 0 ${DISPLAY_RESOLUTION} -ac +extension GLX +render
$@
