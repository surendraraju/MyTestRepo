


//iOS version checking macro

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)


#import <Foundation/Foundation.h>

@interface commonConstants : NSObject

@end
