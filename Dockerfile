FROM node:alpine

# Install git
RUN apk update
RUN apk add git

# Clone and install reveal.js and dependencies
WORKDIR /usr/share/presentation/
RUN git clone https://github.com/hakimel/reveal.js.git
WORKDIR reveal.js
RUN npm install

# Delete default index.html
RUN rm index.html

# Create directories for slides and custom assets
RUN mkdir slides
RUN mkdir assets

EXPOSE 8000

CMD [ "npm", "start" ]