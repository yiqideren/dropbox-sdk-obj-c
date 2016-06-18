///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingSharedFolderAccessError;
@class DbxSharingUpdateFolderPolicyError;

/// 
/// The DbxSharingUpdateFolderPolicyError union.
/// 
@interface DbxSharingUpdateFolderPolicyError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingUpdateFolderPolicyErrorTag) {
    /// (no description)
    SharingUpdateFolderPolicyErrorAccessError,
    /// memberPolicy in UpdateFolderPolicyArg was set even though user is not on
    /// a team.
    SharingUpdateFolderPolicyErrorNotOnTeam,
    /// Team policy is more restrictive than memberPolicy in ShareFolderArg.
    SharingUpdateFolderPolicyErrorTeamPolicyDisallowsMemberPolicy,
    /// The current account is not allowed to select the specified
    /// sharedLinkPolicy in ShareFolderArg.
    SharingUpdateFolderPolicyErrorDisallowedSharedLinkPolicy,
    /// The current user does not have permission to perform this action.
    SharingUpdateFolderPolicyErrorNoPermission,
    /// (no description)
    SharingUpdateFolderPolicyErrorOther,
};

- (nonnull instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError * _Nonnull)accessError;

- (nonnull instancetype)initWithNotOnTeam;

- (nonnull instancetype)initWithTeamPolicyDisallowsMemberPolicy;

- (nonnull instancetype)initWithDisallowedSharedLinkPolicy;

- (nonnull instancetype)initWithNoPermission;

- (nonnull instancetype)initWithOther;

- (BOOL)isAccessError;

- (BOOL)isNotOnTeam;

- (BOOL)isTeamPolicyDisallowsMemberPolicy;

- (BOOL)isDisallowedSharedLinkPolicy;

- (BOOL)isNoPermission;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingUpdateFolderPolicyError union type.
@property (nonatomic) SharingUpdateFolderPolicyErrorTag tag;
@property (nonatomic) DbxSharingSharedFolderAccessError * _Nonnull accessError;

@end


@interface DbxSharingUpdateFolderPolicyErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingUpdateFolderPolicyError * _Nonnull)obj;

+ (DbxSharingUpdateFolderPolicyError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
