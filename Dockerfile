from        debian:stretch-slim
maintainer  Christian Becker-Kapraun "cbk@freifunk-hennef.de"
run     apt-get update && apt-get install -y wget freeciv-server
run     useradd -d /freeciv freeciv
user    freeciv
volume ["/freeciv"]
entrypoint ["/usr/games/freeciv-server"]
cmd ["--saves", "/freeciv", "--port", "53773", "--debug", "3", "--log", "/freeciv/fc.log" ]
expose 53773
