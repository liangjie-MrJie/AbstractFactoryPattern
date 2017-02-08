//
//  Warrior.m
//  FactoryMode
//
//  Created by liangjie on 2016/12/30.
//  Copyright © 2016年 liangjie. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (void)setupAttribute {
    NSLog(@"主修攻击力+物理防御+魔法防御");
}
- (void)setupDowerPage {
    NSLog(@"攻击力天赋");
}
- (void)setupRunedPage {
    NSLog(@"攻击力符文+护甲穿透符文");
}
@end
