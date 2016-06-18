///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamPoliciesSharedFolderMemberPolicy;

/// 
/// The DbxTeamPoliciesSharedFolderMemberPolicy union.
/// 
/// Policy governing who can be a member of a folder shared by a team member.
/// 
@interface DbxTeamPoliciesSharedFolderMemberPolicy : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamPoliciesSharedFolderMemberPolicyTag) {
    /// Only a teammate can be a member of a folder shared by a team member.
    TeamPoliciesSharedFolderMemberPolicyTeam,
    /// Anyone can be a member of a folder shared by a team member.
    TeamPoliciesSharedFolderMemberPolicyAnyone,
    /// (no description)
    TeamPoliciesSharedFolderMemberPolicyOther,
};

- (nonnull instancetype)initWithTeam;

- (nonnull instancetype)initWithAnyone;

- (nonnull instancetype)initWithOther;

- (BOOL)isTeam;

- (BOOL)isAnyone;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamPoliciesSharedFolderMemberPolicy union type.
@property (nonatomic) TeamPoliciesSharedFolderMemberPolicyTag tag;

@end


@interface DbxTeamPoliciesSharedFolderMemberPolicySerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamPoliciesSharedFolderMemberPolicy * _Nonnull)obj;

+ (DbxTeamPoliciesSharedFolderMemberPolicy * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
