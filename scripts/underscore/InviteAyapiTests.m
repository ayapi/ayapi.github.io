#import <XCTest/XCTest.h>
#import "Ayapi.h"

@interface InviteAyapiTests : XCTestCase

@end


@implementation InviteAyapiTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    Ayapi *sendUser      = [Ayapi new];
    sendUser.name        = @"shinichiro.ota";
    sendUser.age         = @"32";
    sendUser.comeFrom    = @"Fukuoka";
    sendUser.mail        = @"tumiki0ituki";
    sendUser.emailDomain = @"@gmail.com";
    
    sendUser.firstProgramming = @"Cycling 74 Max/MSP/Jitter 4.6, Processing";
    sendUser.nowMainLanguage  = @"Objective-C";
    sendUser.SubLanguage      = @"Java, Swift";
    sendUser.nextLearning     = @"openFrameworks, Cycling 74 Max 7";
    sendUser.otherSkill       = @"Adobe Illustrator, Photoshop, Premiere, iStopMotion";

    Ayapi *receiveUser = [Ayapi new];
    receiveUser.name   = @"ayapi";

    // ライブコーディング調べていたら、
    // 六本木 Hackers Bar のブログ出て来て発見。
    // ギャルのプログラマに興味持った。
    // 音楽好きみたいだから、
    // 6 月 20, 21 日に渋谷である
    // やついフェスに誘ってみた。
    receiveUser.festivalInfo = @"http://yatsui-fes.com";
    
    // めげずに誘う
    // 2015/07/10 (fri) open: 19:00, start: 19:30
    receiveUser.superDeluxeCannel12        = https://www.super-deluxe.com/room/3923/
    // 2015/06/28 (sun) open: 18:00, start: 19:00
    receiveUser.Early21stCenturysMusicVol3 = http://torpedoo.net/21music_3/
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInvite
{
    XCTAssert([sendUser isInvetite:receiveUser]], @"返信もらえませんでした...");
}

@end
