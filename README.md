# Working environment configuration

### My working environment
:loud_sound: I'm a **front-end web developer** so most of plugins are configured based on **front-end web development**.

## Installation

### How to install
I'm working on Mac OS based.
If you are using others,, **Please change your computer.**:zipper_mouth_face: <br>
(I'm sorry but I don't know how to install without Mac OS.)

#### Where to clone this project

It's totally up to you. I just cloned it inside my home directory folder using following command.

```zsh
git clone https://github.com/jskurt/dotfiles.git
```

The Mac OS will automatically install a 'git' when you run the command.

Then you need to clone it again and run the command below.

```zsh
cd dotfiles
sh bootstrap.sh
```

This will install all the programs needed for development.
After you install it do not for get, 
1. Change your terminal font to 'Hack Nerd Font Mono'.
2. Run 'Prefix + I' in tmux.

:pushpin: **After that, you need to follow the instruction of each that**

---


### :rocket: Google Drive
1. "Google Drive.app" would like to start syncing.
   - OK
---


### :rocket: Alfred
Must be setted after Google Drive.
1. Change System setting
   1. Keyboard/Keyboard Shortcuts.../Spotlight
      - Disable 'Show Spotlight search'
2. Open Alfred and click 'Begin Setup..'
   - Activate Alfred Powerpack
3. Advanced/Set preferences folder...
   - Select your saved preferences folder
---


### :rocket: Brave-Browser
1. Settings
   1. Sync/Start using sysnc/I have a Sync Code
   2. install Extension
      - Vimium
         ```
         https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
         ```
      - DeepL
         ```
         https://chromewebstore.google.com/detail/deepl-%EB%B2%88%EC%97%AD/cofdbpoegempjloogbagkncekinflcnj?utm_source=deeplcom-en
         ```
         1. Translate selected text into
            - Korean
         2. Translate your writing into
            - Korean
         3. Show the floating DeepL icon 
            - Disable
   
---


### :rocket: Logi Options+
You must connect after Bluetooth connection.
1. SETTINGS/Restore backup
   - RESTORE SETTINGS FROM BACKUP
---


### :rocket: Mos
1. Execute the program 
2. System settings/Privacy & Security
   - Open Anyway
3. General/Scroll
   - Enable 'Smooth Scrolling'
4. General/Miscellaneous
   - Enable 'Launch on Login'
   - Enable 'Hide Status Bar Icon'
5. Advanced/Step
   - 100
6. Advanced/Speed
   - 1
7. Advanced/Duration
   - 1 
---


### :rocket: Doll
1. Select icons you want
2. Enable the following list
   - Launch at login
   - Grayout icons when there are no new notifications
   - Show notification as a red badge
---


### :rocket: System settings
1. Change ENG/KOR convert keymap right command
   1. Please enter the following content in the terminal.
   ```
   mkdir -p /Users/Shared/bin
   echo '''#!/bin/sh\nhidutil property --set '\'{\"UserKeyMapping\":\[\{\"HIDKeyboardModifierMappingSrc\":0x7000000e7,\"HIDKeyboardModifierMappingDst\":0x70000006d\}\]\}\''''' > /Users/Shared/bin/userkeymapping
   chmod 755 /Users/Shared/bin/userkeymapping
   sudo cat<<: >/Users/Shared/bin/userkeymapping.plist
   <?xml version="1.0" encoding="UTF-8"?>
   <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
   <plist version="1.0">
   <dict>
       <key>Label</key>
       <string>userkeymapping</string>
       <key>ProgramArguments</key>
       <array>
           <string>/Users/Shared/bin/userkeymapping</string>
       </array>
       <key>RunAtLoad</key>
       <true/>
   </dict>
   </plist>
   :
   sudo mv /Users/Shared/bin/userkeymapping.plist /Library/LaunchAgents/userkeymapping.plist
   sudo chown root /Library/LaunchAgents/userkeymapping.plist
   sudo launchctl load /Library/LaunchAgents/userkeymapping.plist
   ```
   2. System setting/Keyboard/Keyboard Shortcuts.../Input Sources
      - Change 'Select the previous input source' to the 'Right command'.

2. Notifications
   - follow image below

3. Accessibility
   1. /Display/Pointer
      - OFF 'Shake mouse pointer to locate'

4. Desktop & Dock
   - follow image below

5. Displays
   1. Set 'More Space'
   2. Disable 'Automatically adjust brightness'

6. Battery
   1. Options...
      - follow image below

7. Lock Screen
   - follow image below

8. Passwords
   1. Password Options
      - Disable 'AutoFill Passwords and Passkeys'
   2. Enable 'Delete After Use'

9. Keyboard
   - follow image below

10. Mouse
   You must connect after Bluetooth connection.
   - follow image below

11. Trackpad
   - follow image below

12. Messages
   1. iMessage/Settings/You can be reached for messages at
      - Only use 1 phone number, 1 address.
   2. Start new conversations from
      - Phone number.
   3. Shared with You
      - Turn Off...

13. FaceTime
   1. FaceTime/Settings/You can be reached for FaceTime at
      - Only use 1 phone number, 1 address.
   2. Start new calls from
      - Phone number.
    



## Custom key bindings
### Tmux
 - `Prefix` : Ctrl + b
- `Prefix` + <kbd>|</kbd> : Split window vertical
- `Prefix` + <kbd>\_</kbd> : Split window horizontal
- `Prefix` + <kbd>j</kbd> : Focus to bottom pane
- `Prefix` + <kbd>k</kbd> : Focus to top pane
- `Prefix` + <kbd>h</kbd> : Focus to left pane
- `Prefix` + <kbd>l</kbd> : Focus to right pane
- `Prefix` + <kbd>r</kbd> : Rename window name
- `Prefix` + <kbd>R</kbd> : Rename session name
