//
//  UISearchBar+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISearchBar (Link)

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_tintColor)(UIColor *color);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_barTintColor)(UIColor *color);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_searchBarStyle)(UISearchBarStyle searchBarStyle);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_barStyle)(UIBarStyle barStyle);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_placeholder)(NSString *placeholder);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_translucent)(BOOL translucent);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_showsScopeBar)(BOOL showsScopeBar);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_delegate)(id obj);

@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_cancelTitle)(NSString *title, UIControlState state);


@property (nonatomic, copy, readonly) UISearchBar *(^searchBar_showsCancelButton)(BOOL shosCancelButton);
@end
