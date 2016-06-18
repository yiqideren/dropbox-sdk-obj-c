///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxAsyncPollError.h"

@class DbxTeamGroupsPollError;

/// 
/// The DbxTeamGroupsPollError union.
/// 
@interface DbxTeamGroupsPollError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamGroupsPollErrorTag) {
    /// The job ID is invalid.
    TeamGroupsPollErrorInvalidAsyncJobId,
    /// Something went wrong with the job on Dropbox's end. You'll need to
    /// verify that the action you were taking succeeded, and if not, try again.
    /// This should happen very rarely.
    TeamGroupsPollErrorInternalError,
    /// (no description)
    TeamGroupsPollErrorOther,
    /// You are not allowed to poll this job.
    TeamGroupsPollErrorAccessDenied,
};

- (nonnull instancetype)initWithInvalidAsyncJobId;

- (nonnull instancetype)initWithInternalError;

- (nonnull instancetype)initWithOther;

- (nonnull instancetype)initWithAccessDenied;

- (BOOL)isInvalidAsyncJobId;

- (BOOL)isInternalError;

- (BOOL)isOther;

- (BOOL)isAccessDenied;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamGroupsPollError union type.
@property (nonatomic) TeamGroupsPollErrorTag tag;

@end


@interface DbxTeamGroupsPollErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupsPollError * _Nonnull)obj;

+ (DbxTeamGroupsPollError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
