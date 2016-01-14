//  PieDraw.m
//  Created by Yahia 

#import "PieDraw.h"

@implementation PieDraw

NSMutableArray *portions;
TaraProgressPie *pie;
int pieFlag[3]={0,1,1};
int iFlag=1;
double PieX ,PieY ;


- (id)init
{
    self = [super init];
    if (self) {

        PieY = self.center.y ;
        PieX = self.center.x ;

    }
    return self;
}


-(UIView *) drawPie
{
    //NSLog(@"%s", __FUNCTION__);
    portions=[[NSMutableArray alloc] initWithCapacity:3];
    PieComponent *p=[[PieComponent alloc] init];
    p.progress=[self getPieTransform];
    [portions addObject:p];


    p=[[PieComponent alloc] init];
    p.progress= [self getPieDiameter1];
    [portions addObject:p];

    p=[[PieComponent alloc] init];
    p.progress= 1 - [self getPieDiameter1];
    [portions addObject:p];

    PieComponent *c=[portions objectAtIndex:0]  ;

    c=[portions objectAtIndex:1] ;
    c.color= [self getPie1Background];
    //[UIColor colorWithRed:.12 green:.713 blue:.9725 alpha:1];

    c=[portions objectAtIndex:2] ;
      c.color= [self getPie2Background];


    pie = [[TaraProgressPie alloc] initWithFrame:
                        CGRectMake(0, 0, [self getPieWidth], [self getPieHeight])
                                     andPortions:portions];
    [self addSubview:pie];



   [NSTimer scheduledTimerWithTimeInterval: 0.000003f
                                             target: self
                                           selector: @selector(animateProgress:)
                                           userInfo:pie
                                            repeats: YES];


    return pie ;
}

-(void) animateProgress:(NSTimer *) aTimer
{
    //NSLog(@"%s", __FUNCTION__);
    TaraProgressPie *p= aTimer.userInfo;
    for (int i=0;i<3;i++)
    {
        PieComponent *comp = [[p portions] objectAtIndex:i];
        SSPieProgressView *sp = [p.subPies objectAtIndex:i];
        SSPieProgressView *sp_1;
        if (i>0) sp_1=[p.subPies objectAtIndex:i-1];
        if (sp.progress < comp.progress-.001)
        {
            //if(i>0 && sp_1.progress>=[[p.portions objectAtIndex:i-1] progress]-.001)    sp.progress += .005;
            if(pieFlag[i]==1)    sp.progress += .01;
            //  else if (i == 0 )sp.progress += .005;

        }
    }
}




@end
