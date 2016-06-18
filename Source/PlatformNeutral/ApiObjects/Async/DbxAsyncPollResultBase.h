///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxAsyncPollResultBase;

/// 
/// The DbxAsyncPollResultBase union.
/// 
/// Result returned by methods that poll for the status of an asynchronous job.
/// Unions that extend this union should add a 'complete' field with a type of
/// the information returned upon job completion. See PollEmptyResult for an
/// example.
/// 
@interface DbxAsyncPollResultBase : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, AsyncPollResultBaseTag) {
    /// The asynchronous job is still in progress.
    AsyncPollResultBaseInProgress,
};

- (nonnull instancetype)initWithInProgress;

- (BOOL)isInProgress;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxAsyncPollResultBase union type.
@property (nonatomic) AsyncPollResultBaseTag tag;

@end


@interface DbxAsyncPollResultBaseSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxAsyncPollResultBase * _Nonnull)obj;

+ (DbxAsyncPollResultBase * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
