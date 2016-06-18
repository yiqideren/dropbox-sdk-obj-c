///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingSharedLinkSettingsError;

/// 
/// The DbxSharingSharedLinkSettingsError union.
/// 
@interface DbxSharingSharedLinkSettingsError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingSharedLinkSettingsErrorTag) {
    /// The given settings are invalid (for example, all attributes of the
    /// SharedLinkSettings are empty, the requested visibility is password in
    /// RequestedVisibility but the linkPassword in SharedLinkSettings is
    /// missing, expires in SharedLinkSettings is set to the past, etc.)
    SharingSharedLinkSettingsErrorInvalidSettings,
    /// User is not allowed to modify the settings of this link. Note that basic
    /// users can only set public in RequestedVisibility as the
    /// requestedVisibility in SharedLinkSettings and cannot set expires in
    /// SharedLinkSettings
    SharingSharedLinkSettingsErrorNotAuthorized,
};

- (nonnull instancetype)initWithInvalidSettings;

- (nonnull instancetype)initWithNotAuthorized;

- (BOOL)isInvalidSettings;

- (BOOL)isNotAuthorized;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingSharedLinkSettingsError union type.
@property (nonatomic) SharingSharedLinkSettingsErrorTag tag;

@end


@interface DbxSharingSharedLinkSettingsErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingSharedLinkSettingsError * _Nonnull)obj;

+ (DbxSharingSharedLinkSettingsError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
