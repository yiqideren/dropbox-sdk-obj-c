///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesMetadata;

/// 
/// The DbxFilesMetadata struct.
/// 
/// Metadata for a file or folder.
/// 
@interface DbxFilesMetadata : NSObject <DbxSerializable> 

/// The last component of the path (including extension). This never contains a
/// slash.
@property (nonatomic, copy) NSString * _Nonnull name;
/// The lowercased full path in the user's Dropbox. This always starts with a
/// slash. This field will be null if the file or folder is not mounted.
@property (nonatomic, copy) NSString * _Nullable pathLower;
/// The cased path to be used for display purposes only. In rare instances the
/// casing will not correctly match the user's filesystem, but this behavior
/// will match the path provided in the Core API v1. Changes to the casing of
/// paths won't be returned by listFolderContinue. This field will be null if
/// the file or folder is not mounted.
@property (nonatomic, copy) NSString * _Nullable pathDisplay;
/// Deprecated. Please use parentSharedFolderId in FileSharingInfo or
/// parentSharedFolderId in FolderSharingInfo instead.
@property (nonatomic, copy) NSString * _Nullable parentSharedFolderId;

- (nonnull instancetype)initWithName:(NSString * _Nonnull)name pathLower:(NSString * _Nullable)pathLower pathDisplay:(NSString * _Nullable)pathDisplay parentSharedFolderId:(NSString * _Nullable)parentSharedFolderId;

- (nonnull instancetype)initWithName:(NSString * _Nonnull)name;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesMetadataSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesMetadata * _Nonnull)obj;

+ (DbxFilesMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
