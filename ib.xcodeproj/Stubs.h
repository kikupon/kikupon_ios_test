// Generated by IB v0.4.3 gem. Do not edit it manually
// Run `rake ib:open` to refresh

#import <CoreGraphics/CoreGraphics.h>
#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

@interface AppDelegate: UIResponder <UIApplicationDelegate>
@end

@interface ShopController: UIViewController

@property IBOutlet UIButton * go_shop;

-(IBAction) viewDidLoad;
-(IBAction) changeShop;

@end

@interface ShopsController: UIViewController
-(IBAction) viewDidLoad;
-(IBAction) load;

@end

@interface GeoInfo: NSObject
-(IBAction) initialize;
-(IBAction) load;

@end

@interface Client: NSObject
@end

@interface Shop: NSObject
-(IBAction) initialize:(id) data;

@end

