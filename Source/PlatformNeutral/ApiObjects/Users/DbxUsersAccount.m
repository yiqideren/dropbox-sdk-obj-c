///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersAccount.h"
#import "DbxUsersName.h"

@implementation DbxUsersAccount 

- (instancetype)initWithAccountId:(NSString *)accountId name:(DbxUsersName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled profilePhotoUrl:(NSString *)profilePhotoUrl {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:40] maxLength:[NSNumber numberWithInt:40] pattern:nil](accountId);

    self = [super init];
    if (self != nil) {
        _accountId = accountId;
        _name = name;
        _email = email;
        _emailVerified = emailVerified;
        _profilePhotoUrl = profilePhotoUrl;
        _disabled = disabled;
    }
    return self;
}

- (instancetype)initWithAccountId:(NSString *)accountId name:(DbxUsersName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled {
    return [self initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled profilePhotoUrl:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxUsersAccountSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxUsersAccountSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxUsersAccountSerializer serialize:self] description];
}

@end


@implementation DbxUsersAccountSerializer 

+ (NSDictionary *)serialize:(DbxUsersAccount *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"account_id"] = [DbxStringSerializer serialize:valueObj.accountId];
    jsonDict[@"name"] = [DbxUsersNameSerializer serialize:valueObj.name];
    jsonDict[@"email"] = [DbxStringSerializer serialize:valueObj.email];
    jsonDict[@"email_verified"] = [DbxBoolSerializer serialize:valueObj.emailVerified];
    jsonDict[@"disabled"] = [DbxBoolSerializer serialize:valueObj.disabled];
    if (valueObj.profilePhotoUrl != nil) {
        jsonDict[@"profile_photo_url"] = [DbxStringSerializer serialize:valueObj.profilePhotoUrl];
    }

    return jsonDict;
}

+ (DbxUsersAccount *)deserialize:(NSDictionary *)valueDict {
    NSString *accountId = [DbxStringSerializer deserialize:valueDict[@"account_id"]];
    DbxUsersName *name = [DbxUsersNameSerializer deserialize:valueDict[@"name"]];
    NSString *email = [DbxStringSerializer deserialize:valueDict[@"email"]];
    NSNumber *emailVerified = [DbxBoolSerializer deserialize:valueDict[@"email_verified"]];
    NSNumber *disabled = [DbxBoolSerializer deserialize:valueDict[@"disabled"]];
    NSString *profilePhotoUrl = valueDict[@"profile_photo_url"] != nil ? [DbxStringSerializer deserialize:valueDict[@"profile_photo_url"]] : nil;

    return [[DbxUsersAccount alloc] initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled profilePhotoUrl:profilePhotoUrl];
}

@end
