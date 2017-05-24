from i3pystatus import Status

status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
                format="%a %-d %b %X KW%V",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
                interval=10,)

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
                interval=5,
                format=" {temp:.0f}°C",)


status.register("backlight",
                interval=2,
                base_path="/sys/class/backlight/intel_backlight/",
                format=" {percentage}%",)

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
status.register("battery",
                format="{status} {percentage:.2f}% {remaining:%E%hh:%Mm}",
                alert=True,
                alert_percentage=5,
                interval=10,
                color="#ffffff",
                full_color="#ffffff",
                charging_color="#ffffff",
                critical_color="#ff0000",
                status={
                    "DPL": "",
                    "DIS": "",
                    "CHR": "",
                    "FULL": "",
                },)

# Displays whether a DHCP client is running
#status.register("runwatch", name="DHCP", path="/var/run/dhclient*.pid",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)


# Note: requires both netifaces and basiciw (for essid and quality)
#status.register("network", interface="wlo1", format_up="{quality:.0f}% {essid}",)
status.register(
    "network",
    interval=10,
    interface="wlp3s0",
    divisor=1024 * 8,
    dynamic_color=False,
    color_up="#ffffff",
    format_up=" {essid} {quality}% {bytes_sent}KB/s {bytes_recv}KB/s",
    format_down=" ",)
# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
                interval=60,
                path="/media/data/",
                format=" {percentage_used}%",)

status.register("disk",
                interval=60,
                path="/",
                format=" {percentage_used}%",)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
                format=" {volume}%",)

# Shows mpd status
# Format:
# Cloud connected Reroute to Remain
status.register("now_playing",
                format="  {status} {title} - {album}",
                format_no_player="  {status}",
                status={
                    "pause": "",
                    "play": "",
                    "stop": "",
                },)

status.run()
