//
//  Summoner.h
//  FactoryMode
//
//  Created by liangjie on 2016/12/30.
//  Copyright © 2016年 liangjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InformationFactory.h"

@interface Summoner : NSObject
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithInformationFactory:(InformationFactory *)inforFactory;

- (void)addInformation;
- (void)setupSkill;
- (void)setupAttribute;
- (void)setupDowerPage;
- (void)setupRunedPage;
- (void)toSummonerCanyon;

@end
