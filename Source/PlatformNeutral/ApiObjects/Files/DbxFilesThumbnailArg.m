///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesThumbnailArg.h"
#import "DbxFilesThumbnailFormat.h"
#import "DbxFilesThumbnailSize.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesThumbnailArg 

- (instancetype)initWithPath:(NSString *)path format:(DbxFilesThumbnailFormat *)format size:(DbxFilesThumbnailSize *)size {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
        _format = format ?: [[DbxFilesThumbnailFormat alloc] initWithJpeg];
        _size = size ?: [[DbxFilesThumbnailSize alloc] initWithW64h64];
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path format:nil size:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesThumbnailArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesThumbnailArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesThumbnailArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesThumbnailArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesThumbnailArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"format"] = [DbxFilesThumbnailFormatSerializer serialize:valueObj.format];
    jsonDict[@"size"] = [DbxFilesThumbnailSizeSerializer serialize:valueObj.size];

    return jsonDict;
}

+ (DbxFilesThumbnailArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict[@"path"]];
    DbxFilesThumbnailFormat *format = [DbxFilesThumbnailFormatSerializer deserialize:valueDict[@"format"]];
    DbxFilesThumbnailSize *size = [DbxFilesThumbnailSizeSerializer deserialize:valueDict[@"size"]];

    return [[DbxFilesThumbnailArg alloc] initWithPath:path format:format size:size];
}

@end
