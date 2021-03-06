///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBAUTHAppAuthRoutes.h"
#import "DBAppBaseClient.h"
#import "DBTransportClientProtocol.h"

@implementation DBAppBaseClient

- (instancetype)initWithTransportClient:(id<DBTransportClient> _Nonnull)client {
  self = [super init];
  if (self) {
    _transportClient = client;
    _authRoutes = [[DBAUTHAppAuthRoutes alloc] init:client];
  }
  return self;
}
@end
