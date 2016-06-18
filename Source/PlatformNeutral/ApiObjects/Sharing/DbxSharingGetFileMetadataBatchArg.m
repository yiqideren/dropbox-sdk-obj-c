///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingFileAction.h"
#import "DbxSharingGetFileMetadataBatchArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingGetFileMetadataBatchArg 

- (instancetype)initWithFiles:(NSArray<NSString *> *)files actions:(NSArray<DbxSharingFileAction *> *)actions {
    [DbxStoneValidators arrayValidator:nil maxItems:[NSNumber numberWithInt:100] itemValidator:[DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"]](files);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);

    self = [super init];
    if (self != nil) {
        _files = files;
        _actions = actions;
    }
    return self;
}

- (instancetype)initWithFiles:(NSArray<NSString *> *)files {
    return [self initWithFiles:files actions:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingGetFileMetadataBatchArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingGetFileMetadataBatchArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingGetFileMetadataBatchArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingGetFileMetadataBatchArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingGetFileMetadataBatchArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"files"] = [DbxArraySerializer serialize:valueObj.files withBlock:^id(id obj) { return [DbxStringSerializer serialize:obj]; }];
    if (valueObj.actions != nil) {
        jsonDict[@"actions"] = [DbxArraySerializer serialize:valueObj.actions withBlock:^id(id obj) { return [DbxSharingFileActionSerializer serialize:obj]; }];
    }

    return jsonDict;
}

+ (DbxSharingGetFileMetadataBatchArg *)deserialize:(NSDictionary *)valueDict {
    NSArray<NSString *> *files = [DbxArraySerializer deserialize:valueDict[@"files"] withBlock:^id(id obj) { return [DbxStringSerializer deserialize:obj]; }];
    NSArray<DbxSharingFileAction *> *actions = valueDict[@"actions"] != nil ? [DbxArraySerializer deserialize:valueDict[@"actions"] withBlock:^id(id obj) { return [DbxSharingFileActionSerializer deserialize:obj]; }] : nil;

    return [[DbxSharingGetFileMetadataBatchArg alloc] initWithFiles:files actions:actions];
}

@end
