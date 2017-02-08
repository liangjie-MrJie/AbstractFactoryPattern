//
//  SummonerFactory.m
//  FactoryMode
//
//  Created by liangjie on 2016/12/30.
//  Copyright © 2016年 liangjie. All rights reserved.
//

#import "SummonerFactory.h"

@implementation SummonerFactory
- (Summoner *)packageSummoner:(SummonerType)type name:(NSString *)name {

    /*将易变的部分, 放到了子类中实现*/
    Summoner *summoner = [self summonerWithType:type ];
    summoner.name = name;

    [summoner addInformation];
    [summoner setupSkill];
    [summoner setupAttribute];
    [summoner setupDowerPage];
    [summoner setupRunedPage];
    [summoner toSummonerCanyon];
    
    return summoner;
}

- (Summoner *)summonerWithType:(SummonerType)type {
    /*抽象方法，子类必须实现*/
    return nil;
}


@end
