//  PieDraw.m
//  Created by Yahia

#import <UIKit/UIKit.h>
#import "TaraProgressPie.h"

@interface PieDraw : UIView

@property(setter=setPieDiameter1: , getter=getPieDiameter1) double pieD1 ;
@property(setter=setPieWidth: , getter=getPieWidth ) float pie_W;
@property(setter=setPieHeight: , getter=getPieHeight ) float pie_H;
@property(setter=setPie1Background: , getter=getPie1Background) id pie1Coloe ;
@property(setter=setPie2Background: , getter=getPie2Background) id pie2Coloe ;
@property(setter=setPieTransform : ,getter=getPieTransform) float pie_transform ;
-(UIView *) drawPie ;

@end
