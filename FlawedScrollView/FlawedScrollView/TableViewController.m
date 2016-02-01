//
//  TableViewController.m
//  FlawedScrollView
//
//  Created by wxyz on 15/11/20.
//  Copyright © 2015年 wxyz. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"


static NSString * const TableViewCellReuseIdentifier = @"TableViewCellReuseIdentifier";

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"Table View";
    self.tableView.allowsSelection = NO;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 50;
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:TableViewCellReuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSURL *)imageURLForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSDictionary<NSNumber *, NSString *> *urls;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        urls = @{
            @0: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dcaa3f12fAdDDXfbZ",
            @7: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e542145W7QhGEp",
            @14: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5421b70QDTL7L",
            @21: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f1TFSzB2NT",
            @28: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5421dZuKziTqP",
            @35: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5421f532TwJjb",
            @42: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54222J2ODesOC",
            @49: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc800808dDlS0umpI",
            @56: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc800808ekPaLzZj4",
            @63: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5422dScz11DUk",
            @70: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc9e5422eF1W40V7k",
            @77: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc8008094zldf0yNG",
            @84: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc80080961BNFpvJj",
            @91: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d101aPhkYz8E",
            @98: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc800809a9UqWujUL",
            @5: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc7f6d0f0T6CmP17M",
            @12: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5421arEd64GKW",
            @19: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc9e54213xh0jB2Lo",
            @26: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f13228cYF7Da",
            @33: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc800808abgqKf3wb",
            @40: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f137BluhBiaC",
            @47: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc800808cqXa2Avr9",
            @54: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f1384RyEZXu9",
            @61: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc800808f2T8QVMTC",
            @68: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0faBS2TrZ4a",
            @75: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d0fdRAF61qHo",
            @82: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc9e54230Okpypyut",
            @89: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f13f3EgvJrlK",
            @96: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f143I6zeSmjt",
            @3: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc8008086JUgOc0vH",
            @10: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54218IfMWu9pf",
            @17: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc80080856rACm5H2",
            @24: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f131GNVEr3go",
            @31: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f1359sw01OLH",
            @38: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f53m0kxApj",
            @45: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc800808bW0ul8P4o",
            @52: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e542277FuKEFVZ",
            @59: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5422bro3SQ8W6",
            @66: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f13aVpfzSf2w",
            @73: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc8008093XvMW5EN9",
            @80: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d0ffCEWpGKiZ",
            @87: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f141DeIHWMpf",
            @94: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc8008098JEDFr9P6",
            @1: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc9e54212rfqtiprH",
            @8: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54216192UosSA",
            @15: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f3HPC8cZxH",
            @22: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54215eFkP5J0v",
            @29: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f133fyqitNiK",
            @36: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f7pNJRmQFz",
            @43: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54221p6hyfWTZ",
            @50: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54226Fa8jmf8E",
            @57: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54229iCmD4ZHE",
            @64: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc8008091Wx2YZtRG",
            @71: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f13cDuwQioDS",
            @78: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d0fe1ter8Bsi",
            @85: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d100L4X96xzO",
            @92: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f1428VcURT40",
            @99: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc800809bD80Eer5I",
            @6: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f130Zhz78tXb",
            @13: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f2oQ4dMdih",
            @20: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dcaa3f12etqzArJqx",
            @27: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5421cP1zq4xgD",
            @34: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5421eG77Vk8o4",
            @41: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e542202m7ZKQUO",
            @48: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54225VRRTSIuB",
            @55: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f904pCodud",
            @62: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc8008090ULw5G5TV",
            @69: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc8008092boQlXcU9",
            @76: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f13dcoUsEfad",
            @83: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc9e54231B97al4Rc",
            @90: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f140fLrWP38d",
            @97: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc9e54233IY1LOy8f",
            @4: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dcaa3f12cygfcr1DS",
            @11: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e542195WpEXZrN",
            @18: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc8008087I9ezqzeg",
            @25: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc8008089zRBqMdFi",
            @32: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f134jVoalr6c",
            @39: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f1366WmgAUuW",
            @46: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54224Z8c35TKo",
            @53: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54228bTKxNbKH",
            @60: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5422c8lsEOMWB",
            @67: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f13bybZpvvbh",
            @74: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d0fc2wGCsHAj",
            @81: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc9e5422fXUXbCsay",
            @88: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dcaa3f13ei8EJTYHj",
            @95: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc8008099vQw91pxA",
            @2: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dcaa3f12dJtVlJxFu",
            @9: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54217Y8Ag8Nxv",
            @16: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc854b2d32dc7f6d0ef8DcSPR8v",
            @23: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc8008088YXzm1coX",
            @30: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f4RLatKCjs",
            @37: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f6Wc0gc4zh",
            @44: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e54223WiC8W8Xj",
            @51: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc7f6d0f8jDfKtBbB",
            @58: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dc9e5422av38Z4AYI",
            @65: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fc954b2d32dcaa3f139QiFZiilb",
            @72: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc7f6d0fbfjWGDezL",
            @79: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc80080953QH9hU9t",
            @86: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc9e54232EdCiDk42",
            @93: @"http://test.cdn.dev.webapp.163.com:8204/file/56a71fca54b2d32dc800809730olZIti"
        };
    });
    return [NSURL URLWithString:urls[@(indexPath.section)]];
}

- (NSString *)titleForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSArray<NSString *> *titles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        titles = @[
            @"芦笋牛肉",
            @"山药百合大枣粥",
            @"雪耳炖白鸽",
            @"三鲜酿面筋",
            @"爆炒肉片",
            @"麻酱笋尖",
            @"冬瓜燕",
            @"锅塌黄鱼",
            @"蜜瓜海螺老鸡汤",
            @"奶香菠菜",
            @"瓤木花雀",
            @"黑森林蛋糕为爱吃狂",
            @"水煮鲢鱼",
            @"木樨菜",
            @"萝卜桂鱼",
            @"酥页层层",
            @"白菜锅子",
            @"肉末烧饼",
            @"抓炒里脊",
            @"淮杞鸡脚响螺汤",
            @"清汤牛腩",
            @"党参黄芪炖鸡汤",
            @"牛膝蹄筋",
            @"芹菜清疸汤",
            @"烧汁煎生蚝",
            @"蚝油生菜",
            @"锅巴肉片",
            @"珍珠豆腐羹",
            @"珊瑚桂鱼",
            @"鲜椒嫩仔鸡",
            @"青蟹粉丝煲",
            @"熘脊髓",
            @"福山烧小鸡",
            @"车前子红枣田螺汤",
            @"炊麒麟鱼",
            @"仙鹤鲍鱼",
            @"什锦蛋卷",
            @"润燥热咳饮",
            @"通草排骨汤",
            @"酱炒鸡翼球",
            @"五花肉炒豆腐泡菜",
            @"素酿南瓜",
            @"山萸肉合桃乌鸡汤",
            @"石榴鸡",
            @"干煸鳝鱼丝",
            @"芦笋大虾",
            @"蒜香煎海虾",
            @"干烧大虾",
            @"荷叶乌鸡汤",
            @"佛手海参",
            @"浦江蟹羹",
            @"彩椒炒香肠",
            @"三美豆腐",
            @"杜仲腰花",
            @"酥盒回锅肉",
            @"烩鸭腰儿",
            @"韭菜鲜鱿",
            @"姜汁热窝鸡",
            @"鲍王闹府",
            @"椒香孔雀鲳鱼",
            @"沙拉酱炒鱿鱼卷",
            @"罗汉大虾",
            @"熘腰花儿",
            @"龙衔海棠",
            @"麻仁当归猪踭汤",
            @"柚皮蒸排骨",
            @"母子相会",
            @"冬瓜赤小豆金银肾汤",
            @"炖牛掌",
            @"扒燕窝",
            @"炸蚕蛹鸡",
            @"米粉肉",
            @"乳酪蒸虾仁",
            @"酸辣臊子蹄筋",
            @"炊米麸肉",
            @"白油肉片",
            @"南北杏川贝炖鹧鸪",
            @"淮杞浸乌鸡",
            @"梅花粥",
            @"虫草鸭舌",
            @"五彩小炒",
            @"芜爆山鸡",
            @"香肠儿",
            @"蛋黄凤尾白玉卷",
            @"冰皮盐水鸡",
            @"八宝梨罐",
            @"连理双味鱼",
            @"海鲜拼盘",
            @"京式酸辣汤",
            @"生炊龙虾",
            @"芥兰炒香肠",
            @"栗子白菜",
            @"姜丝牛肉",
            @"烤鸭条",
            @"砂锅鸭块",
            @"八宝蒸乌鸡",
            @"脆皮大肠",
            @"风林茄子",
            @"琵琶大虾",
            @"扣肉",
        ];
    });
    return titles[indexPath.section];
}

- (float)scoreForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSMutableDictionary<NSNumber *, NSNumber *> *scoreDict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        scoreDict = [[NSMutableDictionary alloc] init];
    });
    if (!scoreDict[@(indexPath.section)]) {
        float score = arc4random_uniform(101) / 100.0;
        scoreDict[@(indexPath.section)] = @(score);
    }
    return scoreDict[@(indexPath.section)].floatValue;
}

- (NSString *)detailForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSMutableDictionary<NSNumber *, NSString *> *detailDict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        detailDict = [[NSMutableDictionary alloc] init];
    });
    if (!detailDict[@(indexPath.section)]) {
        NSMutableString *s = [[NSMutableString alloc] init];
        NSInteger seg = arc4random_uniform(15) + 1;
        for (NSInteger i =  0; i < seg; i++) {
            [s appendFormat:@"%09d", arc4random_uniform(1000000000)];
        }
        detailDict[@(indexPath.section)] = s;
    }
    return detailDict[@(indexPath.section)];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableViewCellReuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    [cell setTitle:[self titleForRowAtIndexPath:indexPath]];
    [cell setDetail:[self detailForRowAtIndexPath:indexPath]];
    [cell setImageURL:[self imageURLForRowAtIndexPath:indexPath]];
    [cell setScore:[self scoreForRowAtIndexPath:indexPath]];
    [cell setAuthorAvatarURL:[NSURL URLWithString:@"http://g.fp.ps.netease.com/vchecker/file/56a7197e96dee424bf25d993X4f0plfk"]];
    
    return cell;
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

@end
