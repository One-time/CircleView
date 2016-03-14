//
//  CircleView.m
//  CAShapeLayer
//
//  Created by Jack on 16/2/23.
//  Copyright © 2016年 Jack. All rights reserved.
//

#import "CircleView.h"
@interface CircleView ()
@property (strong, nonatomic)CAShapeLayer *circleLayer;
@property (strong, nonatomic)CADisplayLink *displayLink;

@end
@implementation CircleView


//删除displayLink，和暂停的效果一直
- (void)reomoveDisplay{
    [self.displayLink removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [self.displayLink invalidate];
    self.displayLink = nil;
}


- (void)cirCleAnimation:(CADisplayLink *)displayLink{
    
    if (self.circleLayer.strokeEnd > 1.0 && self.circleLayer.strokeStart <1) {
        self.circleLayer.strokeStart += 0.1;
    }else if(self.circleLayer.strokeStart == 0){
        self.circleLayer.strokeEnd += 0.1;
    }
    if (self.circleLayer.strokeEnd == 0) {
        self.circleLayer.strokeStart = 0;
    }
    if (self.circleLayer.strokeEnd == self.circleLayer.strokeStart) {
        self.circleLayer.strokeEnd = 0;
    }
    
}

#pragma mark -- setter/getter
- (CAShapeLayer *)circleLayer{
    if (!_circleLayer) {
        _circleLayer = [CAShapeLayer layer];
        _circleLayer.lineWidth = 2.0f;
        _circleLayer.strokeColor = [UIColor redColor].CGColor;
        _circleLayer.fillColor = [UIColor clearColor].CGColor;
        _circleLayer.position = CGPointMake(CGRectGetWidth(self.frame)/2,CGRectGetHeight(self.frame)/2);
        
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(0, 0) radius:CGRectGetWidth(self.frame)>=CGRectGetHeight(self.frame)?CGRectGetHeight(self.frame)/2-4:CGRectGetWidth(self.frame)/2-4 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        _circleLayer.path = path.CGPath;
        _circleLayer.strokeStart = 0.0;
        _circleLayer.strokeEnd = 0.0;
        [self.layer addSublayer:_circleLayer];

    }
    return _circleLayer;
}

- (CADisplayLink *)displayLink{
    if (!_displayLink) {
        _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(cirCleAnimation:)];
        [_displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
        _displayLink.frameInterval = 10;
        _displayLink.paused = YES;
    }
    return _displayLink;
}

- (void)setPaused:(BOOL)paused{
    _paused = paused;
    self.displayLink.paused = paused;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
