///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"
#import "DBTEAMDeviceSession.h"

@class DBTEAMActiveWebSession;

#pragma mark - API Object

///
/// The `ActiveWebSession` struct.
///
/// Information on active web sessions
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMActiveWebSession : DBTEAMDeviceSession <DBSerializable>

#pragma mark - Instance fields

/// Information on the hosting device
@property (nonatomic, readonly, copy) NSString * _Nonnull userAgent;

/// Information on the hosting operating system
@property (nonatomic, readonly, copy) NSString * _Nonnull os;

/// Information on the browser used for this web session
@property (nonatomic, readonly, copy) NSString * _Nonnull browser;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param sessionId The session id
/// @param userAgent Information on the hosting device
/// @param os Information on the hosting operating system
/// @param browser Information on the browser used for this web session
/// @param ipAddress The IP address of the last activity from this session
/// @param country The country from which the last activity from this session
/// was made
/// @param created The time this session was created
/// @param updated The time of the last activity from this session
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId
                                userAgent:(NSString * _Nonnull)userAgent
                                       os:(NSString * _Nonnull)os
                                  browser:(NSString * _Nonnull)browser
                                ipAddress:(NSString * _Nullable)ipAddress
                                  country:(NSString * _Nullable)country
                                  created:(NSDate * _Nullable)created
                                  updated:(NSDate * _Nullable)updated;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param sessionId The session id
/// @param userAgent Information on the hosting device
/// @param os Information on the hosting operating system
/// @param browser Information on the browser used for this web session
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId
                                userAgent:(NSString * _Nonnull)userAgent
                                       os:(NSString * _Nonnull)os
                                  browser:(NSString * _Nonnull)browser;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `ActiveWebSession` struct.
///
@interface DBTEAMActiveWebSessionSerializer : NSObject

///
/// Serializes `DBTEAMActiveWebSession` instances.
///
/// @param instance An instance of the `DBTEAMActiveWebSession` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMActiveWebSession` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMActiveWebSession * _Nonnull)instance;

///
/// Deserializes `DBTEAMActiveWebSession` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMActiveWebSession` API object.
///
/// @return An instantiation of the `DBTEAMActiveWebSession` object.
///
+ (DBTEAMActiveWebSession * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
