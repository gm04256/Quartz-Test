//
//  BGMMyView.m
//  Quartz Test
//
//  Created by 馬 岩 on 14-6-18.
//  Copyright (c) 2014年 馬 岩. All rights reserved.
//

#import "BGMMyView.h"


@implementation BGMMyView

// called only when creating object by coding
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// called if the view is loaded from nib or storyboard
- (id)initWithCoder:(NSCoder*)coder
{
	if (self = [super initWithCoder:coder]) {
        // Initialization code
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
	NSLog(@"%@",NSStringFromSelector(_cmd));
	
    // Drawing code
	// get context
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	// draw a line
	CGContextSetLineWidth(context, 4.0);
	CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
	
	CGContextMoveToPoint(context, 0, 0);
	CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height);
	
	// color and other attributes can't be changed during a path
	// the path will be drawn with the latest attributes
//	CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);

	// new line starts from the end of the last line by default
//	CGContextMoveToPoint(context, 0, self.frame.size.height);
	CGContextAddLineToPoint(context, self.frame.size.width, 0);
	CGContextStrokePath(context);
	
	// draw an image
	UIImage *image = [UIImage imageNamed:@"brazil world cup.png"]; // assuming this exists and points at a UIImage instance
//	CGPoint drawPoint = CGPointMake(100.0, 100.0);
//	[image drawAtPoint:drawPoint];
	// draw image with the method of UIImage
	[image drawInRect:CGRectMake(100, 100, image.size.width, image.size.height)];
	
	// draw ellipse
	CGRect theRect = CGRectMake(50, 300, 200, 100);
	CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
	CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
	CGContextSetLineWidth(context, 2);
	
	CGContextAddEllipseInRect(context, theRect);
	CGContextDrawPath(context, kCGPathFillStroke);
}

#pragma mark - Touch Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint position = [touch locationInView: self];
	NSLog(@"Touch began: %f, %f", position.x, position.y);
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
	CGPoint position = [touch locationInView: self];
	NSLog(@"Touch ended: %f, %f", position.x, position.y);
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
	CGPoint position = [touch locationInView: self];
	NSLog(@"Touch moved: %f, %f", position.x, position.y);
}

@end
