///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingAccessLevel;
@class DbxSharingMemberSelector;
@class DbxSharingUpdateFolderMemberArg;

/// 
/// The DbxSharingUpdateFolderMemberArg struct.
/// 
@interface DbxSharingUpdateFolderMemberArg : NSObject <DbxSerializable> 

/// The ID for the shared folder.
@property (nonatomic, copy) NSString * _Nonnull sharedFolderId;
/// The member of the shared folder to update.  Only the dropboxId in
/// MemberSelector may be set at this time.
@property (nonatomic) DbxSharingMemberSelector * _Nonnull member;
/// The new access level for member. owner in AccessLevel is disallowed.
@property (nonatomic) DbxSharingAccessLevel * _Nonnull accessLevel;

- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId member:(DbxSharingMemberSelector * _Nonnull)member accessLevel:(DbxSharingAccessLevel * _Nonnull)accessLevel;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingUpdateFolderMemberArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingUpdateFolderMemberArg * _Nonnull)obj;

+ (DbxSharingUpdateFolderMemberArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
