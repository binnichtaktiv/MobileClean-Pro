#import <UIKit/UIKit.h>

%hook MOGPurchaseManager
- (void)setQueryPurchaseSuccess:(bool)arg1 {
	arg1 = 1;
	%orig;
}

- (bool)queryPurchaseSuccess {
	return 1;
}

- (bool)originalCheckVipStatus {
	return 1;
}
%end

// Add credits
%hook UILabel
- (void)layoutSubviews {
  %orig;
  if ([self.text isEqual:@"About"]) {
    self.text = @"HACKED BY BINNICHTAKTIV";
    [self sizeToFit];
  }
}
%end