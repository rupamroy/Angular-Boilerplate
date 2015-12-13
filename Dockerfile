FROM node:0.12 
WORKDIR /apps 
COPY . /apps 
RUN npm install bower -g
RUN npm install 
RUN bower install --allow-root
EXPOSE 3000
CMD ["node", "./src/server/server.js"] 
 
