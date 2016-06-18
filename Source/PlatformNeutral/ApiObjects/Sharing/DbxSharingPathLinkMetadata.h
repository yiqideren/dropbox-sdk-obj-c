///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxSharingLinkMetadata.h"

@class DbxSharingPathLinkMetadata;
@class DbxSharingVisibility;

/// 
/// The DbxSharingPathLinkMetadata struct.
/// 
/// Metadata for a path-based shared link.
/// 
@interface DbxSharingPathLinkMetadata : DbxSharingLinkMetadata <DbxSerializable> 

/// Path in user's Dropbox.
@property (nonatomic, copy) NSString * _Nonnull path;

- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url visibility:(DbxSharingVisibility * _Nonnull)visibility path:(NSString * _Nonnull)path expires:(NSDate * _Nullable)expires;

- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url visibility:(DbxSharingVisibility * _Nonnull)visibility path:(NSString * _Nonnull)path;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingPathLinkMetadataSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingPathLinkMetadata * _Nonnull)obj;

+ (DbxSharingPathLinkMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
