///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListSharedLinksResult.h"
#import "DbxSharingSharedLinkMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListSharedLinksResult 

- (instancetype)initWithLinks:(NSArray<DbxSharingSharedLinkMetadata *> *)links hasMore:(NSNumber *)hasMore cursor:(NSString *)cursor {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](links);

    self = [super init];
    if (self != nil) {
        _links = links;
        _hasMore = hasMore;
        _cursor = cursor;
    }
    return self;
}

- (instancetype)initWithLinks:(NSArray<DbxSharingSharedLinkMetadata *> *)links hasMore:(NSNumber *)hasMore {
    return [self initWithLinks:links hasMore:hasMore cursor:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListSharedLinksResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListSharedLinksResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListSharedLinksResultSerializer serialize:self] description];
}

@end


@implementation DbxSharingListSharedLinksResultSerializer 

+ (NSDictionary *)serialize:(DbxSharingListSharedLinksResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"links"] = [DbxArraySerializer serialize:valueObj.links withBlock:^id(id obj) { return [DbxSharingSharedLinkMetadataSerializer serialize:obj]; }];
    jsonDict[@"has_more"] = [DbxBoolSerializer serialize:valueObj.hasMore];
    if (valueObj.cursor != nil) {
        jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    }

    return jsonDict;
}

+ (DbxSharingListSharedLinksResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxSharingSharedLinkMetadata *> *links = [DbxArraySerializer deserialize:valueDict[@"links"] withBlock:^id(id obj) { return [DbxSharingSharedLinkMetadataSerializer deserialize:obj]; }];
    NSNumber *hasMore = [DbxBoolSerializer deserialize:valueDict[@"has_more"]];
    NSString *cursor = valueDict[@"cursor"] != nil ? [DbxStringSerializer deserialize:valueDict[@"cursor"]] : nil;

    return [[DbxSharingListSharedLinksResult alloc] initWithLinks:links hasMore:hasMore cursor:cursor];
}

@end
