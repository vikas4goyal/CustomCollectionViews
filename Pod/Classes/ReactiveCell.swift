//
//  ReactiveCell.swift
//  Pods
//
//  Created by Vikas Goyal on 15/09/15.
//
//

import Foundation

public protocol ReactiveCell{
    func bindViewToModel(model:AnyObject);
}