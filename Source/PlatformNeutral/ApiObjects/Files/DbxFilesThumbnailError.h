///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesLookupError;
@class DbxFilesThumbnailError;

/// 
/// The DbxFilesThumbnailError union.
/// 
@interface DbxFilesThumbnailError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, FilesThumbnailErrorTag) {
    /// An error occurs when downloading metadata for the image.
    FilesThumbnailErrorPath,
    /// The file extension doesn't allow conversion to a thumbnail.
    FilesThumbnailErrorUnsupportedExtension,
    /// The image cannot be converted to a thumbnail.
    FilesThumbnailErrorUnsupportedImage,
    /// An error occurs during thumbnail conversion.
    FilesThumbnailErrorConversionError,
};

- (nonnull instancetype)initWithPath:(DbxFilesLookupError * _Nonnull)path;

- (nonnull instancetype)initWithUnsupportedExtension;

- (nonnull instancetype)initWithUnsupportedImage;

- (nonnull instancetype)initWithConversionError;

- (BOOL)isPath;

- (BOOL)isUnsupportedExtension;

- (BOOL)isUnsupportedImage;

- (BOOL)isConversionError;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxFilesThumbnailError union type.
@property (nonatomic) FilesThumbnailErrorTag tag;
@property (nonatomic) DbxFilesLookupError * _Nonnull path;

@end


@interface DbxFilesThumbnailErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesThumbnailError * _Nonnull)obj;

+ (DbxFilesThumbnailError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
