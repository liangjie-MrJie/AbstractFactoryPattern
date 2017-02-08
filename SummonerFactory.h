//
//  SummonerFactory.h
//  FactoryMode
//
//  Created by liangjie on 2016/12/30.
//  Copyright © 2016年 liangjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Summoner.h"
#import "Warrior.h"
#import "Magic.h"
#import "Assassin.h"
#import "Tank.h"
#import "Shooter.h"
#import "Assist.h"

typedef NS_ENUM(NSInteger, SummonerType) {
    WarriorType,    // 战士
    MagicType,      // 法师
    AssassinType,   // 刺客
    TankType,       // 坦克
    ShooterType,    // 射手
    AssistType      // 辅助
};


/*抽象类*/
@interface SummonerFactory : NSObject
- (Summoner *)packageSummoner:(SummonerType)type name:(NSString *)name;   // 非抽象方法
- (Summoner *)summonerWithType:(SummonerType)type;  // 抽象方法
@end
