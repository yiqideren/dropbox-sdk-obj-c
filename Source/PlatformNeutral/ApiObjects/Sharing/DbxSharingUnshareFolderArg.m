///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingUnshareFolderArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingUnshareFolderArg 

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId leaveACopy:(NSNumber *)leaveACopy {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);

    self = [super init];
    if (self != nil) {
        _sharedFolderId = sharedFolderId;
        _leaveACopy = leaveACopy ?: @NO;
    }
    return self;
}

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId {
    return [self initWithSharedFolderId:sharedFolderId leaveACopy:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingUnshareFolderArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingUnshareFolderArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingUnshareFolderArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingUnshareFolderArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingUnshareFolderArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"shared_folder_id"] = [DbxStringSerializer serialize:valueObj.sharedFolderId];
    jsonDict[@"leave_a_copy"] = [DbxBoolSerializer serialize:valueObj.leaveACopy];

    return jsonDict;
}

+ (DbxSharingUnshareFolderArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sharedFolderId = [DbxStringSerializer deserialize:valueDict[@"shared_folder_id"]];
    NSNumber *leaveACopy = [DbxBoolSerializer deserialize:valueDict[@"leave_a_copy"]];

    return [[DbxSharingUnshareFolderArg alloc] initWithSharedFolderId:sharedFolderId leaveACopy:leaveACopy];
}

@end
