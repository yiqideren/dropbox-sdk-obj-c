///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamListMembersDevicesArg.h"

@implementation DbxTeamListMembersDevicesArg 

- (instancetype)initWithCursor:(NSString *)cursor includeWebSessions:(NSNumber *)includeWebSessions includeDesktopClients:(NSNumber *)includeDesktopClients includeMobileClients:(NSNumber *)includeMobileClients {

    self = [super init];
    if (self != nil) {
        _cursor = cursor;
        _includeWebSessions = includeWebSessions ?: @YES;
        _includeDesktopClients = includeDesktopClients ?: @YES;
        _includeMobileClients = includeMobileClients ?: @YES;
    }
    return self;
}

- (instancetype)init {
    return [self initWithCursor:nil includeWebSessions:nil includeDesktopClients:nil includeMobileClients:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamListMembersDevicesArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamListMembersDevicesArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamListMembersDevicesArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamListMembersDevicesArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamListMembersDevicesArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.cursor != nil) {
        jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    }
    jsonDict[@"include_web_sessions"] = [DbxBoolSerializer serialize:valueObj.includeWebSessions];
    jsonDict[@"include_desktop_clients"] = [DbxBoolSerializer serialize:valueObj.includeDesktopClients];
    jsonDict[@"include_mobile_clients"] = [DbxBoolSerializer serialize:valueObj.includeMobileClients];

    return jsonDict;
}

+ (DbxTeamListMembersDevicesArg *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = valueDict[@"cursor"] != nil ? [DbxStringSerializer deserialize:valueDict[@"cursor"]] : nil;
    NSNumber *includeWebSessions = [DbxBoolSerializer deserialize:valueDict[@"include_web_sessions"]];
    NSNumber *includeDesktopClients = [DbxBoolSerializer deserialize:valueDict[@"include_desktop_clients"]];
    NSNumber *includeMobileClients = [DbxBoolSerializer deserialize:valueDict[@"include_mobile_clients"]];

    return [[DbxTeamListMembersDevicesArg alloc] initWithCursor:cursor includeWebSessions:includeWebSessions includeDesktopClients:includeDesktopClients includeMobileClients:includeMobileClients];
}

@end
