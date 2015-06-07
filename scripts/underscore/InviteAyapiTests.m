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
    sendUser.mail        = @"tumiki0ituki";
    sendUser.emailDomain = @"@gmail.com";

    Ayapi *receiveUser = [Ayapi new];
    receiveUser.name   = @"ayapi";
    receiveUser.festivalInfo = @"http://yatsui-fes.com";
    // ライブコーディング調べていたら、
    // 六本木 Hackers Bar のブログ出て来て発見。
    // ギャルのプログラマに興味持った。
    // 音楽好きみたいだから、
    // 6 月 20, 21 日に渋谷である
    // やついフェスに誘ってみた。
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
