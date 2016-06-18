///
/// Auto-generated by Stone, do not modify.
///

#import "DbxAsyncLaunchResultBase.h"
#import "DbxSharingShareFolderLaunch.h"
#import "DbxSharingSharedFolderMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingShareFolderLaunch 

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderLaunchTag)SharingShareFolderLaunchAsyncJobId;
        _asyncJobId = asyncJobId;
    }
    return self;
}

- (instancetype)initWithComplete:(DbxSharingSharedFolderMetadata *)complete {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderLaunchTag)SharingShareFolderLaunchComplete;
        _complete = complete;
    }
    return self;
}

- (BOOL)isAsyncJobId {
    return _tag == (SharingShareFolderLaunchTag)SharingShareFolderLaunchAsyncJobId;
}

- (BOOL)isComplete {
    return _tag == (SharingShareFolderLaunchTag)SharingShareFolderLaunchComplete;
}

- (NSString *)getTagName {
    if (_tag == (SharingShareFolderLaunchTag)SharingShareFolderLaunchAsyncJobId) {
        return @"(SharingShareFolderLaunchTag)SharingShareFolderLaunchAsyncJobId";
    }
    if (_tag == (SharingShareFolderLaunchTag)SharingShareFolderLaunchComplete) {
        return @"(SharingShareFolderLaunchTag)SharingShareFolderLaunchComplete";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)asyncJobId {
    if (_tag != (SharingShareFolderLaunchTag)SharingShareFolderLaunchAsyncJobId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingShareFolderLaunchTag)SharingShareFolderLaunchAsyncJobId, but was %@.", [self getTagName]];
    }
    return _asyncJobId;
}

- (DbxSharingSharedFolderMetadata *)complete {
    if (_tag != (SharingShareFolderLaunchTag)SharingShareFolderLaunchComplete) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingShareFolderLaunchTag)SharingShareFolderLaunchComplete, but was %@.", [self getTagName]];
    }
    return _complete;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingShareFolderLaunchSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingShareFolderLaunchSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingShareFolderLaunchSerializer serialize:self] description];
}

@end


@implementation DbxSharingShareFolderLaunchSerializer 

+ (NSDictionary *)serialize:(DbxSharingShareFolderLaunch *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAsyncJobId]) {
        jsonDict[@"async_job_id"] = [DbxStringSerializer serialize:valueObj.asyncJobId];
        jsonDict[@".tag"] = @"async_job_id";
    }
    else if ([valueObj isComplete]) {
        jsonDict[@"complete"] = [DbxSharingSharedFolderMetadataSerializer serialize:valueObj.complete];
        jsonDict[@".tag"] = @"complete";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingShareFolderLaunch *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"async_job_id"]) {
        NSString *asyncJobId = [DbxStringSerializer deserialize:valueDict[@"async_job_id"]];
        return [[DbxSharingShareFolderLaunch alloc] initWithAsyncJobId:asyncJobId];
    }
    if ([tag isEqualToString:@"complete"]) {
        DbxSharingSharedFolderMetadata *complete = [DbxSharingSharedFolderMetadataSerializer deserialize:valueDict[@"complete"]];
        return [[DbxSharingShareFolderLaunch alloc] initWithComplete:complete];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
