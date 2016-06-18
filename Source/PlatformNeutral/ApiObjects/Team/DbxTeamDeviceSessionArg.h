///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamDeviceSessionArg;

/// 
/// The DbxTeamDeviceSessionArg struct.
/// 
@interface DbxTeamDeviceSessionArg : NSObject <DbxSerializable> 

/// The session id
@property (nonatomic, copy) NSString * _Nonnull sessionId;
/// The unique id of the member owning the device
@property (nonatomic, copy) NSString * _Nonnull teamMemberId;

- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId teamMemberId:(NSString * _Nonnull)teamMemberId;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamDeviceSessionArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamDeviceSessionArg * _Nonnull)obj;

+ (DbxTeamDeviceSessionArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
