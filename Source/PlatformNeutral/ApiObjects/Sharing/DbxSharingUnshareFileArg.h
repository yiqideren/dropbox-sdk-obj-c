///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingUnshareFileArg;

/// 
/// The DbxSharingUnshareFileArg struct.
/// 
/// Arguments for unshareFile.
/// 
@interface DbxSharingUnshareFileArg : NSObject <DbxSerializable> 

/// The file to unshare.
@property (nonatomic, copy) NSString * _Nonnull file;

- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingUnshareFileArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingUnshareFileArg * _Nonnull)obj;

+ (DbxSharingUnshareFileArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
