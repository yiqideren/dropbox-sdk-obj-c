///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamUserSelectorArg union.
/// 
/// Argument for selecting a single user, either by team_member_id, external_id
/// or email.
/// 
@interface DbxTeamUserSelectorArg : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamUserSelectorArgTag) {
    /// (no description)
    TeamUserSelectorArgTeamMemberId,
    /// (no description)
    TeamUserSelectorArgExternalId,
    /// (no description)
    TeamUserSelectorArgEmail,
};

- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId;

- (nonnull instancetype)initWithExternalId:(NSString * _Nonnull)externalId;

- (nonnull instancetype)initWithEmail:(NSString * _Nonnull)email;

- (BOOL)isTeamMemberId;

- (BOOL)isExternalId;

- (BOOL)isEmail;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamUserSelectorArg union type.
@property (nonatomic) TeamUserSelectorArgTag tag;
@property (nonatomic, copy) NSString * _Nonnull teamMemberId;
@property (nonatomic, copy) NSString * _Nonnull externalId;
@property (nonatomic, copy) NSString * _Nonnull email;

@end


@interface DbxTeamUserSelectorArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamUserSelectorArg * _Nonnull)obj;

+ (DbxTeamUserSelectorArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
