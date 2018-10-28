FROM rust:1.27

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install apt-utils wget git libssl-dev pkg-config build-essential

RUN wget -qO- https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get -y install nodejs

RUN git clone https://github.com/endgameinc/xori.git
WORKDIR /xori
RUN cargo build --release
WORKDIR /xori/gui
RUN npm install

WORKDIR /xori/gui

COPY ./start.sh /start.sh
ENTRYPOINT /start.sh
EXPOSE 3000/tcp
EXPOSE 5000/tcp