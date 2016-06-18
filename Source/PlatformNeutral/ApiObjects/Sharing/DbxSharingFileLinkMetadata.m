///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingFileLinkMetadata.h"
#import "DbxSharingLinkPermissions.h"
#import "DbxSharingSharedLinkMetadata.h"
#import "DbxSharingTeamMemberInfo.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersTeam.h"

@implementation DbxSharingFileLinkMetadata 

- (instancetype)initWithUrl:(NSString *)url name:(NSString *)name linkPermissions:(DbxSharingLinkPermissions *)linkPermissions clientModified:(NSDate *)clientModified serverModified:(NSDate *)serverModified rev:(NSString *)rev size:(NSNumber *)size id_:(NSString *)id_ expires:(NSDate *)expires pathLower:(NSString *)pathLower teamMemberInfo:(DbxSharingTeamMemberInfo *)teamMemberInfo contentOwnerTeamInfo:(DbxUsersTeam *)contentOwnerTeamInfo {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:9] maxLength:nil pattern:@"[0-9a-f]+"](rev);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:nil]](id_);

    self = [super initWithUrl:url name:name linkPermissions:linkPermissions id_:id_ expires:expires pathLower:pathLower teamMemberInfo:teamMemberInfo contentOwnerTeamInfo:contentOwnerTeamInfo];
    if (self != nil) {
        _clientModified = clientModified;
        _serverModified = serverModified;
        _rev = rev;
        _size = size;
    }
    return self;
}

- (instancetype)initWithUrl:(NSString *)url name:(NSString *)name linkPermissions:(DbxSharingLinkPermissions *)linkPermissions clientModified:(NSDate *)clientModified serverModified:(NSDate *)serverModified rev:(NSString *)rev size:(NSNumber *)size {
    return [self initWithUrl:url name:name linkPermissions:linkPermissions clientModified:clientModified serverModified:serverModified rev:rev size:size id_:nil expires:nil pathLower:nil teamMemberInfo:nil contentOwnerTeamInfo:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingFileLinkMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingFileLinkMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingFileLinkMetadataSerializer serialize:self] description];
}

@end


@implementation DbxSharingFileLinkMetadataSerializer 

+ (NSDictionary *)serialize:(DbxSharingFileLinkMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"url"] = [DbxStringSerializer serialize:valueObj.url];
    jsonDict[@"name"] = [DbxStringSerializer serialize:valueObj.name];
    jsonDict[@"link_permissions"] = [DbxSharingLinkPermissionsSerializer serialize:valueObj.linkPermissions];
    jsonDict[@"client_modified"] = [DbxNSDateSerializer serialize:valueObj.clientModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    jsonDict[@"server_modified"] = [DbxNSDateSerializer serialize:valueObj.serverModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    jsonDict[@"rev"] = [DbxStringSerializer serialize:valueObj.rev];
    jsonDict[@"size"] = [DbxNSNumberSerializer serialize:valueObj.size];
    if (valueObj.id_ != nil) {
        jsonDict[@"id"] = [DbxStringSerializer serialize:valueObj.id_];
    }
    if (valueObj.expires != nil) {
        jsonDict[@"expires"] = [DbxNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.pathLower != nil) {
        jsonDict[@"path_lower"] = [DbxStringSerializer serialize:valueObj.pathLower];
    }
    if (valueObj.teamMemberInfo != nil) {
        jsonDict[@"team_member_info"] = [DbxSharingTeamMemberInfoSerializer serialize:valueObj.teamMemberInfo];
    }
    if (valueObj.contentOwnerTeamInfo != nil) {
        jsonDict[@"content_owner_team_info"] = [DbxUsersTeamSerializer serialize:valueObj.contentOwnerTeamInfo];
    }

    return jsonDict;
}

+ (DbxSharingFileLinkMetadata *)deserialize:(NSDictionary *)valueDict {
    NSString *url = [DbxStringSerializer deserialize:valueDict[@"url"]];
    NSString *name = [DbxStringSerializer deserialize:valueDict[@"name"]];
    DbxSharingLinkPermissions *linkPermissions = [DbxSharingLinkPermissionsSerializer deserialize:valueDict[@"link_permissions"]];
    NSDate *clientModified = [DbxNSDateSerializer deserialize:valueDict[@"client_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    NSDate *serverModified = [DbxNSDateSerializer deserialize:valueDict[@"server_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    NSString *rev = [DbxStringSerializer deserialize:valueDict[@"rev"]];
    NSNumber *size = [DbxNSNumberSerializer deserialize:valueDict[@"size"]];
    NSString *id_ = valueDict[@"id"] != nil ? [DbxStringSerializer deserialize:valueDict[@"id"]] : nil;
    NSDate *expires = valueDict[@"expires"] != nil ? [DbxNSDateSerializer deserialize:valueDict[@"expires"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSString *pathLower = valueDict[@"path_lower"] != nil ? [DbxStringSerializer deserialize:valueDict[@"path_lower"]] : nil;
    DbxSharingTeamMemberInfo *teamMemberInfo = valueDict[@"team_member_info"] != nil ? [DbxSharingTeamMemberInfoSerializer deserialize:valueDict[@"team_member_info"]] : nil;
    DbxUsersTeam *contentOwnerTeamInfo = valueDict[@"content_owner_team_info"] != nil ? [DbxUsersTeamSerializer deserialize:valueDict[@"content_owner_team_info"]] : nil;

    return [[DbxSharingFileLinkMetadata alloc] initWithUrl:url name:name linkPermissions:linkPermissions clientModified:clientModified serverModified:serverModified rev:rev size:size id_:id_ expires:expires pathLower:pathLower teamMemberInfo:teamMemberInfo contentOwnerTeamInfo:contentOwnerTeamInfo];
}

@end
