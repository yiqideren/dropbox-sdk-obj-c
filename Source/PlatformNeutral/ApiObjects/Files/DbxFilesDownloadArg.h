///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesDownloadArg;

/// 
/// The DbxFilesDownloadArg struct.
/// 
@interface DbxFilesDownloadArg : NSObject <DbxSerializable> 

/// The path of the file to download.
@property (nonatomic, copy) NSString * _Nonnull path;
/// Deprecated. Please specify revision in path instead
@property (nonatomic, copy) NSString * _Nullable rev;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path rev:(NSString * _Nullable)rev;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesDownloadArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesDownloadArg * _Nonnull)obj;

+ (DbxFilesDownloadArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
