alias gruntall="grunt lint && grunt test --once && grunt iso"
alias gruntallall="gruntall && grunt fusion && grunt smoke"
# don't forget appium & first
alias runFT="gradle rFT -PTAGS=@appium -Pfeatures=features -PBROWSER=appium -PAPP_PATH=/Users/test/gap/snapscan/trunk/functional-tests/SnapScan-4.30837.30837-iphonesimulator.zip"
alias iso="(z OisF && grunt isolation:local)"
