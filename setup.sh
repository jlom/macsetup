#!/usr/bin/env bash

echo ""
echo "  \xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85";
echo " \xE2\x96\x88                    \xE2\x96\x88";
echo "\xE2\x96\x8B      \xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84   \xE2\x96\x8B";
echo "\xE2\x96\x8B  \xE2\x96\x88                \xE2\x96\x88  \xE2\x96\x8B";
echo "\xE2\x96\x8B  \xE2\x96\x88    \xE2\x96\x88   \xE2\x96\x88  \xE2\x96\x88    \xE2\x96\x88  \xE2\x96\x8B";
echo "\xE2\x96\x8B  \xE2\x96\x88        \xE2\x96\x88       \xE2\x96\x88  \xE2\x96\x8B";
echo "\xE2\x96\x8B  \xE2\x96\x88       \xE2\x96\x80\xE2\x96\x80       \xE2\x96\x88  \xE2\x96\x8B       ,          _   _";
echo "\xE2\x96\x8B  \xE2\x96\x88     \xE2\x96\x80\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x80     \xE2\x96\x88  \xE2\x96\x8B      /|   |     | | | |";
echo "\xE2\x96\x8B  \xE2\x96\x88                \xE2\x96\x88  \xE2\x96\x8B       |___|  _  | | | |  __";
echo "\xE2\x96\x8B   \xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80\xE2\x96\x80   \xE2\x96\x8B       |   |\x5C|/  |/  |/  /  \x5C_";
echo "\xE2\x96\x8B                      \xE2\x96\x8B       |   |/|__/|__/|__/\x5C__/";
echo "\xE2\x96\x8B  \xE2\x96\x85\xE2\x96\x85\xE2\x96\x85        \xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85\xE2\x96\x85  \xE2\x96\x8B";
echo "\xE2\x96\x8B                      \xE2\x96\x8B";
echo "\xE2\x96\x8B                      \xE2\x96\x8B";
echo " \xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84";
echo " \xE2\x96\x88                    \xE2\x96\x88";
echo " \xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84\xE2\x96\x84";
echo ""
echo "========================================================================"
echo ""
echo "Congratulations on your new mac. Let's get everything set up!"

# Ask for sudo pwd up front
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Ask for user variables up front too
echo "SET COMPUTER NAME"
echo "It's a good idea not to have your actual name or identifying information"
echo "as part of the computer name."
read COMPUTER_NAME

echo "========================================================================"
echo "SET YOUR GITHUB and SSH INFORMATION"
echo "Your name?"
read YOUR_NAME
echo "Your email?"
read YOUR_EMAIL
echo "========================================================================"
echo "Installing xcode tools and brew"
echo "========================================================================"
# Install xcode tools
xcode-select --install

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Opt out of brew analytics
brew analytics off

echo "========================================================================"
echo "Installing brew packages"
echo "========================================================================"
# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-which --with-default-names

# Install Bash 4
brew install bash

# Install brew packages
PACKAGES=(
    android-sdk
    catimg
    cowsay
    diff-so-fancy
    exa
    ffmpeg
    git
    givegif
    hub
    imagemagick
    lynx
    markdown
    mas
    node
    npm
    nvm
    openssl
    python
    python3
    thefuck
    tree
    watch
    wget
    zsh
)
for $package in ${PACKAGES[@]}; do
    brew install ${package}
done

echo "========================================================================"
echo "Installing brew casks"
echo "========================================================================"
# Install cask apps
CASKS=(
    1password
    alfred
    android-platform-tools
    atext
    backblaze
    bartender
    carbon-copy-cloner
    caskroom/versions/google-chrome-canary
    cleanmymac
    devdocs
    divvy
    finicky
    gemini
    gpg-suite
    istat-menus
    iterm2
    mailbutler
    monodraw
    noun-project
    paw
    rightfont
    shimo
    skype
    slack
    soulver
    spotify
    torbrowser
    tower
    virtualbox
    visual-studio-code
    vlc
)
for $cask in ${CASKS[@]}; do
    brew cask install ${$cask} --appdir=/Applications
done

echo "========================================================================"
echo "Installing Mac App Store apps"
echo "========================================================================"
# Install Mac App Store apps
# Cinch
mas install 412529613
# Tweetbot
mas install 557168941
# Better Blocker
mas install 1121192229
# Fantastical
mas install 975937182
# Deliveries
mas install 924726344

echo "========================================================================"
echo "Installing typefaces"
echo "========================================================================"
# Install fonts
brew tap caskroom/fonts
FONTS=(
    font-fira-code
    font-source-sans-pro
)
for ((i=0; i<${#CASKS[@]}; ++i)); do
    brew cask install ${FONTS[i]} || true
done

# Install Droid Sans Mono Awesome
cp -f ./assets/DroidSansMonoAwesome.ttf /Library/Fonts/DroidSansMonoAwesome.ttf

echo "========================================================================"
echo "Installing NPM global packages, Sass, etc."
echo "========================================================================"
# Install global NPM packages
npm i -g grunt-cli spoof

# Install Sass and setup
sudo gem install sass


echo "========================================================================"
echo "Cleaning up"
echo "========================================================================"
# Clean up after ourselves
brew cleanup

echo "========================================================================"
echo "Setting up Zsh"
echo "========================================================================"
# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Zsh autocompletion
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Powerlevel 9K
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh iTerm Touchbar
git clone https://github.com/iam4x/zsh-iterm-touchbar.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins

# Add .zshrc
cp -f ./assets/.zshrc ~/.zshrc

echo "========================================================================"
echo "Adding assorted preference files"
echo "========================================================================"
# Add iTerm2 profile
cp -f ./assets/com.googlecode.iterm2.plist ~/Library/Application\ Support/iTerm2/DynamicProfiles/com.googlecode.iterm2.plist

# Add finicky rc
cp -f ./assets/.finicky.js ~/.finicky.js

# Add diff-so-fancy config
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

echo "========================================================================"
echo "Setting up Git"
echo "========================================================================"
git config --global user.name ${YOUR_NAME}
git config --global user.email ${YOUR_EMAIL}
git config --global pull.rebase true

echo "========================================================================"
echo "Generating SSH keys and config"
echo "========================================================================"
ssh-keygen -t rsa -b 4096 -C ${YOUR_EMAIL} -f ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
cp -f ./assets/config ~/.ssh/config


echo "========================================================================"
echo "Making hosts file"
echo "========================================================================"
sudo cp -f ./assets/hosts /private/etc/hosts
curl "http://someonewhocares.org/hosts/zero/hosts" | sudo tee -a /etc/hosts

echo "========================================================================"
echo "Setting DNS for Wifi"
echo "========================================================================"
sudo networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.4.4
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

echo "========================================================================"
echo "Setting Firmware password"
echo "========================================================================"
# Prompt for FW password when booting from a different volume
FW_PWD=$(openssl rand -base64 8)
pbcopy < echo ${FW_PWD}
echo "Prompt for FW password when booting from a different volume"
echo "If you need to set a new Firmware password, may I suggest:"
echo ${FW_PWD}
echo "Randomly generated by openssl - SAVE THIS SOMEWHERE SAFE!!!!"
echo "(The suggested password is on the pasteboard as well)"
sudo firmwarepasswd -setpasswd -setmode command

echo "========================================================================"
echo "Setting computer name"
echo "========================================================================"
# Set computer name (Variable up top)
# Note: Always a good idea not to include your name in the computer name
sudo scutil --set ComputerName ${COMPUTER_NAME}
sudo scutil --set HostName ${COMPUTER_NAME}
sudo scutil --set LocalHostName ${COMPUTER_NAME}
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string ${COMPUTER_NAME}

echo "========================================================================"
echo "Enable Filevault"
echo "========================================================================"
# Enable FileVault
sudo fdesetup enable

echo "========================================================================"
echo "Turn on the firewall, and enable logging and stealth mode"
echo "========================================================================"
# Turn on the firewall, and enable logging and stealth mode
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

echo "========================================================================"
echo "Creating a new admin user"
echo "========================================================================"
## So I don't have to give up my real password to Apple, in case I need to hand
## the machine over at some point.
## =============================================================================
TESTADMIN_PASSWORD=$(openssl rand -base64 8)
sudo dscl . create /Users/testadmin
sudo dscl . create /Users/testadmin RealName "Test Administrator"
sudo dscl . create /Users/testadmin hint ""
sudo dscl . passwd /Users/testadmin ${TESTADMIN_PASSWORD}
sudo dscl . create /Users/testadmin UniqueID 550
sudo dscl . create /Users/testadmin PrimaryGroupID 80
sudo dscl . create /Users/testadmin UserShell /bin/bash
sudo dscl . create /Users/testadmin NFSHomeDirectory /Users/testadmin
sudo createhomedir -u testadmin

echo "========================================================================"
echo "Setting sudo settings"
echo "========================================================================"
# Setup sudo config (New one to allow TouchID to sudo)
sudo cp -f ./assets/sudo /etc/pam.d/sudo

echo "========================================================================"
echo "Configuring macOS"
echo "========================================================================"
# Install the Aerial sceen saver
git clone https://github.com/JohnCoates/Aerial.git ~/temp
cp -fR ~/temp/Aerial.saver ~/Library/Screen\ Savers/Aerial.saver
rm -rf ~/temp

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Set graphite appearance
defaults write NSGlobalDomain AppleAquaColorVariant -int 6

# Show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Expand save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

## TOP RIGHT SCREEN CORNER → START SCREEN SAVER
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

## FINDER
## =============================================================================
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show all files
defaults write com.apple.finder AppleShowAllFiles -bool true
chflags nohidden ~/Library

# Hide desktop icons
defaults write com.apple.finder CreateDesktop -bool false

# Set default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Open finder in column view
defaults write com.apple.finder AlwaysOpenInColumnView true
defaults write com.apple.finder FXPreferredViewStyle Clmv

# Set sidebar font size to small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true

## TEXTEDIT
## =============================================================================
# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Disable Photos.app from starting everytime a device is plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

## SAFARI
## =============================================================================
# Safari devtools
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true


## MAIL
## =============================================================================
# Add the keyboard shortcut CMD + Enter to send an email
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\U21a9"

# Set email addresses to copy as 'foo@example.com' instead of 'Foo Bar <foo@example.com>'
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

## DOCK
## =============================================================================
# Change dock hiding and sizing prefs
defaults write com.apple.Dock autohide -bool true
defaults write com.apple.dock tilesize -int 24

# Disable autocorrect
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Kill all affected apps and services
for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
	"Dock" "Finder" "Mail" "Messages" "Safari" "SystemUIServer"; do
	killall "$app" >/dev/null 2>&1
done

# Run a MacOS software update
sudo softwareupdate --install -all

echo "Done!"
echo ""
echo "We've created a testadmin user with the following account info:"
echo "================================================================="
echo "Username: testadmin"
echo "Password: ${TESTADMIN_PASSWORD}"
echo "================================================================="
echo "Save this to 1Password, and keep it for when the computer needs"
echo "to go to the hospital."
echo ""
read -p "Press any key to finish and reboot… " -n1 -s
sudo shutdown -r now
