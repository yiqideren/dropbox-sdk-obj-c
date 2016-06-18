///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxSharingSharedLinkError.h"

@class DbxSharingRevokeSharedLinkError;

/// 
/// The DbxSharingRevokeSharedLinkError union.
/// 
@interface DbxSharingRevokeSharedLinkError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingRevokeSharedLinkErrorTag) {
    /// The shared link wasn't found
    SharingRevokeSharedLinkErrorSharedLinkNotFound,
    /// The caller is not allowed to access this shared link
    SharingRevokeSharedLinkErrorSharedLinkAccessDenied,
    /// (no description)
    SharingRevokeSharedLinkErrorOther,
    /// Shared link is malformed.
    SharingRevokeSharedLinkErrorSharedLinkMalformed,
};

- (nonnull instancetype)initWithSharedLinkNotFound;

- (nonnull instancetype)initWithSharedLinkAccessDenied;

- (nonnull instancetype)initWithOther;

- (nonnull instancetype)initWithSharedLinkMalformed;

- (BOOL)isSharedLinkNotFound;

- (BOOL)isSharedLinkAccessDenied;

- (BOOL)isOther;

- (BOOL)isSharedLinkMalformed;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingRevokeSharedLinkError union type.
@property (nonatomic) SharingRevokeSharedLinkErrorTag tag;

@end


@interface DbxSharingRevokeSharedLinkErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingRevokeSharedLinkError * _Nonnull)obj;

+ (DbxSharingRevokeSharedLinkError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
