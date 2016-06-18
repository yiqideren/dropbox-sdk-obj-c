///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupMemberSelectorError.h"
#import "DbxTeamGroupMemberSetAccessTypeError.h"

@implementation DbxTeamGroupMemberSetAccessTypeError 

- (instancetype)initWithGroupNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorGroupNotFound;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorOther;
    }
    return self;
}

- (instancetype)initWithMemberNotInGroup {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorMemberNotInGroup;
    }
    return self;
}

- (instancetype)initWithUserCannotBeManagerOfCompanyManagedGroup {
    self = [super init];
    if (self != nil) {
        _tag = (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorUserCannotBeManagerOfCompanyManagedGroup;
    }
    return self;
}

- (BOOL)isGroupNotFound {
    return _tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorGroupNotFound;
}

- (BOOL)isOther {
    return _tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorOther;
}

- (BOOL)isMemberNotInGroup {
    return _tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorMemberNotInGroup;
}

- (BOOL)isUserCannotBeManagerOfCompanyManagedGroup {
    return _tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorUserCannotBeManagerOfCompanyManagedGroup;
}

- (NSString *)getTagName {
    if (_tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorGroupNotFound) {
        return @"(TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorGroupNotFound";
    }
    if (_tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorOther) {
        return @"(TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorOther";
    }
    if (_tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorMemberNotInGroup) {
        return @"(TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorMemberNotInGroup";
    }
    if (_tag == (TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorUserCannotBeManagerOfCompanyManagedGroup) {
        return @"(TeamGroupMemberSetAccessTypeErrorTag)TeamGroupMemberSetAccessTypeErrorUserCannotBeManagerOfCompanyManagedGroup";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupMemberSetAccessTypeErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupMemberSetAccessTypeErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupMemberSetAccessTypeErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupMemberSetAccessTypeErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupMemberSetAccessTypeError *)valueObj {
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
    else if ([valueObj isUserCannotBeManagerOfCompanyManagedGroup]) {
        jsonDict[@".tag"] = @"user_cannot_be_manager_of_company_managed_group";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamGroupMemberSetAccessTypeError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"group_not_found"]) {
        return [[DbxTeamGroupMemberSetAccessTypeError alloc] initWithGroupNotFound];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamGroupMemberSetAccessTypeError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"member_not_in_group"]) {
        return [[DbxTeamGroupMemberSetAccessTypeError alloc] initWithMemberNotInGroup];
    }
    if ([tag isEqualToString:@"user_cannot_be_manager_of_company_managed_group"]) {
        return [[DbxTeamGroupMemberSetAccessTypeError alloc] initWithUserCannotBeManagerOfCompanyManagedGroup];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
