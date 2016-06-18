///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingSharingUserError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingSharingUserError 

- (instancetype)initWithEmailUnverified {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharingUserErrorTag)SharingSharingUserErrorEmailUnverified;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingSharingUserErrorTag)SharingSharingUserErrorOther;
    }
    return self;
}

- (BOOL)isEmailUnverified {
    return _tag == (SharingSharingUserErrorTag)SharingSharingUserErrorEmailUnverified;
}

- (BOOL)isOther {
    return _tag == (SharingSharingUserErrorTag)SharingSharingUserErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingSharingUserErrorTag)SharingSharingUserErrorEmailUnverified) {
        return @"(SharingSharingUserErrorTag)SharingSharingUserErrorEmailUnverified";
    }
    if (_tag == (SharingSharingUserErrorTag)SharingSharingUserErrorOther) {
        return @"(SharingSharingUserErrorTag)SharingSharingUserErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharingUserErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharingUserErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharingUserErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharingUserErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharingUserError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isEmailUnverified]) {
        jsonDict[@".tag"] = @"email_unverified";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingSharingUserError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"email_unverified"]) {
        return [[DbxSharingSharingUserError alloc] initWithEmailUnverified];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingSharingUserError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
