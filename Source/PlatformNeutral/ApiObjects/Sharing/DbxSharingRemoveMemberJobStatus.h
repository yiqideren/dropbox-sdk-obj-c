///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxAsyncPollResultBase.h"

@class DbxSharingMemberAccessLevelResult;
@class DbxSharingRemoveFolderMemberError;
@class DbxSharingRemoveMemberJobStatus;

/// 
/// The DbxSharingRemoveMemberJobStatus union.
/// 
@interface DbxSharingRemoveMemberJobStatus : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingRemoveMemberJobStatusTag) {
    /// The asynchronous job is still in progress.
    SharingRemoveMemberJobStatusInProgress,
    /// Removing the folder member has finished. The value is information about
    /// whether the member has another form of access.
    SharingRemoveMemberJobStatusComplete,
    /// (no description)
    SharingRemoveMemberJobStatusFailed,
};

- (nonnull instancetype)initWithInProgress;

- (nonnull instancetype)initWithComplete:(DbxSharingMemberAccessLevelResult * _Nonnull)complete;

- (nonnull instancetype)initWithFailed:(DbxSharingRemoveFolderMemberError * _Nonnull)failed;

- (BOOL)isInProgress;

- (BOOL)isComplete;

- (BOOL)isFailed;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingRemoveMemberJobStatus union type.
@property (nonatomic) SharingRemoveMemberJobStatusTag tag;
@property (nonatomic) DbxSharingMemberAccessLevelResult * _Nonnull complete;
@property (nonatomic) DbxSharingRemoveFolderMemberError * _Nonnull failed;

@end


@interface DbxSharingRemoveMemberJobStatusSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingRemoveMemberJobStatus * _Nonnull)obj;

+ (DbxSharingRemoveMemberJobStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
