# Working environment configuration

### My working environment
:loud_sound: I'm a **front-end web developer** so most of plugins are configured based on **front-end web development**.

## Installation

### How to install
I'm working on Mac OS based.
If you are using others,, **Please change your computer.**:zipper_mouth_face: <br>
(I'm sorry but I don't know how to install without Mac OS.)

### Where to clone this project

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
3. Run 'Mason' and 'LspInfo' in Neovim, then install the following:
```typescript
◍ bash-language-server bashls (keywords: bash)
◍ css-lsp cssls (keywords: css, scss, less)
◍ dockerfile-language-server dockerls (keywords: docker)
◍ eslint-lsp eslint (keywords: javascript, typescript)
◍ html-lsp html (keywords: html)
◍ json-lsp jsonls (keywords: json)
◍ lua-language-server lua_ls (keywords: lua)
◍ prettier (keywords: angular, css, flow, graphql, html, json, jsx, javascript, less, markdown, scss, typescript, vue, yaml)
◍ prettierd (keywords: angular, css, flow, graphql, html, json, jsx, javascript, less, markdown, scss, typescript, vue, yaml)
◍ shfmt (keywords: bash, mksh, shell)
◍ stylua (keywords: lua, luau)
◍ tailwindcss-language-server tailwindcss (keywords: css)
◍ typescript-language-server ts_ls (keywords: typescript, javascript)
```
<br>

:pushpin: **After that, you need to follow the instruction of each that**



## :rocket: Google Drive
1. "Google Drive.app" would like to start syncing.
   - OK


## :rocket: Alfred
Must be setted after Google Drive.
1. Change System setting
   1. Keyboard/Keyboard Shortcuts.../Spotlight
      - Disable 'Show Spotlight search'
2. Open Alfred and click 'Begin Setup..'
   - Activate Alfred Powerpack
3. Advanced/Set preferences folder...
   - Select your saved preferences folder


## :rocket: Brave-Browser
1. Settings
   1. Sync/Start using sysnc/I have a Sync Code
   2. install Extension
      - Vimium
         ```
         https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
         ```
         1. Extensions/Options/Restore
            - Choose your backup file
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
      - React Developer Tools
         ```
         https://chromewebstore.google.com/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi
         ```
         1. Dropdown `On all sites`
         2. Check `Allow access to file URLs`
   

## :rocket: Logi Options+
You must connect after Bluetooth connection.
1. SETTINGS/Restore backup
   - RESTORE SETTINGS FROM BACKUP


## :rocket: Mos
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


## :rocket: Doll
1. Select icons you want
2. Enable the following list
   - Launch at login
   - Grayout icons when there are no new notifications
   - Show notification as a red badge


## :rocket: System settings
:loud_sound: The following settings apply to macOS Sonoma only. 

### :black_small_square: Menu bar
| --- / Sound / Display / Wi-Fi / Google-Drive / Input source / Battery / Control center |


### :black_small_square: Change ENG/KOR convert keymap right command
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
       - Change 'Select next source in Input menu' to the 'Right command'.
       - DO NOT CHANGE 'Select the previous input source'.
       - Disable Select the previous input source.


### :black_small_square: Change Apple Press And Hold
   1. Please enter the following content in the terminal.
   ```
   defaults write -g ApplePressAndHoldEnabled -bool false
   ```
   2. You need to reboot for it to take effect.
   

### :black_small_square: Notifications
   - follow image below
<img width="482" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/5b01f96b-f96b-4a4a-a373-73b7512f70fc">


### :black_small_square: Sound
   - follow image below
<img width="480" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/a003e7e9-5251-4257-9236-0a66d2b60522">


### :black_small_square: Accessibility
   1. Display/Pointer
      - OFF 'Shake mouse pointer to locate'


### :black_small_square: Desktop & Dock
   - follow image below
<img width="481" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/c27c3888-a2e2-4636-97a1-a82424599873">


### :black_small_square: Displays
   1. Set 'More Space'
   2. Disable 'Automatically adjust brightness'


### :black_small_square: Battery
   1. Options...
      - follow image below
<img width="460" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/6d05e7d6-42c4-4317-b04a-90340c1fbff4">


### :black_small_square: Lock Screen
   - follow image below
<img width="487" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/e401d54e-fe69-4d14-8514-af77b8991cb3">


### :black_small_square: Passwords
   1. Password Options
      - Disable 'AutoFill Passwords and Passkeys'
   2. Enable 'Delete After Use'


### :black_small_square: Keyboard
   - follow image below
<img width="487" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/4b6f6877-dfdd-4f89-b91a-884cad6d0414">
<img width="634" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/d29a1597-0353-49de-87a4-8397d062f562">


### :black_small_square: Mouse
   You must connect after Bluetooth connection.
   - follow image below
<img width="489" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/fb1ebf28-edef-472a-aa1f-7bcee9b928a5">


### :black_small_square: Trackpad
   - follow image below
<img width="489" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/b29d6381-8f3e-45f5-a044-6c94d2e9eab2">
<img width="491" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/b15cd5a6-cb61-4728-b470-8fc139572e57">
<img width="490" alt="image" src="https://github.com/jskurt/dotfiles/assets/97920073/754fb040-a182-43b6-9f2a-0336af47f126">


### :black_small_square: FaceTime
   1. FaceTime/Settings/You can be reached for FaceTime at
      - Only use 1 phone number, 1 address.
   2. Start new calls from
      - Phone number.


### :black_small_square: Messages
   1. iMessage/Settings/You can be reached for messages at
      - Only use 1 phone number, 1 address.
   2. Start new conversations from
      - Phone number.
   3. Shared with You
      - Turn Off...


## :rocket: Custom key bindings
### :black_small_square: Tmux
- `Prefix` : Ctrl + b
- `Prefix` + <kbd>|</kbd> : Split window vertical.
- `Prefix` + <kbd>\_</kbd> : Split window horizontal.
- `Prefix` + <kbd>j</kbd> : Focus to bottom pane.
- `Prefix` + <kbd>k</kbd> : Focus to top pane.
- `Prefix` + <kbd>h</kbd> : Focus to left pane.
- `Prefix` + <kbd>l</kbd> : Focus to right pane.
- `Prefix` + <kbd>r</kbd> : Rename window name.
- `Prefix` + <kbd>R</kbd> : Rename session name.


### :black_small_square: Vimwiki
 - `<Leader>ww` : Open default wiki index file.
 - `<Leader>wt` : Open default wiki index file in a new tab.
 - `<Leader>ws` : Select and open wiki index file.
 - `<Leader>wd` : Delete wiki file you are in.
 - `<Leader>wr` : Rename wiki file you are in.
 - `<Enter>` : Follow/Create wiki link.
 - `<Shift-Enter>` : Split and follow/create wiki link.
 - `<Ctrl-Enter>` : Vertical split and follow/create wiki link.
 - `<Backspace>` : Go back to parent(previous) wiki link.
 - `<Tab>` : Find next wiki link.
 - `<Shift-Tab>` : Find previous wiki link.
