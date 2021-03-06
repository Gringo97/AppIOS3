//
//  FriendsController.swift
//  AppIOS
//
//  Created by Óscar de la Fuente Ruiz on 31/10/17.
//  Copyright © 2017 Óscar de la Fuente Ruiz. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendsController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = UIColor.red
        collectionView?.register(FriendCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

   


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        // Configure the cell
        
        return cell
    }
    class FriendCell:BaseCell{
        let profileImageView : UIImageView = {
            let imageView: UIImageView
            imageView.contentMode = .scaleAspectFill
            imageView.layer.cornerRadius = 34
            imageView.layer.masksToBounds = true
            
            return imageView
        }()
         override func setupViews(){
            
            addSubview(profileImageView)
            
            profileImageView.image = UIImage(named: "asdf")
            profileImageView.translatesAutoresizingMaskIntoConstraints = false
            addConstraint(wit)
            addConstraintsWithFormat("H:|-12-[v0(68)]", views: profileImageView)
            addConstraintsWithFormat("V:[v0(68)]", views: profileImageView)
            
        }
    }
    
    class BaseCell: UICollectionViewCell{
        override init(frame: CGRect){
            super.init(frame: frame)
            setupViews()
        }
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        func setupViews(){
            backgroundColor = UIColor.blue
        }
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
