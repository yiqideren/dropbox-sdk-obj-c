///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesRemovePropertiesArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesRemovePropertiesArg 

- (instancetype)initWithPath:(NSString *)path propertyTemplateIds:(NSArray<NSString *> *)propertyTemplateIds {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"](path);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:[DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"(/|ptid:).*"]](propertyTemplateIds);

    self = [super init];
    if (self != nil) {
        _path = path;
        _propertyTemplateIds = propertyTemplateIds;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesRemovePropertiesArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesRemovePropertiesArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesRemovePropertiesArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesRemovePropertiesArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesRemovePropertiesArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"property_template_ids"] = [DbxArraySerializer serialize:valueObj.propertyTemplateIds withBlock:^id(id obj) { return [DbxStringSerializer serialize:obj]; }];

    return jsonDict;
}

+ (DbxFilesRemovePropertiesArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict[@"path"]];
    NSArray<NSString *> *propertyTemplateIds = [DbxArraySerializer deserialize:valueDict[@"property_template_ids"] withBlock:^id(id obj) { return [DbxStringSerializer deserialize:obj]; }];

    return [[DbxFilesRemovePropertiesArg alloc] initWithPath:path propertyTemplateIds:propertyTemplateIds];
}

@end
