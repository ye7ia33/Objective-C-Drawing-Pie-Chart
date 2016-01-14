
#import <UIKit/UIKit.h>
#import "SSPieProgressView.h"
#import "PieComponent.h"

@interface TaraProgressPie : UIView

@property (strong,nonatomic) NSMutableArray *portions;
@property (strong,nonatomic)NSMutableArray *subPies;
- (id)initWithFrame:(CGRect)frame andPortions:(NSMutableArray *)p;

@end
