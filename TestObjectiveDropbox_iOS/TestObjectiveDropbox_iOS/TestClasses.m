//
//  TestClasses.m
//  TestObjectiveDropbox_iOS
//
//  Copyright © 2016 Dropbox. All rights reserved.
//

#import "TestClasses.h"
#import "DbxAuthRoutes.h"
#import "DbxFilesRoutes.h"
#import "DbxSharingRoutes.h"
#import "DbxUsersRoutes.h"
#import "DbxTeamRoutes.h"
#import "DropboxClient.h"
#import "DropboxTeamClient.h"
#import "DropboxClientsManager.h"
#import "TestData.h"
#import "DbxUsersRoutes.h"
#import "DbxFilesUploadSessionCursor.h"
#import "DbxFilesCommitInfo.h"
#import "DbxFilesUploadSessionStartResult.h"
#import "DbxFilesListFolderLongpollResult.h"
#import "DbxFilesListFolderGetLatestCursorResult.h"

void MyLog(NSString *format, ...) {
    va_list args;
    va_start(args, format);
    NSString *formattedString = [[NSString alloc] initWithFormat:format
                                                       arguments:args];
    va_end(args);
    [[NSFileHandle fileHandleWithStandardOutput] writeData: [formattedString dataUsingEncoding: NSNEXTSTEPStringEncoding]];
}

@implementation DropboxTester

- (instancetype)initWithTestData:(TestData *)testData  {
    self = [super init];
    if (self) {
        _testData = testData;
        _auth = [DropboxClientsManager authorizedClient].authRoutes;
        _files = [DropboxClientsManager authorizedClient].filesRoutes;
        _sharing = [DropboxClientsManager authorizedClient].sharingRoutes;
        _users = [DropboxClientsManager authorizedClient].usersRoutes;
    }
    return self;
}

@end


@implementation DropboxTeamTester

- (instancetype)init {
    self = [super init];
    if (self) {
        _team = [DropboxClientsManager authorizedTeamClient].teamRoutes;
    }
    return self;
}

@end


/**
    Dropbox User API Endpoint Tests
 */

@implementation AuthTests

- (instancetype)init:(DropboxTester *)tester{
    self = [super init];
    if (self) {
        _tester = tester;
    }
    return self;
}

- (void)tokenRevoke:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.auth tokenRevoke] response:^(DbxNilObject *result, DbxNilObject *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printOffset:@"Token successfully revoked"];
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

@end


@implementation FilesTests

- (instancetype)init:(DropboxTester *)tester{
    self = [super init];
    if (self) {
        _tester = tester;
    }
    return self;
}

- (void)delete:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files delete_:_tester.testData.baseFolder] response:^(DbxFilesMetadata *result, DbxFilesDeleteError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat printErrors:error routeError:routeError];
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)createFolder:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files createFolder:_tester.testData.testFolderPath] response:^(DbxFilesFolderMetadata *result, DbxFilesCreateFolderError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)listFolderError:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files listFolder:@"/"] response:^(DbxFilesListFolderResult *result, DbxFilesListFolderError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"Something went wrong...\n");
        } else {
            MyLog(@"Intentionally errored.\n");
            [TestFormat printErrors:error routeError:routeError];
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)listFolder:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files listFolder:_tester.testData.testFolderPath] response:^(DbxFilesListFolderResult *result, DbxFilesListFolderError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)uploadData:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSString *outputPath = [NSString stringWithFormat:@"%@%@", _tester.testData.testFilePath, @"_from_data"];
    [[[_tester.files uploadData:outputPath inputData:_tester.testData.fileData] response:^(DbxFilesFileMetadata *result, DbxFilesUploadError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)uploadDataSession:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    
    void (^uploadSessionAppendV2)(NSString *, DbxFilesUploadSessionCursor *) = ^(NSString * sessionId, DbxFilesUploadSessionCursor *cursor) {
        [[[_tester.files uploadSessionAppendV2Data:cursor inputData:_tester.testData.fileData] response:^(DbxNilObject *result, DbxFilesUploadSessionLookupError *routeError, DbxError *error) {
            // response type for this route is nil
            if (!error) {
                DbxFilesUploadSessionCursor *cursor = [[DbxFilesUploadSessionCursor alloc] initWithSessionId:sessionId offset:[NSNumber numberWithUnsignedLong:(_tester.testData.fileData.length * 2)]];
                DbxFilesCommitInfo *commitInfo = [[DbxFilesCommitInfo alloc] initWithPath:[NSString stringWithFormat:@"%@%@", _tester.testData.testFilePath, @"_session"]];
                
                [[[_tester.files uploadSessionFinishData:cursor commit:commitInfo inputData:_tester.testData.fileData] response:^(DbxFilesFileMetadata *result, DbxFilesUploadSessionFinishError *routeError, DbxError *error) {
                    if (result) {
                        MyLog(@"%@\n", result);
                        [TestFormat printOffset:@"Upload session complete"];
                        [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
                        nextTest();
                    } else {
                        [TestFormat abort:error routeError:routeError];
                    }
                }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
                    [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
                }];
            } else {
                [TestFormat abort:error routeError:routeError];
            }
        }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
            [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
        }];
    };

    [[[_tester.files uploadSessionStartData:_tester.testData.fileData] response:^(DbxFilesUploadSessionStartResult *result, DbxNilObject *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printOffset:@"Acquiring sessionId"];
            uploadSessionAppendV2(result.sessionId, [[DbxFilesUploadSessionCursor alloc] initWithSessionId:result.sessionId offset:[NSNumber numberWithUnsignedLong:(_tester.testData.fileData.length)]]);
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)uploadFile:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSString *outputPath = [NSString stringWithFormat:@"%@%@", _tester.testData.testFilePath, @"_from_file"];
    [[[_tester.files uploadURL:outputPath inputURL:_tester.testData.destURL] response:^(DbxFilesFileMetadata *result, DbxFilesUploadError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)uploadStream:(void (^)())nextTest {
    nextTest();
//    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
//    NSString *outputPath = [NSString stringWithFormat:@"%@%@", _tester.testData.testFilePath, @"_from_stream"];
//    [[[_tester.files uploadStream:outputPath inputStream:_tester.testData.destURL] response:^(DbxFilesFileMetadata *result, DbxFilesUploadError *routeError, DbxError *error) {
//        if (result) {
//            MyLog(@"%@\n", result);
//            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
//            nextTest();
//        } else {
//            [TestFormat abort:error routeError:routeError];
//        }
//    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
//        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
//    }];
}

- (void)copy:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSString *copyOutputPath = [NSString stringWithFormat:@"%@%@%@%@", _tester.testData.testFilePath, @"_duplicate", @"_", _tester.testData.testId];
    [[[_tester.files dCopy:_tester.testData.testFilePath toPath:copyOutputPath] response:^(DbxFilesMetadata *result, DbxFilesRelocationError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)copyReferenceGet:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files dCopyReferenceGet:_tester.testData.testFilePath] response:^(DbxFilesGetCopyReferenceResult *result, DbxFilesGetCopyReferenceError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)getMetadata:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files getMetadata:_tester.testData.testFilePath] response:^(DbxFilesMetadata *result, DbxFilesGetMetadataError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)getMetadataError:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files getMetadata:@"/"] response:^(DbxFilesMetadata *result, DbxFilesGetMetadataError *routeError, DbxError *error) {
        if (result) {
            NSAssert(NO, @"This call should have errored.");
        } else {
            NSAssert(error, @"This call should have errored.");
            [TestFormat printOffset:@"Error properly detected"];
            MyLog(@"%@\n", error);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)getTemporaryLink:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files getTemporaryLink:_tester.testData.testFilePath] response:^(DbxFilesGetTemporaryLinkResult *result, DbxFilesGetTemporaryLinkError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)listRevisions:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files listRevisions:_tester.testData.testFilePath] response:^(DbxFilesListRevisionsResult *result, DbxFilesListRevisionsError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)move:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSString *folderPath = [NSString stringWithFormat:@"%@%@%@", _tester.testData.testFolderPath, @"/", @"movedLocation"];
    [[[_tester.files createFolder:folderPath] response:^(DbxFilesFolderMetadata *result, DbxFilesCreateFolderError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printOffset:@"Created destination folder"];

            [[[_tester.files move:_tester.testData.testFolderPath toPath:folderPath] response:^(DbxFilesMetadata *result, DbxFilesRelocationError *routeError, DbxError *error) {
                if (result) {
                    MyLog(@"%@\n", result);
                    [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
                    nextTest();
                } else {
                    [TestFormat abort:error routeError:routeError];
                }
            }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
                [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
            }];
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)saveUrl:(void (^)())nextTest asMember:(BOOL)asMember {
    if (asMember) {
        nextTest();
        return;
    }
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSString *folderPath = [NSString stringWithFormat:@"%@%@%@", _tester.testData.testFolderPath, @"/", @"dbx-test.html"];
    [[[_tester.files saveUrl:folderPath url:@"https://www.dropbox.com/help/5"] response:^(DbxFilesSaveUrlResult *result, DbxFilesSaveUrlError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)downloadToFile:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files downloadURL:_tester.testData.testFilePath overwrite:YES destination:_tester.testData.destURL] response:^(DbxFilesFileMetadata *result, DbxFilesDownloadError *routeError, DbxError *error, NSURL *destination) {
        if (result) {
            MyLog(@"%@\n", result);
            NSData *data = [[NSFileManager defaultManager] contentsAtPath:[destination path]];
            NSString *dataStr = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            [TestFormat printOffset:@"File contents:"];
            MyLog(@"%@\n", dataStr);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)downloadToFileAgain:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files downloadURL:_tester.testData.testFilePath overwrite:YES destination:_tester.testData.destURL] response:^(DbxFilesFileMetadata *result, DbxFilesDownloadError *routeError, DbxError *error, NSURL *destination) {
        if (result) {
            MyLog(@"%@\n", result);
            NSData *data = [[NSFileManager defaultManager] contentsAtPath:[destination path]];
            NSString *dataStr = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            [TestFormat printOffset:@"File contents:"];
            MyLog(@"%@\n", dataStr);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)downloadToFileError:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSString *filePath = [NSString stringWithFormat:@"%@%@", _tester.testData.testFilePath, @"_does_not_exist"];
    [[[_tester.files downloadURL:filePath overwrite:YES destination:_tester.testData.destURL] response:^(DbxFilesFileMetadata *result, DbxFilesDownloadError *routeError, DbxError *error, NSURL *destination) {
        if (result) {
            NSAssert(NO, @"This call should have errored!");
        } else {
            NSAssert(![[NSFileManager defaultManager] fileExistsAtPath:[_tester.testData.destURLException path]], @"File should not exist here.");
            [TestFormat printOffset:@"Error properly detected"];
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)downloadToMemory:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.files downloadData:_tester.testData.testFilePath] response:^(DbxFilesFileMetadata *result, DbxFilesDownloadError *routeError, DbxError *error, NSData *fileContents) {
        if (result) {
            MyLog(@"%@\n", result);
            NSString *dataStr = [[NSString alloc]initWithData:fileContents encoding:NSUTF8StringEncoding];
            [TestFormat printOffset:@"File contents:"];
            MyLog(@"%@\n", dataStr);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)listFolderLongpollAndTrigger:(void (^)())nextTest asMember:(BOOL)asMember {
    if (asMember) {
        nextTest();
        return;
    }
    

    void (^copy)() = ^{
        [TestFormat printOffset:@"Making change that longpoll will detect (copy file)"];
        NSString *copyOutputPath = [NSString stringWithFormat:@"%@%@%@", _tester.testData.testFilePath, @"_duplicate2_", _tester.testData.testId];

        [[[_tester.files dCopy:_tester.testData.testFilePath toPath:copyOutputPath] response:^(DbxFilesMetadata *result, DbxFilesRelocationError *routeError, DbxError *error) {
            if (result) {
                MyLog(@"%@\n", result);
            } else {
                [TestFormat abort:error routeError:routeError];
            }
        }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
            [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
        }];
    };

    void (^listFolderContinue)(NSString *) = ^(NSString *cursor) {
        [[[_tester.files listFolderContinue:cursor] response:^(DbxFilesListFolderResult *result, DbxFilesListFolderContinueError *routeError, DbxError *error) {
            if (result) {
                [TestFormat printOffset:@"Here are the changes:"];
                MyLog(@"%@\n", result);
                [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
                nextTest();
            } else {
                [TestFormat abort:error routeError:routeError];
            }
        }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
            [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
        }];
    };

    void (^listFolderLongpoll)(NSString *) = ^(NSString *cursor) {
        [TestFormat printOffset:@"Establishing longpoll"];
        [[[_tester.files listFolderLongpoll:cursor] response:^(DbxFilesListFolderLongpollResult *result, DbxFilesListFolderLongpollError *routeError, DbxError *error) {
            if (result) {
                MyLog(@"%@\n", result);
                if (result.changes) {
                    [TestFormat printOffset:@"Changes found"];
                    listFolderContinue(cursor);
                } else {
                    [TestFormat printOffset:@"Improperly set up changes trigger"];
                }
            } else {
                [TestFormat abort:error routeError:routeError];
            }
        }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
            [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
        }];
        
        copy();
    };
    
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    
    [TestFormat printOffset:@"Acquring cursor"];
    [[[_tester.files listFolderGetLatestCursor:_tester.testData.testFolderPath] response:^(DbxFilesListFolderGetLatestCursorResult *result, DbxFilesListFolderError *routeError, DbxError *error) {
        if (result) {
            [TestFormat printOffset:@"Cursor acquired"];
            MyLog(@"%@\n", result);
            listFolderLongpoll(result.cursor);
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

@end


@implementation UsersTests

- (instancetype)init:(DropboxTester *)tester{
    self = [super init];
    if (self) {
        _tester = tester;
    }
    return self;
}

- (void)getAccount:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.users getAccount:_tester.testData.accountId] response:^(DbxUsersBasicAccount *result, DbxUsersGetAccountError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)getAccountBatch:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    NSArray<NSString *> *accountIds = @[_tester.testData.accountId, _tester.testData.accountId2];
    [[[_tester.users getAccountBatch:accountIds] response:^(NSArray<DbxUsersBasicAccount *> *result, DbxUsersGetAccountBatchError *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)getCurrentAccount:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.users getCurrentAccount] response:^(DbxUsersFullAccount *result, DbxNilObject *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

- (void)getSpaceUsage:(void (^)())nextTest {
    [TestFormat printSubTestBegin:NSStringFromSelector(_cmd)];
    [[[_tester.users getSpaceUsage] response:^(DbxUsersSpaceUsage *result, DbxNilObject *routeError, DbxError *error) {
        if (result) {
            MyLog(@"%@\n", result);
            [TestFormat printSubTestEnd:NSStringFromSelector(_cmd)];
            nextTest();
        } else {
            [TestFormat abort:error routeError:routeError];
        }
    }] progress:^(int64_t bytesSent, int64_t totalBytesSent, int64_t totalBytesExpectedToSend) {
        [TestFormat printSentProgress:bytesSent totalBytesSent:totalBytesSent totalBytesExpectedToSend:totalBytesExpectedToSend];
    }];
}

@end

static int smallDividerSize = 150;

@implementation TestFormat

+ (void)abort:(DbxError *)error routeError:(id)routeError {
    [self printErrors:error routeError:routeError];
    MyLog(@"Terminating....\n");
    exit(0);
}

+ (void)printErrors:(DbxError *)error routeError:(id)routeError {
    MyLog(@"ERROR: %@\n", error);
    MyLog(@"RouteERROR: %@\n", routeError);
}

+ (void)printSentProgress:(int64_t)bytesSent totalBytesSent:(int64_t)totalBytesSent totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend {
    MyLog(@"PROGRESS: bytesSent:%lld  totalBytesSent:%lld  totalBytesExpectedToSend:%lld\n\n", bytesSent, totalBytesSent, totalBytesExpectedToSend);
}

+ (void)printTestBegin:(NSString *)title {
    [self printLargeDivider];
    [self printTitle:title];
    [self printLargeDivider];
    [self printOffset:@"Beginning....."];
}

+ (void)printTestEnd {
    [self printOffset:@"Test Group Completed"];
    [self printLargeDivider];
}

+ (void)printAllTestsEnd {
    [self printLargeDivider];
    [self printOffset:@"ALL TESTS COMPLETED"];
    [self printLargeDivider];
}

+ (void)printSubTestBegin:(NSString *)title {
    [self printSmallDivider];
    [self printTitle:title];
    MyLog(@"\n");
}

+ (void)printSubTestEnd:(NSString *)result {
    MyLog(@"\n");
    [self printTitle:result];
}

+ (void)printTitle:(NSString *)title {
    MyLog(@"     %@\n", title);
}

+ (void)printOffset:(NSString *)str {
    MyLog(@"\n");
    MyLog(@"     *  %@  *\n", str);
    MyLog(@"\n");
}

+ (void)printSmallDivider {
    NSMutableString *result = [@"" mutableCopy];
    for (int i = 0; i < smallDividerSize; i++) {
        [result appendString:@"-"];
    }
    MyLog(@"%@\n", result);
}

+ (void)printLargeDivider {
    NSMutableString *result = [@"" mutableCopy];
    for (int i = 0; i < smallDividerSize; i++) {
        [result appendString:@"-"];
    }
    MyLog(@"%@\n", result);
}

@end
