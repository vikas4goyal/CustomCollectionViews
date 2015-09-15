//
//  ExpandableCollectionView.swift
//  Pods
//
//  Created by Vikas Goyal on 15/09/15.
//
//

import Foundation
import UIKit

class ExpandableCollectionView: MutiSectionCollectionView {
    var allowsMultipleExpandedSections:Bool = true;
   
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setup();
    }
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout);
        setup();
    }
    
    func  setup() {
    }
}