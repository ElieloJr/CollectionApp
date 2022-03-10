//
//  ViewController.swift
//  CollectionApp
//
//  Created by Usr_Prime on 10/03/22.
//

import UIKit

class CollectionViewController: UICollectionViewController{
    
    @IBOutlet var InfoCollectView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        InfoCollectView.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = InfoCollectView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else { fatalError() }
        cell.configure(with: "cc")
        
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 80, height: 200)
//
//    }
}
