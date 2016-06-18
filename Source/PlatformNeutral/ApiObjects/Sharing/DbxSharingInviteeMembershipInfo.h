///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxSharingMembershipInfo.h"

@class DbxSharingAccessLevel;
@class DbxSharingInviteeInfo;
@class DbxSharingInviteeMembershipInfo;
@class DbxSharingMemberPermission;
@class DbxSharingUserInfo;

/// 
/// The DbxSharingInviteeMembershipInfo struct.
/// 
/// Information about an invited member of a shared content.
/// 
@interface DbxSharingInviteeMembershipInfo : DbxSharingMembershipInfo <DbxSerializable> 

/// Recipient of the invitation.
@property (nonatomic) DbxSharingInviteeInfo * _Nonnull invitee;
/// The user this invitation is tied to, if available.
@property (nonatomic) DbxSharingUserInfo * _Nullable user;

- (nonnull instancetype)initWithAccessType:(DbxSharingAccessLevel * _Nonnull)accessType invitee:(DbxSharingInviteeInfo * _Nonnull)invitee permissions:(NSArray<DbxSharingMemberPermission *> * _Nullable)permissions initials:(NSString * _Nullable)initials isInherited:(NSNumber * _Nullable)isInherited user:(DbxSharingUserInfo * _Nullable)user;

- (nonnull instancetype)initWithAccessType:(DbxSharingAccessLevel * _Nonnull)accessType invitee:(DbxSharingInviteeInfo * _Nonnull)invitee;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingInviteeMembershipInfoSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingInviteeMembershipInfo * _Nonnull)obj;

+ (DbxSharingInviteeMembershipInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
