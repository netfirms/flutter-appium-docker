# flutter-appium-docker#
Building docker image for local use
'''
docker build -t appium_flutter_driver .
'''

1. Start appium server on host with
'''
appium
'''

2. Start appium running in docker within your testing folder
For example. appium testscript is in "src/index.js"
'''
docker run -it --rm --network host  -v "$PWD":/usr/src/app -w /usr/src/app  appium_flutter_driver node src/index.js
'''
