///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamAdminTier;

/// 
/// The DbxTeamAdminTier union.
/// 
/// Describes which team-related admin permissions a user has.
/// 
@interface DbxTeamAdminTier : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamAdminTierTag) {
    /// User is an administrator of the team - has all permissions.
    TeamAdminTierTeamAdmin,
    /// User can do most user provisioning, de-provisioning and management.
    TeamAdminTierUserManagementAdmin,
    /// User can do a limited set of common support tasks for existing users.
    TeamAdminTierSupportAdmin,
    /// User is not an admin of the team.
    TeamAdminTierMemberOnly,
};

- (nonnull instancetype)initWithTeamAdmin;

- (nonnull instancetype)initWithUserManagementAdmin;

- (nonnull instancetype)initWithSupportAdmin;

- (nonnull instancetype)initWithMemberOnly;

- (BOOL)isTeamAdmin;

- (BOOL)isUserManagementAdmin;

- (BOOL)isSupportAdmin;

- (BOOL)isMemberOnly;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamAdminTier union type.
@property (nonatomic) TeamAdminTierTag tag;

@end


@interface DbxTeamAdminTierSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamAdminTier * _Nonnull)obj;

+ (DbxTeamAdminTier * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
