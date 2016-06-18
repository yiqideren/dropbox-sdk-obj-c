///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupDeleteError.h"
#import "DbxTeamGroupSelectorError.h"

@implementation DbxTeamGroupDeleteError 

- (instancetype)initWithGroupNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupNotFound;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorOther;
    }
    return self;
}

- (instancetype)initWithGroupAlreadyDeleted {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupAlreadyDeleted;
    }
    return self;
}

- (BOOL)isGroupNotFound {
    return _tag == (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupNotFound;
}

- (BOOL)isOther {
    return _tag == (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorOther;
}

- (BOOL)isGroupAlreadyDeleted {
    return _tag == (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupAlreadyDeleted;
}

- (NSString *)getTagName {
    if (_tag == (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupNotFound) {
        return @"(TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupNotFound";
    }
    if (_tag == (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorOther) {
        return @"(TeamGroupDeleteErrorTag)TeamGroupDeleteErrorOther";
    }
    if (_tag == (TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupAlreadyDeleted) {
        return @"(TeamGroupDeleteErrorTag)TeamGroupDeleteErrorGroupAlreadyDeleted";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupDeleteErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupDeleteErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupDeleteErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupDeleteErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupDeleteError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isGroupNotFound]) {
        jsonDict[@".tag"] = @"group_not_found";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isGroupAlreadyDeleted]) {
        jsonDict[@".tag"] = @"group_already_deleted";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamGroupDeleteError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"group_not_found"]) {
        return [[DbxTeamGroupDeleteError alloc] initWithGroupNotFound];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamGroupDeleteError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"group_already_deleted"]) {
        return [[DbxTeamGroupDeleteError alloc] initWithGroupAlreadyDeleted];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
