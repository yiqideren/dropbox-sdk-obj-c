///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxAsyncPollResultBase.h"

@class DbxTeamMemberAddResult;
@class DbxTeamMembersAddJobStatus;

/// 
/// The DbxTeamMembersAddJobStatus union.
/// 
@interface DbxTeamMembersAddJobStatus : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamMembersAddJobStatusTag) {
    /// The asynchronous job is still in progress.
    TeamMembersAddJobStatusInProgress,
    /// The asynchronous job has finished. For each member that was specified in
    /// the parameter MembersAddArg that was provided to membersAdd, a
    /// corresponding item is returned in this list.
    TeamMembersAddJobStatusComplete,
    /// The asynchronous job returned an error. The string contains an error
    /// message.
    TeamMembersAddJobStatusFailed,
};

- (nonnull instancetype)initWithInProgress;

- (nonnull instancetype)initWithComplete:(NSArray<DbxTeamMemberAddResult *> * _Nonnull)complete;

- (nonnull instancetype)initWithFailed:(NSString * _Nonnull)failed;

- (BOOL)isInProgress;

- (BOOL)isComplete;

- (BOOL)isFailed;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamMembersAddJobStatus union type.
@property (nonatomic) TeamMembersAddJobStatusTag tag;
@property (nonatomic) NSArray<DbxTeamMemberAddResult *> * _Nonnull complete;
@property (nonatomic, copy) NSString * _Nonnull failed;

@end


@interface DbxTeamMembersAddJobStatusSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersAddJobStatus * _Nonnull)obj;

+ (DbxTeamMembersAddJobStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
