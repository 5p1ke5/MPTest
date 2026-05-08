global.log = array_create(0);


/// @function log_write(_string)
/// @description Writes to the log.
function log_write(_string)
{
	array_push(global.log, _string);
}

function log_draw()
{
	
}