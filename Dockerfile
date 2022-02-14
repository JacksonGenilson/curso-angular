FROM node:16

#set working directory
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# add app
COPY ./app_src ./

RUN npm install -g @angular/cli

RUN npm install -g @angular-devkit/build-angular

RUN npm install

#start app
CMD ["npm", "start"]