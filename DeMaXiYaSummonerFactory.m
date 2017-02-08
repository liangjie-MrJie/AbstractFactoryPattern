//
//  DeMaXiYaSummonerFactory.m
//  FactoryMode
//
//  Created by liangjie on 2016/12/30.
//  Copyright © 2016年 liangjie. All rights reserved.
//

#import "DeMaXiYaSummonerFactory.h"
#import "DeMaXiYaInformationFactory.h"

@implementation DeMaXiYaSummonerFactory
- (Summoner *)summonerWithType:(SummonerType)type {
    Summoner *summoner = nil;
    InformationFactory *infoFactory = [[DeMaXiYaInformationFactory alloc] init];
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
