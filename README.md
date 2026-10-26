
## Install rofi

```bash
sudo apt install rofi
```

## One-command install for Ubuntu 24.04

From the project folder, run:

```bash
cd ~/path/to/audio_switch
chmod +x ./install_audio_switch_shortcut.sh
./install_audio_switch_shortcut.sh
```

This command will:
- make the audio switch script executable
- install rofi if it is missing
- create a GNOME custom shortcut for Super + Shift + V

After the script finishes, press Win + Shift + V to open the audio output selector.

## Manual setup

1. Go to the project folder:

```bash
cd ~/path/to/audio_switch
```

2. Make the script executable:

```bash
chmod +x ./audio_switch
```

3. Open Settings → Keyboard → Keyboard Shortcuts → Custom Shortcuts.
4. Click Add.
5. Set:
   - Name: Audio Switch
   - Command: /home/your-user/path/to/audio_switch/audio_switch

   Replace /home/your-user/path/to/audio_switch with the actual location of the project on your PC.
6. Click Set Shortcut and press Super + Shift + V.
7. Click Add and close the window.

Now pressing Win + Shift + V will open the audio output selector.

If the shortcut does not work, check whether another shortcut already uses the same key combination.



