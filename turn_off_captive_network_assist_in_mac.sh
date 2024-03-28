# Captive Network Assist (CNA for short) is designed to
# popup a web page when the user connects a Wi-Fi which
# requires Web Auth, e.g. Wi-Fi in Univerisity or Starbark.
#
# This script can turn off CNA which is on in default.
# If you want to turn on CNA again, just change "false" to
# "true".

sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -boolean false
