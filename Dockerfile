# Use the official Node-RED base image
FROM nodered/node-red:latest

# Build argument to distinguish dev vs. production
ARG ENV_MODE=production
# Make it available inside the container as an environment variable
ENV NODE_ENV=$ENV_MODE

# Copy local files into the Node-RED "data" directory
# flows.json = your flows
# settings.js = Node-RED configuration (we'll see how it uses NODE_ENV)
COPY data/flows.json /data/flows.json
COPY data/settings.js /data/settings.js

# (Optional) If you have custom dependencies listed in package.json:
# COPY package.json package-lock.json /data/
# RUN cd /data && npm install --production

# Expose Node-RED port
EXPOSE 1880

# Start Node-RED with the custom data directory
CMD ["npm", "start", "--prefix", "/data"]
