//
//  RowCellView.m
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "RowCellView.h"
#import "Person.h"

@implementation RowCellView

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)prepareForReuse {
    [super prepareForReuse];
    _lblMain.text = nil;
    _lblSubtext.text = nil;
}

- (void)setPerson:(Person *)person_ {
    // Populate the view
    _lblMain.text = [person_ fullName];
    _lblSubtext.text = [person_ displayAge];
}
@end
