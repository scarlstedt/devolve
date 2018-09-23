Text = argument0
Font = argument1


draw_set_halign(fa_center)

draw_set_font(Font)
draw_text(x,CurrentY,Text)

CurrentY = CurrentY + string_height(Text)