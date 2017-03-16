from        debian:jessie-slim
maintainer  Christian Becker-Kapraun "cbk@freifunk-hennef.de"
run     apt-get update && apt-get install -y wget freeciv-server
run     useradd freeciv
volume ["/freeciv"]
run     chown -R freeciv /freeciv
user    freeciv
entrypoint ["/usr/games/freeciv-server"]
cmd ["--saves", "/freeciv", "--port", "53773"]
expose 53773
