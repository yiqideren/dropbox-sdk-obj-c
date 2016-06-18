///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesPropertyGroupUpdate;
@class DbxFilesUpdatePropertyGroupArg;

/// 
/// The DbxFilesUpdatePropertyGroupArg struct.
/// 
@interface DbxFilesUpdatePropertyGroupArg : NSObject <DbxSerializable> 

/// A unique identifier for the file.
@property (nonatomic, copy) NSString * _Nonnull path;
/// Filled custom property templates associated with a file.
@property (nonatomic) NSArray<DbxFilesPropertyGroupUpdate *> * _Nonnull updatePropertyGroups;

- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path updatePropertyGroups:(NSArray<DbxFilesPropertyGroupUpdate *> * _Nonnull)updatePropertyGroups;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesUpdatePropertyGroupArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesUpdatePropertyGroupArg * _Nonnull)obj;

+ (DbxFilesUpdatePropertyGroupArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
