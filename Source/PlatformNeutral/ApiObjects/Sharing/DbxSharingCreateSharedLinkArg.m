///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingCreateSharedLinkArg.h"
#import "DbxSharingPendingUploadMode.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingCreateSharedLinkArg 

- (instancetype)initWithPath:(NSString *)path shortUrl:(NSNumber *)shortUrl pendingUpload:(DbxSharingPendingUploadMode *)pendingUpload {

    self = [super init];
    if (self != nil) {
        _path = path;
        _shortUrl = shortUrl ?: @NO;
        _pendingUpload = pendingUpload;
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path shortUrl:nil pendingUpload:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingCreateSharedLinkArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingCreateSharedLinkArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingCreateSharedLinkArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingCreateSharedLinkArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingCreateSharedLinkArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"short_url"] = [DbxBoolSerializer serialize:valueObj.shortUrl];
    if (valueObj.pendingUpload != nil) {
        jsonDict[@"pending_upload"] = [DbxSharingPendingUploadModeSerializer serialize:valueObj.pendingUpload];
    }

    return jsonDict;
}

+ (DbxSharingCreateSharedLinkArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict[@"path"]];
    NSNumber *shortUrl = [DbxBoolSerializer deserialize:valueDict[@"short_url"]];
    DbxSharingPendingUploadMode *pendingUpload = valueDict[@"pending_upload"] != nil ? [DbxSharingPendingUploadModeSerializer deserialize:valueDict[@"pending_upload"]] : nil;

    return [[DbxSharingCreateSharedLinkArg alloc] initWithPath:path shortUrl:shortUrl pendingUpload:pendingUpload];
}

@end
