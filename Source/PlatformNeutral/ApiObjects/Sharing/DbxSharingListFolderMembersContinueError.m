///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFolderMembersContinueError.h"
#import "DbxSharingSharedFolderAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFolderMembersContinueError 

- (instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithInvalidCursor {
    self = [super init];
    if (self != nil) {
        _tag = (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorInvalidCursor;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorOther;
    }
    return self;
}

- (BOOL)isAccessError {
    return _tag == (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorAccessError;
}

- (BOOL)isInvalidCursor {
    return _tag == (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorInvalidCursor;
}

- (BOOL)isOther {
    return _tag == (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorAccessError) {
        return @"(SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorAccessError";
    }
    if (_tag == (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorInvalidCursor) {
        return @"(SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorInvalidCursor";
    }
    if (_tag == (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorOther) {
        return @"(SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedFolderAccessError *)accessError {
    if (_tag != (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingListFolderMembersContinueErrorTag)SharingListFolderMembersContinueErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFolderMembersContinueErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFolderMembersContinueErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFolderMembersContinueErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFolderMembersContinueErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFolderMembersContinueError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict[@"access_error"] = [DbxSharingSharedFolderAccessErrorSerializer serialize:valueObj.accessError];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isInvalidCursor]) {
        jsonDict[@".tag"] = @"invalid_cursor";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingListFolderMembersContinueError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharedFolderAccessError *accessError = [DbxSharingSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingListFolderMembersContinueError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"invalid_cursor"]) {
        return [[DbxSharingListFolderMembersContinueError alloc] initWithInvalidCursor];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingListFolderMembersContinueError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
