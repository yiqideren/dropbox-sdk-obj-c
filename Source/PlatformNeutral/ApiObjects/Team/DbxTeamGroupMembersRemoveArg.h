///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamIncludeMembersArg.h"

@class DbxTeamGroupMembersRemoveArg;
@class DbxTeamGroupSelector;
@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamGroupMembersRemoveArg struct.
/// 
@interface DbxTeamGroupMembersRemoveArg : DbxTeamIncludeMembersArg <DbxSerializable> 

/// Group from which users will be removed.
@property (nonatomic) DbxTeamGroupSelector * _Nonnull group;
/// List of users to be removed from the group.
@property (nonatomic) NSArray<DbxTeamUserSelectorArg *> * _Nonnull users;

- (nonnull instancetype)initWithGroup:(DbxTeamGroupSelector * _Nonnull)group users:(NSArray<DbxTeamUserSelectorArg *> * _Nonnull)users returnMembers:(NSNumber * _Nullable)returnMembers;

- (nonnull instancetype)initWithGroup:(DbxTeamGroupSelector * _Nonnull)group users:(NSArray<DbxTeamUserSelectorArg *> * _Nonnull)users;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamGroupMembersRemoveArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupMembersRemoveArg * _Nonnull)obj;

+ (DbxTeamGroupMembersRemoveArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
