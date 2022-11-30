## Basing image off of Node.js version 18's official image, and naming it builder  
FROM node:18 as builder

## Copying local folder into a folder in the image
COPY interview-task /interview-task

## All following commands happen inside the specified diretory
WORKDIR /interview-task

## Install all node packages in package.json
RUN npm install
## Package Angular application inside the directory
RUN $(npm bin)/ng build

## Setting up another image, basing it off of nginx image, preconfigured to run nginx server
FROM nginx

## Copying from previous image folder into the runing one
COPY --from=builder /interview-task/dist/* /usr/share/nginx/html/

## Tell Docker port 80 has a server running in this image
EXPOSE 80