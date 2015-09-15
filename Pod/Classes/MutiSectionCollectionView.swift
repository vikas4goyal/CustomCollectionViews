//
//  MutiSectionCollectionView.swift
//  Pods
//
//  Created by Vikas Goyal on 15/09/15.
//
//

import Foundation
import UIKit

class MutiSectionCollectionView: UICollectionView {
    private var collectionData:Dictionary<Int,Array<AnyObject>>?;
    private var collectionSections:Array<AnyObject>?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setup();
    }
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout);
        setup();
    }
    
    private func setup(){
        self.dataSource=self;
    }
}
//MARK: data source
extension MutiSectionCollectionView:UICollectionViewDataSource
{
    override func numberOfSections() -> Int {
        if let collectionData = collectionData{
            return collectionData.count;
        }
        return 0;
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let collectionData = collectionData{
            let items = collectionData[section];
            return items!.count;
        }
        return 0;
    }
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        if(kind == UICollectionElementKindSectionHeader){
            
        }
        return UICollectionReusableView();
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let dataArray = self.collectionData![indexPath.section]!;
        let data = dataArray[indexPath.item] as! BaseCellModel;
        let cell: AnyObject = collectionView.dequeueReusableCellWithReuseIdentifier(data.identifier(), forIndexPath: indexPath);
        if let cell = cell as? ReactiveCell{
            cell.bindViewToModel(dataArray[indexPath.item]);
        }
        return cell as! UICollectionViewCell;
    }
    
}