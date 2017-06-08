
#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"

 
camera{
	 location <-20,50, -67>  
   look_at<0,0,0>
  angle 10
} 
 
light_source{<-3,20,20>color 2*White}
object{ 
  Plane_XZ
 material{M_Glass3} 
 finish{ambient 0.1
diffuse 0.1}      
 translate<0,-0.9,0>
}

//pencase
union {

superellipsoid {
<0.25, 0.25>
scale <5, 1, 2.3>    
}
prism {
    cubic_spline
    0,
    1.1,

    6, 
    < 3, 1>, 
    < 1,  1.67>, 
        <-1  0>,
    < 1, -1.66>, 
    < 1,  1.67>, 
    <-1.6,  0>      
        rotate <0, 180, -0.005>
      translate<-3.483,0,0>
	scale<0, 1.08, 0>
 }
difference {
 superellipsoid {
 	<1, 0.25>
 	 translate <3, 4, 0>
 	scale<1.1, 1.1, 2.1>
 }
 
cylinder{<3.25, 4, 3><3.25, 4, -2>, 0.9
scale <0, 0, 2.05>
pigment{color Gray}
translate<0.3, 0.6, 0>
 }
 translate <-7.9, -4.3, 0>
 }


//leather
pigment 
  { 
    bozo 
    turbulence 0.4
    color_map 
    { 
      [0.00 color rgb <7/255, 0.015, 0.01>] 
      [1.00 color rgb <5/255, 0.011, 0.005>] 
    }
  } 
   normal 
  { 
    crackle 0.1 
slope_map { 
        [0 <0,1>] 
        [0.09 <1,0>] 
        [0.5 <1,0>] 
        [1  <0,-1>] 
        } 
    turbulence 0.1 
    scale 0.1
  } 
  finish { 
    specular 0.3
	    roughness 0.01
  } 

}
 //pen-case-finish

//pen-body
union {
 cylinder{<0, 3, 0><0, 3, 3>, 0.35

translate <0, 0, -3>
pigment{color VeryDarkBrown}
 }
 
 cylinder{<0, 3, -3><0, 3, -3.07>, 0.4
pigment{color Black}
 }

 
 difference {
cylinder{<0, 3, 0><0, 3, 3>, 0.4
translate <0, 0, -3>
material {M_Yellow_Glass}
 }
 
cylinder{<0, 3, 0><0, 3, 5>, 0.35
material {M_Yellow_Glass}
translate <0, 0, -4>
 }
}
merge {
cone {<0, 3, 0> 0.4, <0, 3, 1.5> 0.25
texture {T_Chrome_4E}
}

 torus {0.26, 0.05
rotate <90, 0, 0>
texture {T_Chrome_1E}
translate <0, 3, 1.15>
}
 torus {0.27, 0.05
rotate <90, 0, 0>
texture {Spun_Brass}
translate <0, 3, 1.5>
}


cone {<0, 3, 0> 0.25, <0, 3, 1.5> 0.28
texture {Brass_Valley}

finish {diffuse 0.4}
}
}

torus {0.4, 0.05
rotate <90, 0, 0>
texture {T_Chrome_1E}
translate <-0, 3, 0>
}

cone {<0, 3, -3> 0.4, <0, 3, -5> 0.3
texture {Brass_Valley}

finish {diffuse 0.4}
}
cylinder{<0, 3, -5><0, 3, -5.2>, 0.3
pigment{color Black}
 }

sphere {<0, 3, -5.2>0.3
texture {Brass_Valley}
}

finish {diffuse 0.1}


rotate <0, -25, 0>
translate<0, -1.62, 1>
}
//pen-body-last

//cap

union {
difference {
cone {<0, 0, -5> 0.4, <0, 2.6, -5> 0.44
material{M_Glass}

finish {diffuse 0.4}
}
cone {<0, 0, -5> 0.37, <0, 4, -5> 0.41
material{M_Glass}

finish {diffuse 0.4}
}
}

cone {<0, 0.1, -5> 0.37, <0, 2.6, -5> 0.41
texture {T_Copper_1E}

finish {diffuse 0.1}
}
torus {0.415 , 0.05
texture {T_Chrome_4E}
translate <0, 0, -5>
}
torus {0.415, 0.05
texture {T_Chrome_4E}


translate <0, 2.5, -5>

}
sphere {<0, 2.6, -5>0.43
texture {Spun_Brass}
finish {diffuse 0.5}
}
	merge {
sphere {<0, 2.5, -6.04>0.17
texture {T_Chrome_4E}

finish {diffuse 0.8}
translate<0, 0, 0.4>
}

difference {
cone {<0, 0.9, -5.9> 0.1, <0, 2.8, -5.9> 0.17
texture {T_Chrome_4E}
finish {diffuse 0.1}
translate<0, 0, 0.4>
}

cone {<0, 0.9, -5.9> 0.1, <0, 3, -5.9> 0.17
texture {T_Silver_5C}
finish {diffuse 0.09}
translate<0, 0, 0.43>
}

rotate<-3, 0, 0>
}
}

}
//cap-body-finish

//pen-top-start
union {
	difference {
difference {
difference {
superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5
 }
scale <1, 0.3, 0.9>  
translate<0, 0, 0>  
}
superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5}
scale <1.2, 0.4, 1.2>  
translate<0, -0.13, 0>  
}


scale <0.25, 0.3, 0.75>  
rotate<0, 0, 0>
translate<0, 3.87, 0>
}



translate<-0.2, -1, 4.5>

scale<1, 1, 1>
rotate<0, -25, 0>
translate<2.95, 1, -5.4>
}
superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5}
scale <0.5, 0.2, 0.9>  
rotate <90, -125, 0>
translate <0.75, 3.3, -0.68>
}
superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5}
scale <0.5, 0.2, 0.9>  
rotate <90, 75, 0>
translate <0.39, 3.3, -0.78>
}
superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5}
scale <0.5, 0.2, 1.5>  
rotate <90, 50, 0>
translate <0.7, 3.3, -1.9>
}
superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5}
scale <0.5, 0.2, 1.5>  
rotate <90, 55, 0>
translate <0.62, 3.3, -1.7>
}

superellipsoid {
<1, 0.25>
texture {T_Gold_1E}
finish{ambient 0.1
diffuse 0.5
reflection 1.5}
scale <0.5, 0.2, 1.5>  
rotate <90, 250, 0>
translate <1.28, 3.3, -1.5>
}
box{
<0, 0, 0><1,1,1>
scale<0.015, 3, 0>
      rotate<0, -25,0>
      translate<0.82, 1, -1.3>
}

cylinder{<0, 0, 0><0, 2, 0>, 0.035
translate <0.84, 2, -1.31>
 }


finish{ambient 0.7
diffuse 1
}
}
translate<-1.735, -2.5, 4.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 1
 specular 0.5
   diffuse 0.3
  refraction 0.8}


}
//pentopfinish

//ink-case
 merge {
torus {0.65, 0.4
material{M_Glass3}
translate <-5, 1.7, -6>
}
merge {
torus {1.12, 0.1
material{M_Glass3}
translate <-5, 1.6, -6>
 }

difference {
cone {<-5, 0.3, -6> 0.8, <-5, 1.6, -6> 1.3

material{M_Glass3}
translate<0, 0, 0>
}
cone {<-5, 0.3, -6> 0.7, <-5, 1.8, -6> 1.2
material{M_Glass3}
translate<0, 0, 0>
}
}
 torus {0.6, 0.3
material{M_Glass3}
translate <-5, 0, -6>
 }
 
 cone {<-5, 0.3, -6> 0.7, <-5, 1.3, -6> 1.2
 pigment{Black}
translate<0, 0, 0>
}
}
translate<-2.5, 0, 0>
}

 cone {<-5, 1.9, -6> 0.3, <-5, 2.4, -6> 0.43
texture {T_Wood23}
finish {diffuse 0.2}
translate<-2.5, 0, 0>
}
//ink-case-finish


#macro Band(theta)
union {
superellipsoid {
<1, 0.25>
scale <0.4, 0.17, 0.15>  
translate<-4, 0, -5.23>  
}
superellipsoid {
<0.25, 0.25>
scale <0.38, 0.17, 0.55>    
translate<-3.65, 0, -4.43>  

}
superellipsoid {
<1, 0.25>
scale <0.4, 0.17, 0.15>  
translate<-4, 0, -3.7>  
}
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

translate<theta, 0, -2.5>
}
#end

union {
Band(-0.2)
Band(0.6)
Band(1.4)
Band(2.2)
Band(3)


difference {
superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <0.38, 0.17, 0.9>    
translate<1, 0, -6>  

}

superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <0.38, 0.2, 0.7>    
translate<0.65, 0, -6>  

}
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

translate <-1.23,0,-0.95>

}

difference {
superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <1.1, 0.3, 1>    
translate<1.2, 0, -6.9>  

}
superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <1, 0.5, 0.9>    
translate<1.2, 0.3, -6.9>  

}

}




box{<0,0,0>,<1,1,1>

       finish{phong 1 reflection 0.1}
scale <1.21, 1.2, 1>

       translate <-4,0, 6>
       	pigment {
 	image_map {
        png "watch3.png"
        map_type 0
        once
 	}
  translate < 0, 0, 0>
      }
      scale <1.45, 1.7, 0.2>
   rotate<0, 90, -90>
     translate<0.255, 1.35, -11.8>

     }
     
difference {
superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <0.38, 0.17, 0.9>    
translate<1, 0, -6>  

}

superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <0.38, 0.2, 0.7>    
translate<0.65, 0, -6>  

}
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

rotate<0, 0, -180>
translate <3.6,0,-0.95>

}


superellipsoid {
<0.25, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}


finish{ambient 0.1
diffuse 0.5}
scale <0.38, 0.17, 0.55>    
translate<-3.65, 0, -4.43>  
translate<6.6, 0, -2.5>

}




Band(7.4)
Band(8.2)
Band(9)

//Band-top
difference {
superellipsoid {
<1, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

finish{ambient 0.1
diffuse 0.5}
scale <1, 0.3, 0.75>  
translate<-4, 0, -3.7>  
}
superellipsoid {
<1, 0.25>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

finish{ambient 0.1
diffuse 0.5}
scale <1.2, 0.4, 0.77>  
translate<-4, -0.13, -3.7>  
}
rotate<0, 0, 6.5>
translate<-1.3, 0.238, -3.3>
}
cylinder{<0, 0, 0><0, 0, 1>, 0.13
scale<0, 0, 1.92>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

translate<-4.6, 0, -7.97>
}

//

//Band-last


cone {<0, 3, 0> 0.5, <0, 3, 1.5> 1
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

rotate<0, -90, 0>
scale<2.1, 0.06 ,1>
translate<8.8, 0, -7.1>
}

cylinder{<0, 0, 0><0, 0, 1>, 0.13
scale<0, 0, 1.92>
texture {New_Brass}
finish{ambient 0.2
reflection 1.5
brilliance 0.7
 specular 0.5
   diffuse 0.3
  refraction 0.8}

translate<5.57, 0, -7.97>
 }

}

//





//pen2
union {

 cylinder{<0, 3, 0><0, 3, 3>, 0.35

translate <0, 0, -3>
pigment{color VeryDarkBrown}
 }
 
 cylinder{<0, 3, -3><0, 3, -3.07>, 0.4
pigment{color Black}
 }

 
 difference {
cylinder{<0, 3, 0><0, 3, 3>, 0.4
translate <0, 0, -3>
 //texture {T_Stone2}//
 texture {T_Wood1}
 finish {diffuse 0.1}
 }
 
cylinder{<0, 3, 0><0, 3, 5>, 0.35
material{M_Yellow_Glass}
translate <0, 0, -4>

	
 }
}
merge {
cone {<0, 3, 0> 0.4, <0, 3, 1.5> 0.25
texture {T_Chrome_4E}
}

 torus {0.26, 0.05
rotate <90, 0, 0>
texture {T_Chrome_1E}
translate <0, 3, 1.15>
}
 torus {0.27, 0.05
rotate <90, 0, 0>
texture {Spun_Brass}
translate <0, 3, 1.5>
}


cone {<0, 3, 0> 0.25, <0, 3, 1.5> 0.28
texture {Brass_Valley}

finish {diffuse 0.4}
}
}

torus {0.4, 0.05
rotate <90, 0, 0>
texture {T_Chrome_1E}
translate <-0, 3, 0>
}

cone {<0, 3, -3> 0.4, <0, 3, -5> 0.3
texture {Brass_Valley}

finish {diffuse 0.4}
}
cylinder{<0, 3, -5><0, 3, -5.2>, 0.3
pigment{color Black}
 }

sphere {<0, 3, -5.2>0.3
texture {Brass_Valley}
}

finish {diffuse 0.1}


rotate <-1, -25, 0>
translate<2, -1.55, 1>
}
//




//cap_perfect
union {
difference {
cone {<0, 0, -5> 0.4, <0, 2.6, -5> 0.44
material{M_Glass}

finish {diffuse 0.4}
}
cone {<0, 0, -5> 0.37, <0, 4, -5> 0.41
material{M_Glass}

finish {diffuse 0.4}
}
}

cone {<0, 0.1, -5> 0.37, <0, 2.6, -5> 0.41
texture {T_Copper_1E}

finish {diffuse 0.1}

}
torus {0.415 , 0.05
texture {T_Chrome_4E}
translate <0, 0, -5>
}
	
 torus {0.415, 0.05
texture {T_Chrome_4E}


translate <0, 2.5, -5>

}
sphere {<0, 2.6, -5>0.43
texture {Spun_Brass}
finish {diffuse 0.5}
}

merge {
sphere {<0, 2.5, -6.04>0.17
texture {T_Chrome_4E}

finish {diffuse 0.8}
translate<0, 0, 0.4>
}

difference {
cone {<0, 0.9, -5.9> 0.1, <0, 2.8, -5.9> 0.17
texture {T_Chrome_4E}
finish {diffuse 0.1}
translate<0, 0, 0.4>
}

cone {<0, 0.9, -5.9> 0.1, <0, 3, -5.9> 0.17
texture {T_Silver_5C}
finish {diffuse 0.09}
translate<0, 0, 0.43>
}

rotate<-3, 0, 0>
}
}
scale <1.18, 1.1, 1.1>
rotate<90, -25, 0>
translate<1.999, -4, 1>
}









