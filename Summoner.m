//
//  Summoner.m
//  FactoryMode
//
//  Created by liangjie on 2016/12/30.
//  Copyright © 2016年 liangjie. All rights reserved.
//

#import "Summoner.h"

@implementation Summoner {
    InformationFactory *_inforFactory;
}

- (instancetype)initWithInformationFactory:(InformationFactory *)inforFactory {
    self = [super init];
    if (self) {
        _inforFactory = inforFactory;
    }
    return self;
}

- (void)addInformation {
    NSLog(@"%@  %@", [_inforFactory fetchIdentityDescribed], [_inforFactory otherDescribed]);
}
- (void)setupSkill {
    NSLog(@"1个天赋技能+4个修炼技能+2个召唤师技能");
}
- (void)setupAttribute {
    NSLog(@"攻击力+法术强度+移动速度+攻击速度+暴击率+...");
}
- (void)setupDowerPage {
    NSLog(@"天赋页");
}
- (void)setupRunedPage {
    NSLog(@"符文页");
}
- (void)toSummonerCanyon {
    NSLog(@"%@去召唤师峡谷", self.name);
}
@end
