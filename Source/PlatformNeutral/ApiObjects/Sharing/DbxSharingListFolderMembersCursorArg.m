///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFolderMembersCursorArg.h"
#import "DbxSharingMemberAction.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFolderMembersCursorArg 

- (instancetype)initWithActions:(NSArray<DbxSharingMemberAction *> *)actions limit:(NSNumber *)limit {
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);
    [DbxStoneValidators numericValidator:[NSNumber numberWithInt:1] maxValue:[NSNumber numberWithInt:1000]](limit);

    self = [super init];
    if (self != nil) {
        _actions = actions;
        _limit = limit ?: [NSNumber numberWithInt:1000];
    }
    return self;
}

- (instancetype)init {
    return [self initWithActions:nil limit:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFolderMembersCursorArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFolderMembersCursorArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFolderMembersCursorArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFolderMembersCursorArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFolderMembersCursorArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.actions != nil) {
        jsonDict[@"actions"] = [DbxArraySerializer serialize:valueObj.actions withBlock:^id(id obj) { return [DbxSharingMemberActionSerializer serialize:obj]; }];
    }
    jsonDict[@"limit"] = [DbxNSNumberSerializer serialize:valueObj.limit];

    return jsonDict;
}

+ (DbxSharingListFolderMembersCursorArg *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxSharingMemberAction *> *actions = valueDict[@"actions"] != nil ? [DbxArraySerializer deserialize:valueDict[@"actions"] withBlock:^id(id obj) { return [DbxSharingMemberActionSerializer deserialize:obj]; }] : nil;
    NSNumber *limit = [DbxNSNumberSerializer deserialize:valueDict[@"limit"]];

    return [[DbxSharingListFolderMembersCursorArg alloc] initWithActions:actions limit:limit];
}

@end
