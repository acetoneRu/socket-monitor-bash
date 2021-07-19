### socket-monitor-bash
Checking socket availability and fixing if socket is unresponsive.

## Using

  - Edit `ADDRESS` and `PORT` in `monitor.expect`;
  - Edit `ACTION` in `monitor.sh`;
  - Make `monitor.expect` and `monitor.sh` executable (`chmod +x`);
  - Configure `socket-monitor` for your `/path/to/monitor.sh`, make it executable (`chmod +x socket-monitor`) and move it to `/etc/cron.hourly/`.


