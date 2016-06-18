///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesGpsCoordinates;

/// 
/// The DbxFilesGpsCoordinates struct.
/// 
/// GPS coordinates for a photo or video.
/// 
@interface DbxFilesGpsCoordinates : NSObject <DbxSerializable> 

/// Latitude of the GPS coordinates.
@property (nonatomic, copy) NSNumber * _Nonnull latitude;
/// Longitude of the GPS coordinates.
@property (nonatomic, copy) NSNumber * _Nonnull longitude;

- (nonnull instancetype)initWithLatitude:(NSNumber * _Nonnull)latitude longitude:(NSNumber * _Nonnull)longitude;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesGpsCoordinatesSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesGpsCoordinates * _Nonnull)obj;

+ (DbxFilesGpsCoordinates * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
