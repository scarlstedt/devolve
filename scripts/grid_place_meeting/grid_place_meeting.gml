/// gridPlaceMeeting(x,y)

var xx = argument0
var yy = argument1

// Old pos
var xp = x
var yp = y

// Update the position for the bbox calculation
x = xx
y = yy

// Check collision after moving

/*var x_meeting  = (olevel.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || 
					(olevel.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR)
					

var y_meeting  = (olevel.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) || 
					(olevel.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR)

var center_meeting = olevel.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR*/

var x_meeting = place_meeting(x,y,obarrier);
var y_meeting = place_meeting(x,y,obarrier);
var center_meeting = place_meeting(x,y,obarrier);

// Move back
x = xp
y = yp

return x_meeting || y_meeting || center_meeting