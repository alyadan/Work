//
//  DMPasscodeInternalField.m
//  Pods
//
//  Created by Dylan Marriott on 20/09/14.
//
//

#import "DMPasscodeInternalField.h"

@implementation DMPasscodeInternalField

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _emptyIndicator = [[UIView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height / 2 - 3, self.bounds.size.width, 2)];
//        NSLog(@"File:%s %g  %d",__FILE__,self.bounds.size.height, __LINE__);
        _emptyIndicator.backgroundColor = [UIColor grayColor];
        [self addSubview:_emptyIndicator];
        
        _filledIndicator = [[UIView alloc] initWithFrame:CGRectMake(self.bounds.size.width / 2 - 6, self.bounds.size.height / 2 - 6, 12, 12)];
        _filledIndicator.backgroundColor = [UIColor grayColor];
        _filledIndicator.layer.cornerRadius = 6;
        _filledIndicator.alpha = 0;
        [self addSubview:_filledIndicator];
    }
    return self;
}

- (void)setText:(NSString *)text {
    _emptyIndicator.alpha = text.length > 0 ? 0.0f : 1.0f;
    _filledIndicator.alpha = text.length > 0 ? 1.0f : 0.0f;
}

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 
