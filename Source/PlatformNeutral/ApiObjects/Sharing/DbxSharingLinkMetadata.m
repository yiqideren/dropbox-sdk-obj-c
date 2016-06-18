///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingCollectionLinkMetadata.h"
#import "DbxSharingLinkMetadata.h"
#import "DbxSharingPathLinkMetadata.h"
#import "DbxSharingVisibility.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingLinkMetadata 

- (instancetype)initWithUrl:(NSString *)url visibility:(DbxSharingVisibility *)visibility expires:(NSDate *)expires {

    self = [super init];
    if (self != nil) {
        _url = url;
        _visibility = visibility;
        _expires = expires;
    }
    return self;
}

- (instancetype)initWithUrl:(NSString *)url visibility:(DbxSharingVisibility *)visibility {
    return [self initWithUrl:url visibility:visibility expires:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingLinkMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingLinkMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingLinkMetadataSerializer serialize:self] description];
}

@end


@implementation DbxSharingLinkMetadataSerializer 

+ (NSDictionary *)serialize:(DbxSharingLinkMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"url"] = [DbxStringSerializer serialize:valueObj.url];
    jsonDict[@"visibility"] = [DbxSharingVisibilitySerializer serialize:valueObj.visibility];
    if (valueObj.expires != nil) {
        jsonDict[@"expires"] = [DbxNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    if ([valueObj isKindOfClass:[DbxSharingPathLinkMetadata class]]) {
        NSDictionary *subTypeFields = [DbxSharingPathLinkMetadataSerializer serialize:(DbxSharingPathLinkMetadata *)valueObj];
        for (NSString* key in subTypeFields) {
            jsonDict[key] = subTypeFields[key];
        }
        jsonDict[@".tag"] = @"path";
    }
    if ([valueObj isKindOfClass:[DbxSharingCollectionLinkMetadata class]]) {
        NSDictionary *subTypeFields = [DbxSharingCollectionLinkMetadataSerializer serialize:(DbxSharingCollectionLinkMetadata *)valueObj];
        for (NSString* key in subTypeFields) {
            jsonDict[key] = subTypeFields[key];
        }
        jsonDict[@".tag"] = @"collection";
    }

    return jsonDict;
}

+ (DbxSharingLinkMetadata *)deserialize:(NSDictionary *)valueDict {
    if ([valueDict[@".tag"] isEqualToString:@"path"]) {
        return [DbxSharingPathLinkMetadataSerializer deserialize:valueDict];
    }
    if ([valueDict[@".tag"] isEqualToString:@"collection"]) {
        return [DbxSharingCollectionLinkMetadataSerializer deserialize:valueDict];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
