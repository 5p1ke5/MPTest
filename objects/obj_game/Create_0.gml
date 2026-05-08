timerCD = game_get_speed(gamespeed_fps) * 5;
timer = timerCD;
epoch = 0;

connections = array_create(0);

serverSocket = network_create_server(network_socket_tcp, 6510, 4);
if (serverSocket < 0)
{
	show_debug_message("!!! socket error! " + string(serverSocket));
}
else
{
	show_debug_message("!!! Socket: " + string(serverSocket));
}

clientSocket = network_create_socket(network_socket_tcp);
show_debug_message("!!! client socket: " + string(clientSocket));


var _connect = network_connect(clientSocket, "127.0.0.1", 6510);
if (_connect < 0)
{
	show_debug_message("!!! connection error! " + string(_connect));
}
else
{
	show_debug_message("!!! Connection: " + string(_connect));
}
