/// @description Insert description here
// You can write your code in this editor


if ( state = "won" ) {
x = view_wport[0]/ 2
		y = 400
		Margin = 10
		
		CurrentY = y;
		draw_set_color(c_olive);
		place_text("Target acquired", TextFont)
		
} else if ( state = "lost" ) {
	x = view_wport[0]/ 2
		y = 400
		Margin = 10
		
		CurrentY = y;
		draw_set_color(c_red);
		place_text("Game lost", TextFont)
}