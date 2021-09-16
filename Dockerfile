FROM balenalib/raspberrypi3

RUN apt-get update && apt-get install -yq \
   python sense-hat && \
   apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

CMD python3 src/main.py
