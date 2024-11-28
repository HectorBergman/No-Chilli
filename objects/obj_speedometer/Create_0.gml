/// @description Insert description here
// You can write your code in this editor
image_xscale = 3;
image_yscale = 3;
x = 0
y = 0
function needleAngle(_x){
	//lagrange formula
	var l0= ((1/40000*power(_x,4)+(-3/1600)*power(_x,3)+7/160*power(_x,2)+(-3/8)*_x+1));
	var l1= ((-1/13125*power(_x,4)+(2/375)*power(_x,3)+(-8/75)*power(_x,2)+(64/105)*_x));
	var l2= ((1/15000*power(_x,4)+(-13/3000)*power(_x,3)+(11/150)*power(_x,2)+(-4/15)*_x));
	var l3= ((-1/60000*power(_x,4)+(11/12000)*power(_x,3)+(-13/1200)*power(_x,2)+(1/30)*_x));
	var l4= ((1/840000*power(_x,4)+(-1/24000)*power(_x,3)+(1/2400)*power(_x,2)+(1/-840)*_x));
	return l0*(-75)+l1*-65+l2*-50+l3*-40+l4*-25
}