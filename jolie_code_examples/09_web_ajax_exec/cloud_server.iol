include "cloud_server_iface.iol"

outputPort CloudServer {
	Location: "socket://localhost:9001/"
	Protocol: sodep
	Interfaces: CloudServerIface
}
