///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesLookupError.h"
#import "DbxSharingCreateSharedLinkWithSettingsError.h"
#import "DbxSharingSharedLinkSettingsError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingCreateSharedLinkWithSettingsError 

- (instancetype)initWithPath:(DbxFilesLookupError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithEmailNotVerified {
    self = [super init];
    if (self != nil) {
        _tag = (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorEmailNotVerified;
    }
    return self;
}

- (instancetype)initWithSharedLinkAlreadyExists {
    self = [super init];
    if (self != nil) {
        _tag = (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSharedLinkAlreadyExists;
    }
    return self;
}

- (instancetype)initWithSettingsError:(DbxSharingSharedLinkSettingsError *)settingsError {
    self = [super init];
    if (self != nil) {
        _tag = (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSettingsError;
        _settingsError = settingsError;
    }
    return self;
}

- (instancetype)initWithAccessDenied {
    self = [super init];
    if (self != nil) {
        _tag = (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorAccessDenied;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorPath;
}

- (BOOL)isEmailNotVerified {
    return _tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorEmailNotVerified;
}

- (BOOL)isSharedLinkAlreadyExists {
    return _tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSharedLinkAlreadyExists;
}

- (BOOL)isSettingsError {
    return _tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSettingsError;
}

- (BOOL)isAccessDenied {
    return _tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorAccessDenied;
}

- (NSString *)getTagName {
    if (_tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorPath) {
        return @"(SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorPath";
    }
    if (_tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorEmailNotVerified) {
        return @"(SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorEmailNotVerified";
    }
    if (_tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSharedLinkAlreadyExists) {
        return @"(SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSharedLinkAlreadyExists";
    }
    if (_tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSettingsError) {
        return @"(SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSettingsError";
    }
    if (_tag == (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorAccessDenied) {
        return @"(SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorAccessDenied";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesLookupError *)path {
    if (_tag != (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

- (DbxSharingSharedLinkSettingsError *)settingsError {
    if (_tag != (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSettingsError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingCreateSharedLinkWithSettingsErrorTag)SharingCreateSharedLinkWithSettingsErrorSettingsError, but was %@.", [self getTagName]];
    }
    return _settingsError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingCreateSharedLinkWithSettingsErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingCreateSharedLinkWithSettingsErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingCreateSharedLinkWithSettingsErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingCreateSharedLinkWithSettingsErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingCreateSharedLinkWithSettingsError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict[@"path"] = [DbxFilesLookupErrorSerializer serialize:valueObj.path];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isEmailNotVerified]) {
        jsonDict[@".tag"] = @"email_not_verified";
    }
    else if ([valueObj isSharedLinkAlreadyExists]) {
        jsonDict[@".tag"] = @"shared_link_already_exists";
    }
    else if ([valueObj isSettingsError]) {
        jsonDict[@"settings_error"] = [DbxSharingSharedLinkSettingsErrorSerializer serialize:valueObj.settingsError];
        jsonDict[@".tag"] = @"settings_error";
    }
    else if ([valueObj isAccessDenied]) {
        jsonDict[@".tag"] = @"access_denied";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingCreateSharedLinkWithSettingsError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DbxFilesLookupError *path = [DbxFilesLookupErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxSharingCreateSharedLinkWithSettingsError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"email_not_verified"]) {
        return [[DbxSharingCreateSharedLinkWithSettingsError alloc] initWithEmailNotVerified];
    }
    if ([tag isEqualToString:@"shared_link_already_exists"]) {
        return [[DbxSharingCreateSharedLinkWithSettingsError alloc] initWithSharedLinkAlreadyExists];
    }
    if ([tag isEqualToString:@"settings_error"]) {
        DbxSharingSharedLinkSettingsError *settingsError = [DbxSharingSharedLinkSettingsErrorSerializer deserialize:valueDict[@"settings_error"]];
        return [[DbxSharingCreateSharedLinkWithSettingsError alloc] initWithSettingsError:settingsError];
    }
    if ([tag isEqualToString:@"access_denied"]) {
        return [[DbxSharingCreateSharedLinkWithSettingsError alloc] initWithAccessDenied];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
