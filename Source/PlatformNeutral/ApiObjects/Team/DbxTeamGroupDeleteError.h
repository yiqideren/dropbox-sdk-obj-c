///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamGroupSelectorError.h"

@class DbxTeamGroupDeleteError;

/// 
/// The DbxTeamGroupDeleteError union.
/// 
@interface DbxTeamGroupDeleteError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamGroupDeleteErrorTag) {
    /// No matching group found. No groups match the specified group ID.
    TeamGroupDeleteErrorGroupNotFound,
    /// (no description)
    TeamGroupDeleteErrorOther,
    /// This group has already been deleted.
    TeamGroupDeleteErrorGroupAlreadyDeleted,
};

- (nonnull instancetype)initWithGroupNotFound;

- (nonnull instancetype)initWithOther;

- (nonnull instancetype)initWithGroupAlreadyDeleted;

- (BOOL)isGroupNotFound;

- (BOOL)isOther;

- (BOOL)isGroupAlreadyDeleted;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamGroupDeleteError union type.
@property (nonatomic) TeamGroupDeleteErrorTag tag;

@end


@interface DbxTeamGroupDeleteErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupDeleteError * _Nonnull)obj;

+ (DbxTeamGroupDeleteError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
