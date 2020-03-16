#!/bin/bash
pulseaudio --start  
/sbin/start-stop-daemon --start --quiet --pidfile /tmp/xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- ${DISPLAY} -screen 0 ${DISPLAY_RESOLUTION} -ac +extension GLX +render
$@
