///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFileMembersCountResult.h"
#import "DbxSharingListFileMembersIndividualResult.h"
#import "DbxSharingSharingFileAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFileMembersIndividualResult 

- (instancetype)initWithResult:(DbxSharingListFileMembersCountResult *)result {
    self = [super init];
    if (self != nil) {
        _tag = (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultResult;
        _result = result;
    }
    return self;
}

- (instancetype)initWithAccessError:(DbxSharingSharingFileAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultOther;
    }
    return self;
}

- (BOOL)isResult {
    return _tag == (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultResult;
}

- (BOOL)isAccessError {
    return _tag == (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultAccessError;
}

- (BOOL)isOther {
    return _tag == (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultResult) {
        return @"(SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultResult";
    }
    if (_tag == (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultAccessError) {
        return @"(SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultAccessError";
    }
    if (_tag == (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultOther) {
        return @"(SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingListFileMembersCountResult *)result {
    if (_tag != (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultResult) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultResult, but was %@.", [self getTagName]];
    }
    return _result;
}

- (DbxSharingSharingFileAccessError *)accessError {
    if (_tag != (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingListFileMembersIndividualResultTag)SharingListFileMembersIndividualResultAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFileMembersIndividualResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFileMembersIndividualResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFileMembersIndividualResultSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFileMembersIndividualResultSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFileMembersIndividualResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isResult]) {
        jsonDict[@"result"] = [DbxSharingListFileMembersCountResultSerializer serialize:valueObj.result];
        jsonDict[@".tag"] = @"result";
    }
    else if ([valueObj isAccessError]) {
        jsonDict[@"access_error"] = [DbxSharingSharingFileAccessErrorSerializer serialize:valueObj.accessError];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingListFileMembersIndividualResult *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"result"]) {
        DbxSharingListFileMembersCountResult *result = [DbxSharingListFileMembersCountResultSerializer deserialize:valueDict[@"result"]];
        return [[DbxSharingListFileMembersIndividualResult alloc] initWithResult:result];
    }
    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharingFileAccessError *accessError = [DbxSharingSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingListFileMembersIndividualResult alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingListFileMembersIndividualResult alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
