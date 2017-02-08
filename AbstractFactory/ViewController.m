//
//  ViewController.m
//  AbstractFactory
//
//  Created by liangjie on 2017/1/13.
//  Copyright © 2017年 liangjie. All rights reserved.
//

#import "ViewController.h"
#import "DeMaXiYaSummonerFactory.h"
#import "NuoKeSaSiSummonerFactory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SummonerFactory *factory = [[DeMaXiYaSummonerFactory alloc] init];
    Summoner *summoner = [factory packageSummoner:WarriorType name:@"德玛西亚之力"];
    
    NSLog(@"=================分割线=================");
    
    factory = [[NuoKeSaSiSummonerFactory alloc] init];
    summoner = [factory packageSummoner:MagicType name:@"魔蛇之拥"];
}




@end
