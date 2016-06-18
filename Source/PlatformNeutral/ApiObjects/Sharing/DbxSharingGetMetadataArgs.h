///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingFolderAction;
@class DbxSharingGetMetadataArgs;

/// 
/// The DbxSharingGetMetadataArgs struct.
/// 
@interface DbxSharingGetMetadataArgs : NSObject <DbxSerializable> 

/// The ID for the shared folder.
@property (nonatomic, copy) NSString * _Nonnull sharedFolderId;
/// This is a list indicating whether the returned folder data will include a
/// boolean value  allow in FolderPermission that describes whether the current
/// user can perform the  FolderAction on the folder.
@property (nonatomic) NSArray<DbxSharingFolderAction *> * _Nullable actions;

- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId actions:(NSArray<DbxSharingFolderAction *> * _Nullable)actions;

- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingGetMetadataArgsSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingGetMetadataArgs * _Nonnull)obj;

+ (DbxSharingGetMetadataArgs * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
