//
//  NuoKeSaSiSummonerFactory.m
//  FactoryMode
//
//  Created by liangjie on 2017/1/1.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import "NuoKeSaSiSummonerFactory.h"
#import "NuoKeSaSiInformationFactory.h"

@implementation NuoKeSaSiSummonerFactory

- (Summoner *)summonerWithType:(SummonerType)type {
    Summoner *summoner = nil;
    InformationFactory *infoFactory = [[NuoKeSaSiInformationFactory alloc] init];
    switch (type) {
        case WarriorType:
            summoner = [[Warrior alloc] initWithInformationFactory:infoFactory];
            break;
            
        case MagicType:
            summoner = [[Magic alloc] initWithInformationFactory:infoFactory];
            break;
            
        case AssassinType:
            summoner = [[Assassin alloc] initWithInformationFactory:infoFactory];
            break;
            
        case TankType:
            summoner = [[Tank alloc] initWithInformationFactory:infoFactory];
            break;
            
        case ShooterType:
            summoner = [[Shooter alloc] initWithInformationFactory:infoFactory];
            break;
            
        case AssistType:
            summoner = [[Assist alloc] initWithInformationFactory:infoFactory];
            break;
            
        default:
            break;
    }
    return summoner;
}
@end
