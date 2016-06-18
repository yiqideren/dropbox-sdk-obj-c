///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamRevokeDeviceSessionBatchResult.h"
#import "DbxTeamRevokeDeviceSessionStatus.h"

@implementation DbxTeamRevokeDeviceSessionBatchResult 

- (instancetype)initWithRevokeDevicesStatus:(NSArray<DbxTeamRevokeDeviceSessionStatus *> *)revokeDevicesStatus {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](revokeDevicesStatus);

    self = [super init];
    if (self != nil) {
        _revokeDevicesStatus = revokeDevicesStatus;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamRevokeDeviceSessionBatchResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamRevokeDeviceSessionBatchResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamRevokeDeviceSessionBatchResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamRevokeDeviceSessionBatchResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamRevokeDeviceSessionBatchResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"revoke_devices_status"] = [DbxArraySerializer serialize:valueObj.revokeDevicesStatus withBlock:^id(id obj) { return [DbxTeamRevokeDeviceSessionStatusSerializer serialize:obj]; }];

    return jsonDict;
}

+ (DbxTeamRevokeDeviceSessionBatchResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxTeamRevokeDeviceSessionStatus *> *revokeDevicesStatus = [DbxArraySerializer deserialize:valueDict[@"revoke_devices_status"] withBlock:^id(id obj) { return [DbxTeamRevokeDeviceSessionStatusSerializer deserialize:obj]; }];

    return [[DbxTeamRevokeDeviceSessionBatchResult alloc] initWithRevokeDevicesStatus:revokeDevicesStatus];
}

@end
