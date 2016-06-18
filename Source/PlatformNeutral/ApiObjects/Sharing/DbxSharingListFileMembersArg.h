///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingListFileMembersArg;
@class DbxSharingMemberAction;

/// 
/// The DbxSharingListFileMembersArg struct.
/// 
/// Arguments for listFileMembers.
/// 
@interface DbxSharingListFileMembersArg : NSObject <DbxSerializable> 

/// The file for which you want to see members.
@property (nonatomic, copy) NSString * _Nonnull file;
/// The actions for which to return permissions on a member
@property (nonatomic) NSArray<DbxSharingMemberAction *> * _Nullable actions;
/// Whether to include members who only have access from a parent shared folder.
@property (nonatomic, copy) NSNumber * _Nonnull includeInherited;
/// Number of members to return max per query. Defaults to 100 if no limit is
/// specified.
@property (nonatomic, copy) NSNumber * _Nonnull limit;

- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file actions:(NSArray<DbxSharingMemberAction *> * _Nullable)actions includeInherited:(NSNumber * _Nullable)includeInherited limit:(NSNumber * _Nullable)limit;

- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingListFileMembersArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingListFileMembersArg * _Nonnull)obj;

+ (DbxSharingListFileMembersArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
