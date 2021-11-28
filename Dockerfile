FROM python:3.9-slim-buster
WORKDIR /astrako/
RUN apt-get -qq update && apt-get -qq upgrade -y
RUN apt-get -qq install -y --no-install-recommends \
    wget \
    curl \
    git \
    gnupg2 
COPY . /astrako
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["bash","start.sh"]
