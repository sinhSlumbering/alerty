```
  
 ________  ___       _______   ________  _________    ___    ___ 
|\   __  \|\  \     |\  ___ \ |\   __  \|\___   ___\ |\  \  /  /|
\ \  \|\  \ \  \    \ \   __/|\ \  \|\  \|___ \  \_| \ \  \/  / /
 \ \   __  \ \  \    \ \  \_|/_\ \   _  _\   \ \  \   \ \    / / 
  \ \  \ \  \ \  \____\ \  \_|\ \ \  \\  \|   \ \  \   \/  /  /  
   \ \__\ \__\ \_______\ \_______\ \__\\ _\    \ \__\__/  / /    
    \|__|\|__|\|_______|\|_______|\|__|\|__|    \|__|\___/ /     
                                                    \|___|/
```


`Alerty` lets you jumpscare yourself using only the terminal. Oh and ig it can be used to time stuff as well. Shoutout to all my pomodoro homies.

## Features

- Set an alarm for any duration using hours, minutes, and/or seconds.
- Customize the alarm sound, or use the default sound provided.
- Send a desktop notification when the alarm triggers (Linux `notify-send` required).
- Run alarms as background processes so that the terminal remains usable.
- Optional message customization for the notification pop-up.

## Installation

To install Alerty and make it globally accessible, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/alerty.git
   cd alerty
   ```
2. Make the install script executable:
   ```bash
   chmod +x ./install.sh
```

3. Run the installation script with `sudo`:
   ```bash
   sudo ./install.sh
   ```

4. Verify the installation by running:
   ```bash
   alerty --help
   ```

## Usage

You can set alarms with flexible timing options. Here’s how to use `alerty`:

```bash
Usage: alerty [OPTIONS]

Options:
  -h <hours>            Set hours for the alarm timer.
  -m <minutes>          Set minutes for the alarm timer.
  -s <seconds>          Set seconds for the alarm timer.
  -f <track>            Specify a custom alarm sound file.
  -df <track>           Set a default alarm sound file (used if -f is not specified).
  -sm, --set-message    Set a custom notification message.
  --status              Check if an alarm is running.
  --stop                Stop the currently running alarm.
  --help                Display this help message.
```

### Examples

- **Set an alarm for 45 seconds with a custom sound**:
  ```bash
  alerty -s 45 -f /path/to/custom/sound.mp3
  ```

- **Set an alarm with a custom notification message**:
  ```bash
  alerty -s 10 -sm "Time's up!"
  ```


## Requirements

- **Linux OS** (tested on arch btw)
- `ffmpeg` :
  ```bash
  sudo apt install ffmpeg
  ```
  
- **`notify-send`**: For desktop notifications. Install via `libnotify-bin` package:
  ```bash
  sudo apt install libnotify-bin
  ```

## Uninstallation

To nuke `alerty` 

```bash
sudo rm /usr/local/bin/alerty
sudo rm -rf /usr/local/share/alerty
```


---

Embrace the kamla with `alerty`! 🎶⏰
