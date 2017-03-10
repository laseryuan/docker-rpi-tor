FROM resin/rpi-raspbian:jessie-20170111

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install tor

RUN \
  echo 'HiddenServiceDir /var/lib/tor/hidden_service/' >>/etc/tor/torrc && \
  echo 'HiddenServicePort 8022 127.0.0.1:22' >>/etc/tor/torrc && \
  echo 'RelayBandwidthRate 10 KB' >>/etc/tor/torrc && \
  echo 'RelayBandwidthBurst 20 KB' >>/etc/tor/torrc
