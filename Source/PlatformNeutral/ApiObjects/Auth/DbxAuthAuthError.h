///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxAuthAuthError;

/// 
/// The DbxAuthAuthError union.
/// 
/// Errors occurred during authentication.
/// 
@interface DbxAuthAuthError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, AuthAuthErrorTag) {
    /// The access token is invalid.
    AuthAuthErrorInvalidAccessToken,
    /// The user specified in 'Dropbox-API-Select-User' is no longer on the
    /// team.
    AuthAuthErrorInvalidSelectUser,
    /// The user specified in 'Dropbox-API-Select-Admin' is not a Dropbox
    /// Business team admin.
    AuthAuthErrorInvalidSelectAdmin,
    /// (no description)
    AuthAuthErrorOther,
};

- (nonnull instancetype)initWithInvalidAccessToken;

- (nonnull instancetype)initWithInvalidSelectUser;

- (nonnull instancetype)initWithInvalidSelectAdmin;

- (nonnull instancetype)initWithOther;

- (BOOL)isInvalidAccessToken;

- (BOOL)isInvalidSelectUser;

- (BOOL)isInvalidSelectAdmin;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxAuthAuthError union type.
@property (nonatomic) AuthAuthErrorTag tag;

@end


@interface DbxAuthAuthErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxAuthAuthError * _Nonnull)obj;

+ (DbxAuthAuthError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
