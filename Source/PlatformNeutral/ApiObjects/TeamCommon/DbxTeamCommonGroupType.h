///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamCommonGroupType;

/// 
/// The DbxTeamCommonGroupType union.
/// 
/// The group type determines how a group is created and managed.
/// 
@interface DbxTeamCommonGroupType : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamCommonGroupTypeTag) {
    /// A group to which team members are automatically added. Applicable to
    /// team folders https://www.dropbox.com/help/986 only.
    TeamCommonGroupTypeTeam,
    /// A group is created and managed by a user.
    TeamCommonGroupTypeUserManaged,
    /// (no description)
    TeamCommonGroupTypeOther,
};

- (nonnull instancetype)initWithTeam;

- (nonnull instancetype)initWithUserManaged;

- (nonnull instancetype)initWithOther;

- (BOOL)isTeam;

- (BOOL)isUserManaged;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamCommonGroupType union type.
@property (nonatomic) TeamCommonGroupTypeTag tag;

@end


@interface DbxTeamCommonGroupTypeSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamCommonGroupType * _Nonnull)obj;

+ (DbxTeamCommonGroupType * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
