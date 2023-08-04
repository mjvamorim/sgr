# Dockerfile
FROM python:3.10
WORKDIR /home/siri/sgr
RUN pip install --upgrade pip

RUN apt-get update \
 && apt-get install -y sudo curl
# RUN apt-get install nodejs npm -y
# RUN npm install --global yarn

#create user siri group siri and copy files
RUN groupadd -g 1000 siri
RUN useradd -u 1000 -ms /bin/bash -g siri siri
RUN echo "siri:siri" | chpasswd && adduser siri sudo
RUN chown siri:siri /home/siri 
USER siri

ENV PATH="/home/siri/.local/bin:${PATH}"
ENV FLASK_APP=app
ENV FLASK_RUN_PORT=8080
ENV FLASK_RUN_HOST=0.0.0.0

COPY  --chown=siri:siri backend/requirements.txt /home/siri/sgr/backend/requirements.txt
WORKDIR /home/siri/sgr/backend
RUN pip install -r requirements.txt

WORKDIR /home/siri

ENV NVM_DIR="/home/siri/.nvm" 
ENV NODE_VERSION v16.20.0
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  && nvm install $NODE_VERSION # This loads nvm
ENV PATH $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH
RUN npm install -g yarn
WORKDIR /home/siri/sgr/frontend
RUN yarn 

WORKDIR /home/siri/sgr