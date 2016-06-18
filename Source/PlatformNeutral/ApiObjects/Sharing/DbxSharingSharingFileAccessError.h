///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingSharingFileAccessError;

/// 
/// The DbxSharingSharingFileAccessError union.
/// 
/// User could not access this file.
/// 
@interface DbxSharingSharingFileAccessError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingSharingFileAccessErrorTag) {
    /// Current user does not have sufficient privileges to perform the desired
    /// action.
    SharingSharingFileAccessErrorNoPermission,
    /// File specified was not found.
    SharingSharingFileAccessErrorInvalidFile,
    /// A folder can't be shared this way. Use folder sharing or a shared link
    /// instead.
    SharingSharingFileAccessErrorIsFolder,
    /// A file inside a public folder can't be shared this way. Use a public
    /// link instead.
    SharingSharingFileAccessErrorInsidePublicFolder,
    /// A Mac OS X package can't be shared this way. Use a shared link instead.
    SharingSharingFileAccessErrorInsideOsxPackage,
    /// (no description)
    SharingSharingFileAccessErrorOther,
};

- (nonnull instancetype)initWithNoPermission;

- (nonnull instancetype)initWithInvalidFile;

- (nonnull instancetype)initWithIsFolder;

- (nonnull instancetype)initWithInsidePublicFolder;

- (nonnull instancetype)initWithInsideOsxPackage;

- (nonnull instancetype)initWithOther;

- (BOOL)isNoPermission;

- (BOOL)isInvalidFile;

- (BOOL)isIsFolder;

- (BOOL)isInsidePublicFolder;

- (BOOL)isInsideOsxPackage;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingSharingFileAccessError union type.
@property (nonatomic) SharingSharingFileAccessErrorTag tag;

@end


@interface DbxSharingSharingFileAccessErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingSharingFileAccessError * _Nonnull)obj;

+ (DbxSharingSharingFileAccessError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
