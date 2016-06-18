///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingVisibility;

/// 
/// The DbxSharingVisibility union.
/// 
/// Who can access a shared link. The most open visibility is public. The
/// default depends on many aspects, such as team and user preferences and
/// shared folder settings.
/// 
@interface DbxSharingVisibility : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingVisibilityTag) {
    /// Anyone who has received the link can access it. No login required.
    SharingVisibilityPublic,
    /// Only members of the same team can access the link. Login is required.
    SharingVisibilityTeamOnly,
    /// A link-specific password is required to access the link. Login is not
    /// required.
    SharingVisibilityPassword,
    /// Only members of the same team who have the link-specific password can
    /// access the link.
    SharingVisibilityTeamAndPassword,
    /// Only members of the shared folder containing the linked file can access
    /// the link. Login is required.
    SharingVisibilitySharedFolderOnly,
    /// (no description)
    SharingVisibilityOther,
};

- (nonnull instancetype)initWithPublic;

- (nonnull instancetype)initWithTeamOnly;

- (nonnull instancetype)initWithPassword;

- (nonnull instancetype)initWithTeamAndPassword;

- (nonnull instancetype)initWithSharedFolderOnly;

- (nonnull instancetype)initWithOther;

- (BOOL)isPublic;

- (BOOL)isTeamOnly;

- (BOOL)isPassword;

- (BOOL)isTeamAndPassword;

- (BOOL)isSharedFolderOnly;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingVisibility union type.
@property (nonatomic) SharingVisibilityTag tag;

@end


@interface DbxSharingVisibilitySerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingVisibility * _Nonnull)obj;

+ (DbxSharingVisibility * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
