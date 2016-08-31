///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGShareFolderError.h"
#import "DBSHARINGShareFolderErrorBase.h"
#import "DBSHARINGSharePathError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGShareFolderError

@synthesize badPath = _badPath;

#pragma mark - Constructors

- (instancetype)initWithEmailUnverified {
  self = [super init];
  if (self) {
    _tag = DBSHARINGShareFolderErrorEmailUnverified;
  }
  return self;
}

- (instancetype)initWithBadPath:(DBSHARINGSharePathError *)badPath {
  self = [super init];
  if (self) {
    _tag = DBSHARINGShareFolderErrorBadPath;
    _badPath = badPath;
  }
  return self;
}

- (instancetype)initWithTeamPolicyDisallowsMemberPolicy {
  self = [super init];
  if (self) {
    _tag = DBSHARINGShareFolderErrorTeamPolicyDisallowsMemberPolicy;
  }
  return self;
}

- (instancetype)initWithDisallowedSharedLinkPolicy {
  self = [super init];
  if (self) {
    _tag = DBSHARINGShareFolderErrorDisallowedSharedLinkPolicy;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGShareFolderErrorOther;
  }
  return self;
}

- (instancetype)initWithNoPermission {
  self = [super init];
  if (self) {
    _tag = DBSHARINGShareFolderErrorNoPermission;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharePathError *)badPath {
  if (![self isBadPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGShareFolderErrorBadPath, but was %@.", [self tagName]];
  }
  return _badPath;
}

#pragma mark - Tag state methods

- (BOOL)isEmailUnverified {
  return _tag == DBSHARINGShareFolderErrorEmailUnverified;
}

- (BOOL)isBadPath {
  return _tag == DBSHARINGShareFolderErrorBadPath;
}

- (BOOL)isTeamPolicyDisallowsMemberPolicy {
  return _tag == DBSHARINGShareFolderErrorTeamPolicyDisallowsMemberPolicy;
}

- (BOOL)isDisallowedSharedLinkPolicy {
  return _tag == DBSHARINGShareFolderErrorDisallowedSharedLinkPolicy;
}

- (BOOL)isOther {
  return _tag == DBSHARINGShareFolderErrorOther;
}

- (BOOL)isNoPermission {
  return _tag == DBSHARINGShareFolderErrorNoPermission;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGShareFolderErrorEmailUnverified:
    return @"DBSHARINGShareFolderErrorEmailUnverified";
  case DBSHARINGShareFolderErrorBadPath:
    return @"DBSHARINGShareFolderErrorBadPath";
  case DBSHARINGShareFolderErrorTeamPolicyDisallowsMemberPolicy:
    return @"DBSHARINGShareFolderErrorTeamPolicyDisallowsMemberPolicy";
  case DBSHARINGShareFolderErrorDisallowedSharedLinkPolicy:
    return @"DBSHARINGShareFolderErrorDisallowedSharedLinkPolicy";
  case DBSHARINGShareFolderErrorOther:
    return @"DBSHARINGShareFolderErrorOther";
  case DBSHARINGShareFolderErrorNoPermission:
    return @"DBSHARINGShareFolderErrorNoPermission";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGShareFolderErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGShareFolderErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGShareFolderErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGShareFolderErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGShareFolderError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isEmailUnverified]) {
    jsonDict[@".tag"] = @"email_unverified";
  } else if ([valueObj isBadPath]) {
    jsonDict = [[DBSHARINGSharePathErrorSerializer serialize:valueObj.badPath] mutableCopy];
    jsonDict[@".tag"] = @"bad_path";
  } else if ([valueObj isTeamPolicyDisallowsMemberPolicy]) {
    jsonDict[@".tag"] = @"team_policy_disallows_member_policy";
  } else if ([valueObj isDisallowedSharedLinkPolicy]) {
    jsonDict[@".tag"] = @"disallowed_shared_link_policy";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isNoPermission]) {
    jsonDict[@".tag"] = @"no_permission";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGShareFolderError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"email_unverified"]) {
    return [[DBSHARINGShareFolderError alloc] initWithEmailUnverified];
  } else if ([tag isEqualToString:@"bad_path"]) {
    DBSHARINGSharePathError *badPath = [DBSHARINGSharePathErrorSerializer deserialize:valueDict[@"bad_path"]];
    return [[DBSHARINGShareFolderError alloc] initWithBadPath:badPath];
  } else if ([tag isEqualToString:@"team_policy_disallows_member_policy"]) {
    return [[DBSHARINGShareFolderError alloc] initWithTeamPolicyDisallowsMemberPolicy];
  } else if ([tag isEqualToString:@"disallowed_shared_link_policy"]) {
    return [[DBSHARINGShareFolderError alloc] initWithDisallowedSharedLinkPolicy];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGShareFolderError alloc] initWithOther];
  } else if ([tag isEqualToString:@"no_permission"]) {
    return [[DBSHARINGShareFolderError alloc] initWithNoPermission];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end