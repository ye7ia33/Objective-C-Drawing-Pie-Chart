# Objective C Drawing Pie Chart
##steps to  draw pie

1-copy pie folder into project 

2-import PieDraw.h in ur class 

3-take a object from PieDraw class or make Inheritance 

4-use a setter
		
⁃	setPieDiameter1

⁃	setPie1Background

⁃	setPie2Background

⁃	setPieWidth

⁃	setPieHeight

⁃	setPieTransform

⁃	add subview [self drawPie] 


#Example 
      	//first #import "PieDraw.h"  in Header class
      	//then Inheritance (PieDraw)
      	@interface _ClassView : PieDraw
      	//on implementation _ClassView.m 
      	//go to constractor Method and make setter 
      	[self setPieDiameter1:.66];
        [self setPie1Background:[UIColor colorWithRed:.12 green:.713 blue:.9725 alpha:1]];
        [self setPie2Background:[UIColor colorWithRed:.49 green:.74 blue:.345 alpha:1]];
        [self setPieWidth:500];
        [self setPieHeight:500];
        [self setPieTransform:.20];
      	// when finsh , add drawPie
        [self addSubview:[self drawPie ]];



	
	
###Enjoy .........
Developed by Yahia El-Dow

Yahia.eldow@gmail.com

can follow me on 
https://github.com/ye7ia33
