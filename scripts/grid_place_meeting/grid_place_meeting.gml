/// gridPlaceMeeting(x,y)

var xx = argument0
var yy = argument1

// Old pos
var xp = x
var yp = y

// Update the position for the bbox calculation
x = xx
y = yy


var x_meeting = place_meeting(x,y,obarrier);
var y_meeting = place_meeting(x,y,obarrier);
var center_meeting = place_meeting(x,y,obarrier);

// Move back
x = xp
y = yp

return x_meeting || y_meeting || center_meeting