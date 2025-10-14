var sqr_range = 100
draw_line(x,y,x,y-sqr_range)
draw_line(x,y,x-sqr_range,y)
draw_line(x,y-sqr_range,x-sqr_range,y-sqr_range)
draw_line(x-sqr_range,y,x-sqr_range,y-sqr_range)

pos_x = x-lengthdir_x(sqr_range*2.5,angle)
pos_y = y+lengthdir_y(sqr_range*2.5,angle)

if keyboard_check_pressed(ord("W")) {angle++}
if keyboard_check_pressed(ord("S")) {angle--}



draw_line_width(x,y,pos_x,pos_y,2)