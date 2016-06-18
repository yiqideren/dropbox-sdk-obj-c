///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingUnmountFolderArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingUnmountFolderArg 

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);

    self = [super init];
    if (self != nil) {
        _sharedFolderId = sharedFolderId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingUnmountFolderArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingUnmountFolderArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingUnmountFolderArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingUnmountFolderArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingUnmountFolderArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"shared_folder_id"] = [DbxStringSerializer serialize:valueObj.sharedFolderId];

    return jsonDict;
}

+ (DbxSharingUnmountFolderArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sharedFolderId = [DbxStringSerializer deserialize:valueDict[@"shared_folder_id"]];

    return [[DbxSharingUnmountFolderArg alloc] initWithSharedFolderId:sharedFolderId];
}

@end
