//
//  ViewController.swift
//  CollectionApp
//
//  Created by Usr_Prime on 10/03/22.
//

import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var InfoCollectView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        InfoCollectView.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        InfoCollectView.register(UINib(nibName: "HeaderCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderCollectionReusableView")
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = InfoCollectView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else { fatalError() }
        cell.configure(with: "cc")
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath)
            //headerView.backgroundColor = .blue
            return headerView
        }
        return UICollectionReusableView()
    }
    func collectionView(_ collectionsView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 300, height: 300)
    }

//    switch kind {
//    case UICollectionView.elementKindSectionHeader:
//
//        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath as IndexPath)
//
//        headerView.backgroundColor = UIColor.red
//        return headerView
//
//    case UICollectionView.elementKindSectionFooter:
//        let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Footer", for: indexPath as IndexPath)
//
//        footerView.backgroundColor = UIColor.green
//        return footerView
//
//    default:
//
//        assert(false, "Unexpected element kind")
    }


