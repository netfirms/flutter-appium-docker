FROM node:12
USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
RUN node -v
RUN npm -v
RUN npm i -g appium-flutter-driver git://github.com/truongsinh/appium.git#patch-1
RUN npm i -g nodemon
RUN npm i -g appium-flutter-finder
RUN npm i -g webdriverio
RUN nodemon -v