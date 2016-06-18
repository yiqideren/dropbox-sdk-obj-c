///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamPoliciesEmmState.h"

@implementation DbxTeamPoliciesEmmState 

- (instancetype)initWithDisabled {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateDisabled;
    }
    return self;
}

- (instancetype)initWithOptional {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOptional;
    }
    return self;
}

- (instancetype)initWithRequired {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateRequired;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOther;
    }
    return self;
}

- (BOOL)isDisabled {
    return _tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateDisabled;
}

- (BOOL)isOptional {
    return _tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOptional;
}

- (BOOL)isRequired {
    return _tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateRequired;
}

- (BOOL)isOther {
    return _tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOther;
}

- (NSString *)getTagName {
    if (_tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateDisabled) {
        return @"(TeamPoliciesEmmStateTag)TeamPoliciesEmmStateDisabled";
    }
    if (_tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOptional) {
        return @"(TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOptional";
    }
    if (_tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateRequired) {
        return @"(TeamPoliciesEmmStateTag)TeamPoliciesEmmStateRequired";
    }
    if (_tag == (TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOther) {
        return @"(TeamPoliciesEmmStateTag)TeamPoliciesEmmStateOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamPoliciesEmmStateSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamPoliciesEmmStateSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamPoliciesEmmStateSerializer serialize:self] description];
}

@end


@implementation DbxTeamPoliciesEmmStateSerializer 

+ (NSDictionary *)serialize:(DbxTeamPoliciesEmmState *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isDisabled]) {
        jsonDict[@".tag"] = @"disabled";
    }
    else if ([valueObj isOptional]) {
        jsonDict[@".tag"] = @"optional";
    }
    else if ([valueObj isRequired]) {
        jsonDict[@".tag"] = @"required";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamPoliciesEmmState *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"disabled"]) {
        return [[DbxTeamPoliciesEmmState alloc] initWithDisabled];
    }
    if ([tag isEqualToString:@"optional"]) {
        return [[DbxTeamPoliciesEmmState alloc] initWithOptional];
    }
    if ([tag isEqualToString:@"required"]) {
        return [[DbxTeamPoliciesEmmState alloc] initWithRequired];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamPoliciesEmmState alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
