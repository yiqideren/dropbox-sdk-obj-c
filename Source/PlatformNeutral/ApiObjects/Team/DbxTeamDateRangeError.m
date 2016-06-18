///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDateRangeError.h"

@implementation DbxTeamDateRangeError 

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamDateRangeErrorTag)TeamDateRangeErrorOther;
    }
    return self;
}

- (BOOL)isOther {
    return _tag == (TeamDateRangeErrorTag)TeamDateRangeErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (TeamDateRangeErrorTag)TeamDateRangeErrorOther) {
        return @"(TeamDateRangeErrorTag)TeamDateRangeErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamDateRangeErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamDateRangeErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamDateRangeErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamDateRangeErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamDateRangeError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamDateRangeError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamDateRangeError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
