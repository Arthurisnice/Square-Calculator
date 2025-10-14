if keyboard_check_pressed(ord("E")) {sqr_range+=10}
if keyboard_check(ord("E"))
{
	timer3++
	if timer3>=30 {fast3=true}
	if fast3==true
	{
		sqr_range+=10
	}
}
if keyboard_check_released(ord("E")) {fast3=false;timer3=0}

if keyboard_check_pressed(ord("Q")) {sqr_range-=10}
if keyboard_check(ord("Q"))
{
	timer3++
	if timer3>=30 {fast3=true}
	if fast3==true
	{
		sqr_range-=10
	}
}
if keyboard_check_released(ord("Q")) {fast3=false;timer3=0}

sqr_range=clamp(sqr_range,100,700)

if keyboard_check_pressed(ord("W")) {deviation++}
if keyboard_check(ord("W"))
{
	timer2++
	if timer2>=30 {fast2=true}
	if fast2==true
	{
		deviation+=1*amount
	}
}
if keyboard_check_released(ord("W")) {fast2=false;timer2=0}

///_______________________________________

if keyboard_check_pressed(ord("S")) {deviation--}
if keyboard_check(ord("S"))
{
	timer2++
	if timer2>=30 {fast2=true}
	if fast2==true
	{
		deviation-=1*amount
	}
}
if keyboard_check_released(ord("S")) {fast2=false;timer2=0}

deviation=clamp(deviation,0,100000)

if keyboard_check(vk_shift) {amount=2}
else {amount=1}