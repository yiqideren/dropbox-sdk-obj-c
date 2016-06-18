///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamCommonGroupManagementType.h"
#import "DbxTeamCommonGroupSummary.h"
#import "DbxTeamGroupFullInfo.h"
#import "DbxTeamGroupMemberInfo.h"

@implementation DbxTeamGroupFullInfo 

- (instancetype)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId groupManagementType:(DbxTeamCommonGroupManagementType *)groupManagementType created:(NSNumber *)created groupExternalId:(NSString *)groupExternalId memberCount:(NSNumber *)memberCount members:(NSArray<DbxTeamGroupMemberInfo *> *)members {
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](members);

    self = [super initWithGroupName:groupName groupId:groupId groupManagementType:groupManagementType groupExternalId:groupExternalId memberCount:memberCount];
    if (self != nil) {
        _members = members;
        _created = created;
    }
    return self;
}

- (instancetype)initWithGroupName:(NSString *)groupName groupId:(NSString *)groupId groupManagementType:(DbxTeamCommonGroupManagementType *)groupManagementType created:(NSNumber *)created {
    return [self initWithGroupName:groupName groupId:groupId groupManagementType:groupManagementType created:created groupExternalId:nil memberCount:nil members:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupFullInfoSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupFullInfoSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupFullInfoSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupFullInfoSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupFullInfo *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"group_name"] = [DbxStringSerializer serialize:valueObj.groupName];
    jsonDict[@"group_id"] = [DbxStringSerializer serialize:valueObj.groupId];
    jsonDict[@"group_management_type"] = [DbxTeamCommonGroupManagementTypeSerializer serialize:valueObj.groupManagementType];
    jsonDict[@"created"] = [DbxNSNumberSerializer serialize:valueObj.created];
    if (valueObj.groupExternalId != nil) {
        jsonDict[@"group_external_id"] = [DbxStringSerializer serialize:valueObj.groupExternalId];
    }
    if (valueObj.memberCount != nil) {
        jsonDict[@"member_count"] = [DbxNSNumberSerializer serialize:valueObj.memberCount];
    }
    if (valueObj.members != nil) {
        jsonDict[@"members"] = [DbxArraySerializer serialize:valueObj.members withBlock:^id(id obj) { return [DbxTeamGroupMemberInfoSerializer serialize:obj]; }];
    }

    return jsonDict;
}

+ (DbxTeamGroupFullInfo *)deserialize:(NSDictionary *)valueDict {
    NSString *groupName = [DbxStringSerializer deserialize:valueDict[@"group_name"]];
    NSString *groupId = [DbxStringSerializer deserialize:valueDict[@"group_id"]];
    DbxTeamCommonGroupManagementType *groupManagementType = [DbxTeamCommonGroupManagementTypeSerializer deserialize:valueDict[@"group_management_type"]];
    NSNumber *created = [DbxNSNumberSerializer deserialize:valueDict[@"created"]];
    NSString *groupExternalId = valueDict[@"group_external_id"] != nil ? [DbxStringSerializer deserialize:valueDict[@"group_external_id"]] : nil;
    NSNumber *memberCount = valueDict[@"member_count"] != nil ? [DbxNSNumberSerializer deserialize:valueDict[@"member_count"]] : nil;
    NSArray<DbxTeamGroupMemberInfo *> *members = valueDict[@"members"] != nil ? [DbxArraySerializer deserialize:valueDict[@"members"] withBlock:^id(id obj) { return [DbxTeamGroupMemberInfoSerializer deserialize:obj]; }] : nil;

    return [[DbxTeamGroupFullInfo alloc] initWithGroupName:groupName groupId:groupId groupManagementType:groupManagementType created:created groupExternalId:groupExternalId memberCount:memberCount members:members];
}

@end
