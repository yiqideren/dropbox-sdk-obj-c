///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupMembersSelectorError.h"
#import "DbxTeamGroupSelectorError.h"

@implementation DbxTeamGroupMembersSelectorError 

- (instancetype)initWithGroupNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorGroupNotFound;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorOther;
    }
    return self;
}

- (instancetype)initWithMemberNotInGroup {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorMemberNotInGroup;
    }
    return self;
}

- (BOOL)isGroupNotFound {
    return _tag == (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorGroupNotFound;
}

- (BOOL)isOther {
    return _tag == (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorOther;
}

- (BOOL)isMemberNotInGroup {
    return _tag == (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorMemberNotInGroup;
}

- (NSString *)getTagName {
    if (_tag == (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorGroupNotFound) {
        return @"(TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorGroupNotFound";
    }
    if (_tag == (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorOther) {
        return @"(TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorOther";
    }
    if (_tag == (TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorMemberNotInGroup) {
        return @"(TeamGroupMembersSelectorErrorTag)TeamGroupMembersSelectorErrorMemberNotInGroup";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupMembersSelectorErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupMembersSelectorErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupMembersSelectorErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupMembersSelectorErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupMembersSelectorError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isGroupNotFound]) {
        jsonDict[@".tag"] = @"group_not_found";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isMemberNotInGroup]) {
        jsonDict[@".tag"] = @"member_not_in_group";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamGroupMembersSelectorError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"group_not_found"]) {
        return [[DbxTeamGroupMembersSelectorError alloc] initWithGroupNotFound];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamGroupMembersSelectorError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"member_not_in_group"]) {
        return [[DbxTeamGroupMembersSelectorError alloc] initWithMemberNotInGroup];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
