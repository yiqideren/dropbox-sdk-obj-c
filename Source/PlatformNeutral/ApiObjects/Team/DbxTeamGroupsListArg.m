///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupsListArg.h"

@implementation DbxTeamGroupsListArg 

- (instancetype)initWithLimit:(NSNumber *)limit {
    [DbxStoneValidators numericValidator:[NSNumber numberWithInt:1] maxValue:[NSNumber numberWithInt:1000]](limit);

    self = [super init];
    if (self != nil) {
        _limit = limit ?: [NSNumber numberWithInt:1000];
    }
    return self;
}

- (instancetype)init {
    return [self initWithLimit:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupsListArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupsListArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupsListArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupsListArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupsListArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"limit"] = [DbxNSNumberSerializer serialize:valueObj.limit];

    return jsonDict;
}

+ (DbxTeamGroupsListArg *)deserialize:(NSDictionary *)valueDict {
    NSNumber *limit = [DbxNSNumberSerializer deserialize:valueDict[@"limit"]];

    return [[DbxTeamGroupsListArg alloc] initWithLimit:limit];
}

@end
