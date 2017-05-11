//
//  ComputerDataSource.swift
//  Test
//
//  Created by Jordan Mander on 11/05/2017.
//  Copyright © 2017 QA. All rights reserved.
//

import UIKit

private let cellId = "ComputerCellId"

class ComputerDataSource: NSObject, UICollectionViewDataSource {
    
    var computers: [Computer]?
    
    internal func collectionView(_ cellForItemAtcollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath as IndexPath)
        
        if let comps = self.computers{
            let computer = comps[indexPath.row]
            if let ccell = cell as? ComputerCollectionViewCell{
                ccell.computerNameLabel.text = computer.computerName
            }
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var ret = 0
        
        if let comps = self.computers{
            ret = comps.count
        }
        
        return ret
    }
    @IBOutlet private weak var collectionView: UICollectionView!
    

}
