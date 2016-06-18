///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingGroupInfo.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamCommonGroupManagementType.h"
#import "DbxTeamCommonGroupSummary.h"
#import "DbxTeamCommonGroupType.h"

@implementation DbxSharingGroupInfo 

- (instancetype)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId groupManagementType:(DbxTeamCommonGroupManagementType *)groupManagementType groupType:(DbxTeamCommonGroupType *)groupType isOwner:(NSNumber *)isOwner sameTeam:(NSNumber *)sameTeam groupExternalId:(NSString *)groupExternalId memberCount:(NSNumber *)memberCount {

    self = [super initWithGroupName:groupName groupId:groupId groupManagementType:groupManagementType groupExternalId:groupExternalId memberCount:memberCount];
    if (self != nil) {
        _groupType = groupType;
        _isOwner = isOwner;
        _sameTeam = sameTeam;
    }
    return self;
}

- (instancetype)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId groupManagementType:(DbxTeamCommonGroupManagementType *)groupManagementType groupType:(DbxTeamCommonGroupType *)groupType isOwner:(NSNumber *)isOwner sameTeam:(NSNumber *)sameTeam {
    return [self initWithGroupName:groupName groupId:groupId groupManagementType:groupManagementType groupType:groupType isOwner:isOwner sameTeam:sameTeam groupExternalId:nil memberCount:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingGroupInfoSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingGroupInfoSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingGroupInfoSerializer serialize:self] description];
}

@end


@implementation DbxSharingGroupInfoSerializer 

+ (NSDictionary *)serialize:(DbxSharingGroupInfo *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"group_name"] = [DbxStringSerializer serialize:valueObj.groupName];
    jsonDict[@"group_id"] = [DbxStringSerializer serialize:valueObj.groupId];
    jsonDict[@"group_management_type"] = [DbxTeamCommonGroupManagementTypeSerializer serialize:valueObj.groupManagementType];
    jsonDict[@"group_type"] = [DbxTeamCommonGroupTypeSerializer serialize:valueObj.groupType];
    jsonDict[@"is_owner"] = [DbxBoolSerializer serialize:valueObj.isOwner];
    jsonDict[@"same_team"] = [DbxBoolSerializer serialize:valueObj.sameTeam];
    if (valueObj.groupExternalId != nil) {
        jsonDict[@"group_external_id"] = [DbxStringSerializer serialize:valueObj.groupExternalId];
    }
    if (valueObj.memberCount != nil) {
        jsonDict[@"member_count"] = [DbxNSNumberSerializer serialize:valueObj.memberCount];
    }

    return jsonDict;
}

+ (DbxSharingGroupInfo *)deserialize:(NSDictionary *)valueDict {
    NSString *groupName = [DbxStringSerializer deserialize:valueDict[@"group_name"]];
    NSString *groupId = [DbxStringSerializer deserialize:valueDict[@"group_id"]];
    DbxTeamCommonGroupManagementType *groupManagementType = [DbxTeamCommonGroupManagementTypeSerializer deserialize:valueDict[@"group_management_type"]];
    DbxTeamCommonGroupType *groupType = [DbxTeamCommonGroupTypeSerializer deserialize:valueDict[@"group_type"]];
    NSNumber *isOwner = [DbxBoolSerializer deserialize:valueDict[@"is_owner"]];
    NSNumber *sameTeam = [DbxBoolSerializer deserialize:valueDict[@"same_team"]];
    NSString *groupExternalId = valueDict[@"group_external_id"] != nil ? [DbxStringSerializer deserialize:valueDict[@"group_external_id"]] : nil;
    NSNumber *memberCount = valueDict[@"member_count"] != nil ? [DbxNSNumberSerializer deserialize:valueDict[@"member_count"]] : nil;

    return [[DbxSharingGroupInfo alloc] initWithGroupName:groupName groupId:groupId groupManagementType:groupManagementType groupType:groupType isOwner:isOwner sameTeam:sameTeam groupExternalId:groupExternalId memberCount:memberCount];
}

@end
