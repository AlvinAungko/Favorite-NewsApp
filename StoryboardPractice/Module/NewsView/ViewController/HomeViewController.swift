//
//  HomeViewController.swift
//  StoryboardPractice
//
//  Created by Aung Ko Ko on 08/10/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var segmentCollectionView:UICollectionView!
    @IBOutlet weak var contentCollectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        setDataSourceAndDelegate()
        // Do any additional setup after loading the view.
    }
    
}

extension HomeViewController
{
    private func setUpCellItemSizeAndSpacing()
    {
        
    }
}

extension HomeViewController
{
    private func setDataSourceAndDelegate()
    {
        self.segmentCollectionView.dataSource = self
        self.segmentCollectionView.delegate = self
        
        self.contentCollectionView.dataSource = self
        self.contentCollectionView.delegate = self
    }
    
    private func registerCells()
    {
//        self.contentCollectionView.register(UINib(nibName: String(describing: HeadlineCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: HeadlineCollectionViewCell.self))
    }
}

extension HomeViewController:UICollectionViewDataSource
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == self.segmentCollectionView {
            return 1
        } else {
            return 2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.segmentCollectionView {
            return 4
        } else {
            switch section {
            case 0: return 1
            case 1: return 5
            default: return 0
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.segmentCollectionView {
            return UICollectionViewCell()
        } else {
            switch indexPath.section {
            case 0:
                return UICollectionViewCell()
            case 1:
                return UICollectionViewCell()
            default: return UICollectionViewCell()
            }
        }
        
    }
}

extension HomeViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
}
