///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesListRevisionsError.h"
#import "DbxFilesLookupError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesListRevisionsError 

- (instancetype)initWithPath:(DbxFilesLookupError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (FilesListRevisionsErrorTag)FilesListRevisionsErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (FilesListRevisionsErrorTag)FilesListRevisionsErrorOther;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == (FilesListRevisionsErrorTag)FilesListRevisionsErrorPath;
}

- (BOOL)isOther {
    return _tag == (FilesListRevisionsErrorTag)FilesListRevisionsErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (FilesListRevisionsErrorTag)FilesListRevisionsErrorPath) {
        return @"(FilesListRevisionsErrorTag)FilesListRevisionsErrorPath";
    }
    if (_tag == (FilesListRevisionsErrorTag)FilesListRevisionsErrorOther) {
        return @"(FilesListRevisionsErrorTag)FilesListRevisionsErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesLookupError *)path {
    if (_tag != (FilesListRevisionsErrorTag)FilesListRevisionsErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesListRevisionsErrorTag)FilesListRevisionsErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesListRevisionsErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesListRevisionsErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesListRevisionsErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesListRevisionsErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesListRevisionsError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict[@"path"] = [DbxFilesLookupErrorSerializer serialize:valueObj.path];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesListRevisionsError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DbxFilesLookupError *path = [DbxFilesLookupErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesListRevisionsError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesListRevisionsError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
