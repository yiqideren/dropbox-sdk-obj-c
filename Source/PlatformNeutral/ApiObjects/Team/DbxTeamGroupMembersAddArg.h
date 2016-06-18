///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamIncludeMembersArg.h"

@class DbxTeamGroupMembersAddArg;
@class DbxTeamGroupSelector;
@class DbxTeamMemberAccess;

/// 
/// The DbxTeamGroupMembersAddArg struct.
/// 
@interface DbxTeamGroupMembersAddArg : DbxTeamIncludeMembersArg <DbxSerializable> 

/// Group to which users will be added.
@property (nonatomic) DbxTeamGroupSelector * _Nonnull group;
/// List of users to be added to the group.
@property (nonatomic) NSArray<DbxTeamMemberAccess *> * _Nonnull members;

- (nonnull instancetype)initWithGroup:(DbxTeamGroupSelector * _Nonnull)group members:(NSArray<DbxTeamMemberAccess *> * _Nonnull)members returnMembers:(NSNumber * _Nullable)returnMembers;

- (nonnull instancetype)initWithGroup:(DbxTeamGroupSelector * _Nonnull)group members:(NSArray<DbxTeamMemberAccess *> * _Nonnull)members;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamGroupMembersAddArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupMembersAddArg * _Nonnull)obj;

+ (DbxTeamGroupMembersAddArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
