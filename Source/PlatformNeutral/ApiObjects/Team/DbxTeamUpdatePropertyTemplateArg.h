///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxPropertiesPropertyFieldTemplate;
@class DbxTeamUpdatePropertyTemplateArg;

/// 
/// The DbxTeamUpdatePropertyTemplateArg struct.
/// 
@interface DbxTeamUpdatePropertyTemplateArg : NSObject <DbxSerializable> 

/// An identifier for property template added by propertiesTemplateAdd.
@property (nonatomic, copy) NSString * _Nonnull templateId;
/// A display name for the property template. Property template names can be up
/// to 256 bytes.
@property (nonatomic, copy) NSString * _Nullable name;
/// Description for new property template. Property template descriptions can be
/// up to 1024 bytes.
@property (nonatomic, copy) NSString * _Nullable description_;
/// This is a list of custom properties to add to the property template. There
/// can be up to 64 properties in a single property template.
@property (nonatomic) NSArray<DbxPropertiesPropertyFieldTemplate *> * _Nullable addFields;

- (nonnull instancetype)initWithTemplateId:(NSString * _Nonnull)templateId name:(NSString * _Nullable)name description_:(NSString * _Nullable)description_ addFields:(NSArray<DbxPropertiesPropertyFieldTemplate *> * _Nullable)addFields;

- (nonnull instancetype)initWithTemplateId:(NSString * _Nonnull)templateId;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamUpdatePropertyTemplateArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamUpdatePropertyTemplateArg * _Nonnull)obj;

+ (DbxTeamUpdatePropertyTemplateArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
