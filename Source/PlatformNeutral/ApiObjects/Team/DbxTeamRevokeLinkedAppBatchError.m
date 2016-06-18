///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamRevokeLinkedAppBatchError.h"

@implementation DbxTeamRevokeLinkedAppBatchError 

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamRevokeLinkedAppBatchErrorTag)TeamRevokeLinkedAppBatchErrorOther;
    }
    return self;
}

- (BOOL)isOther {
    return _tag == (TeamRevokeLinkedAppBatchErrorTag)TeamRevokeLinkedAppBatchErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (TeamRevokeLinkedAppBatchErrorTag)TeamRevokeLinkedAppBatchErrorOther) {
        return @"(TeamRevokeLinkedAppBatchErrorTag)TeamRevokeLinkedAppBatchErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamRevokeLinkedAppBatchErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamRevokeLinkedAppBatchErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamRevokeLinkedAppBatchErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamRevokeLinkedAppBatchErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamRevokeLinkedAppBatchError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamRevokeLinkedAppBatchError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamRevokeLinkedAppBatchError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
