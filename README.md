# Setup a new mac
This is my little script to setup a new mac from scratch.
The best way to figure out what is going on, is probably to look at the `setup.sh` script itself. You're probably going to want to change things.

Simply run `$ sh setup.sh`, and the script will guide you through the rest.

# Things to do manually

## System Preferences
- General
    - Default web browser: Finicky
- Desktop & Screen Saver
    - Screen Saver: Aerial
- Keyboard -> Shortcuts
    - Keyboard
        - Move focus to next window: <kbd>⌥</kbd> + <kbd>⇥</kbd>
    - Spotlight
        - Uncheck all
- Displays
    - Resolution: Scaled - More Space
- Users & Groups
    - Add a new admin user with a unique password for test purposes.

## Divvy
- General
    - Start Divvy at login: on
    - Show Divvy in the menu bar: off
    - Cycle between screens when using shortcuts: on
- Shortcuts
    - Shift+Cmd+Ø = Lower right
    - Option+Pmd+P = Right two-thirds
    - Shift+Cmd+Arrow left = Left one-third
    - Shift+Cmd+M = Full Screen

## Visual Studio Code
- Install the [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) plugin ([Direct](vscode:extension/Shan.code-settings-sync))

## Safari
- Install the [1Password-plugin](https://safari-extensions.apple.com/details/?id=com.agilebits.onepassword4-safari-2BUA8C4S2C)
- Install [Better](https://itunes.apple.com/no/app/better-blocker/id1121192229?mt=12)
- Add the iCloud tabs button to the toolbar
#### Settings
- Search engine
    - DuckDuckGo
- Advanced
    - Show full website address

## Mail
- Remove the trash-button from messages, and add Archive

## OwnCloud
- Install the [ownCloud client](https://owncloud.org/install/#install-clients).

## Alfred
- Settings -> Advanced -> Set sync folder

## Shimo
- Add the PIA OpenVPN configs from the zip file in `/assets`

## Backblaze and CarbonCopyCloner
- Set these up *immedeately*.

## PGP
- Add the PGP keys to the GPG keychain
- Enable encrypting messages by default in the GPGMail settings (in Mail.app)
- Add the PGP signing key to Git:
    - List keys: `$ gpg --list-secret-keys --keyid-format LONG`
    - Copy the ID (after the slash) and add it to git: `$ git config --global user.signingkey [ID]`
