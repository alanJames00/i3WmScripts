# i3wm Scripts

Collection of shell-scripts and tools for the i3wm ecosystem

## Contents
### 1. brightnessctl_script.sh

- Control screen brightness with built-in laptop function keys. 
- Comes with dunstify notification. Uses brightnessctl commandline tool. 
- If you're not able to use xrand successfully previously, this is the ultimate script you'll ever need.

**Dependencies**:
- brightnessctl
- dunstify (For bar notifications)

### 2. trackpad_toggle_script.

- Toggle laptop trackpad/touchpad with built-in laptop function keys.
- Uses xinput for disabling and enabling trackpad

**Dependencies**:
- xinput
- notify-send (For sending notifications)