//
//  CircleView.h
//  CAShapeLayer
//
//  Created by Jack on 16/2/23.
//  Copyright © 2016年 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView

@property (assign, nonatomic)BOOL paused;//默认 YES，设为No开启DisplayLink
- (void)reomoveDisplay;//在合适的时机销毁

@end
