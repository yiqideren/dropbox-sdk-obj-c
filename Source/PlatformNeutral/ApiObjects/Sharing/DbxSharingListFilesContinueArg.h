///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxSharingListFilesContinueArg;

/// 
/// The DbxSharingListFilesContinueArg struct.
/// 
/// Arguments for listReceivedFilesContinue.
/// 
@interface DbxSharingListFilesContinueArg : NSObject <DbxSerializable> 

/// Cursor in cursor in ListFilesResult
@property (nonatomic, copy) NSString * _Nonnull cursor;

- (nonnull instancetype)initWithCursor:(NSString * _Nonnull)cursor;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxSharingListFilesContinueArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingListFilesContinueArg * _Nonnull)obj;

+ (DbxSharingListFilesContinueArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
