##### DOCKBAR #####
# dockbar top of screen
defaults write com.apple.Dock orientation -string right

# dockbar small icons
defaults write com.apple.Dock tilesize -int 24

# delete all apps in dock
#defaults delete com.apple.Dock persistent-apps

# restart dock
killall Dock

##### #####



# Languages
defaults write "Apple Global Domain" "AppleLanguages" "("en-US","pt-BR","zh-Hans-US","zh-Hant-US")"


