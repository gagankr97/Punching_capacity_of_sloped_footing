clc
#Punching capacity of sloped footing

load given_data.mat

#to find effective depth 
disp("To find effective depth") 
disp("D_effective = D- clear_cover-dia/2")
D_effective = D- clear_cover-dia/2;
printf("D_effective = % d mm \n",D_effective)
printf("\n")

#by using similar traingle property
disp("by using similar traingle property")
disp("x=((D_effective/2)*(D-d))/((B-b)/2)")
x=((D_effective/2)*(D-d))/((B-b)/2);
printf("x = % d mm \n",x)
printf("\n")

#to find depth where crack occurs
disp("To find depth where crack occurs")
Depth=D-x;
disp("Depth=D-x")
printf("Depth = % d mm \n",Depth)
Depth_effective=Depth-clear_cover-dia/2;
disp("Depth_effective=Depth-clear_cover-dia/2")
printf("Depth_effective = % d mm \n",Depth_effective)
printf("\n")

#To find punching capacity
disp("To find punching capacity")
Punching_capacity = (.25*sqrt(fck)*Depth_effective*4*(b+(Depth_effective/2)))/(1000*1.5);
disp("Punching_capacity = (.25*sqrt(fck)*Depth_effective*4*(b+(Depth_effective/2)))/(1000*1.5)")
printf("Punching_capacity = % d kN \n",Punching_capacity)

