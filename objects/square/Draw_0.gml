draw_line(x,y,x,y-sqr_range)
draw_line(x,y,x-sqr_range,y)
draw_line(x,y-sqr_range,x-sqr_range,y-sqr_range)
draw_line(x-sqr_range,y,x-sqr_range,y-sqr_range)


if keyboard_check_pressed(ord("D")) {angle++}
if keyboard_check(ord("D"))
{
	timer++
	if timer>=30 {fast=true}
	if fast==true
	{
		angle+=1
	}
}
if keyboard_check_released(ord("D")) {fast=false;timer=0}

if keyboard_check_pressed(ord("A")) {angle--}
if keyboard_check(ord("A"))
{
	timer++
	if timer>=30 {fast=true}
	if fast==true
	{
		angle-=1
	}
}
if keyboard_check_released(ord("A")) {fast=false;timer=0}


angle=clamp(angle,0,90)

pos_x = x-lengthdir_x(deviation,angle)
pos_y = y+lengthdir_y(deviation,angle)

draw_set_color(c_lime)
draw_circle(pos_x,pos_y,2,true)
draw_line_width(x,y,pos_x,pos_y,1)
draw_set_color(c_white)

draw_set_color(c_red)
draw_line_width(x,y,pos_x,pos_y,3)
draw_set_color(c_white)

var dis = point_distance(x,y,pos_x,pos_y)
var ang = point_direction(x,y,pos_x,pos_y)-180

draw_text(100,140,dis)

//____________
draw_line(x-10,y+10,x-sqr_range+10,y+10)
draw_line(x-sqr_range+10,y+5,x-sqr_range+10,y+15)
draw_line(x-10,y+5,x-10,y+15)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(x-sqr_range/2,y+25,string(sqr_range)+"m")




