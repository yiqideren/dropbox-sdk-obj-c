///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxUsersGetAccountArg;

/// 
/// The DbxUsersGetAccountArg struct.
/// 
@interface DbxUsersGetAccountArg : NSObject <DbxSerializable> 

/// A user's account identifier.
@property (nonatomic, copy) NSString * _Nonnull accountId;

- (nonnull instancetype)initWithAccountId:(NSString * _Nonnull)accountId;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxUsersGetAccountArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxUsersGetAccountArg * _Nonnull)obj;

+ (DbxUsersGetAccountArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
