///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesUploadSessionFinishError.h"
#import "DbxFilesUploadSessionLookupError.h"
#import "DbxFilesWriteError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesUploadSessionFinishError 

- (instancetype)initWithLookupFailed:(DbxFilesUploadSessionLookupError *)lookupFailed {
    self = [super init];
    if (self != nil) {
        _tag = (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorLookupFailed;
        _lookupFailed = lookupFailed;
    }
    return self;
}

- (instancetype)initWithPath:(DbxFilesWriteError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithTooManySharedFolderTargets {
    self = [super init];
    if (self != nil) {
        _tag = (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorTooManySharedFolderTargets;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorOther;
    }
    return self;
}

- (BOOL)isLookupFailed {
    return _tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorLookupFailed;
}

- (BOOL)isPath {
    return _tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorPath;
}

- (BOOL)isTooManySharedFolderTargets {
    return _tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorTooManySharedFolderTargets;
}

- (BOOL)isOther {
    return _tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorLookupFailed) {
        return @"(FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorLookupFailed";
    }
    if (_tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorPath) {
        return @"(FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorPath";
    }
    if (_tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorTooManySharedFolderTargets) {
        return @"(FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorTooManySharedFolderTargets";
    }
    if (_tag == (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorOther) {
        return @"(FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesUploadSessionLookupError *)lookupFailed {
    if (_tag != (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorLookupFailed) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorLookupFailed, but was %@.", [self getTagName]];
    }
    return _lookupFailed;
}

- (DbxFilesWriteError *)path {
    if (_tag != (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesUploadSessionFinishErrorTag)FilesUploadSessionFinishErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesUploadSessionFinishErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesUploadSessionFinishErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesUploadSessionFinishErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesUploadSessionFinishErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesUploadSessionFinishError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isLookupFailed]) {
        jsonDict[@"lookup_failed"] = [DbxFilesUploadSessionLookupErrorSerializer serialize:valueObj.lookupFailed];
        jsonDict[@".tag"] = @"lookup_failed";
    }
    else if ([valueObj isPath]) {
        jsonDict[@"path"] = [DbxFilesWriteErrorSerializer serialize:valueObj.path];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isTooManySharedFolderTargets]) {
        jsonDict[@".tag"] = @"too_many_shared_folder_targets";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesUploadSessionFinishError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"lookup_failed"]) {
        DbxFilesUploadSessionLookupError *lookupFailed = [DbxFilesUploadSessionLookupErrorSerializer deserialize:valueDict[@"lookup_failed"]];
        return [[DbxFilesUploadSessionFinishError alloc] initWithLookupFailed:lookupFailed];
    }
    if ([tag isEqualToString:@"path"]) {
        DbxFilesWriteError *path = [DbxFilesWriteErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesUploadSessionFinishError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"too_many_shared_folder_targets"]) {
        return [[DbxFilesUploadSessionFinishError alloc] initWithTooManySharedFolderTargets];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesUploadSessionFinishError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
