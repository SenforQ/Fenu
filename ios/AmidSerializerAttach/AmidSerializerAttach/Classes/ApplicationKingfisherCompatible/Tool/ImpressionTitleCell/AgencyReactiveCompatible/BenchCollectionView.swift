
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_generalIdent:[UInt8] = [0x16,0x11,0x16,0xb,0x57,0x1c,0x10,0x1b,0x1a,0xd,0x45,0x56,0x5f,0x17,0x1e,0xc,0x5f,0x11,0x10,0xb,0x5f,0x1d,0x1a,0x1a,0x11,0x5f,0x16,0x12,0xf,0x13,0x1a,0x12,0x1a,0x11,0xb,0x1a,0x1b]

private func custodyAccept(spring num: UInt8) -> UInt8 {
    return num ^ 127
}

/*: "featureCell" :*/
fileprivate let user_castId:[Character] = ["f","e","a","t","u","r","e","C","e","l","l"]

/*: "placeholder" :*/
fileprivate let kWindowId:String = "prelatedceh"

/*: "suiteCell" :*/
fileprivate let appBackFormat:String = "regional freshsuiteCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BenchCollectionView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: typealias DidSelectHandler = (_ featureItem: STFilterLooksModel) -> Void
typealias DidSelectHandler = (_ featureItem: OnReactiveCompatible) -> Void

//: class STBeautyCollectionView: UICollectionView {
class BenchCollectionView: UICollectionView {
    //: var curSuiteType = BeautyItemType.Face
    var curSuiteType = BeautyValueConvertible.Face
    //: var featureItems = Array<Any>()
    var featureItems = [Any]()
    //: var curItem: STFilterLooksModel?
    var curItem: OnReactiveCompatible?
    //: var selectBeautyBlock: SelectFilterBlock?
    var selectBeautyBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_generalIdent.map{custodyAccept(spring: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let layout = STBeautyLayout.init()
        let layout = TowardViewLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal

        //: super.init(frame: frame, collectionViewLayout: layout)
        super.init(frame: frame, collectionViewLayout: layout)

        //: setupSubviews()
        temptStart()
    }

    //: deinit {
    deinit {}
}

//: extension STBeautyCollectionView {
extension BenchCollectionView {
    //: func setupData() {
    func behindShould() {
        //: let tmp = NSMutableArray.init()
        let tmp = NSMutableArray()
        //: switch (self.curSuiteType) {
        switch self.curSuiteType {
        //: case .Face:
        case .Face:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Base)
            let faceArr = OnReactiveCompatible().asAlive(categoryType: .Base)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Eyes:
        case .Eyes:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Shape)
            let faceArr = OnReactiveCompatible().asAlive(categoryType: .Shape)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Nose:
        case .Nose:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            let faceArr = OnReactiveCompatible().asAlive(categoryType: .MicroSurgery)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Lip:
        case .Lip:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            let faceArr = OnReactiveCompatible().asAlive(categoryType: .MakeUp)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: default:
        default:
            //: featureItems = Array()
            featureItems = Array()
            //: break
        }

        //: featureItems = tmp as! [Any]
        featureItems = tmp as! [Any]
        //: configDefaultSelectItem()
        cancelSh()

        //: let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        let layout: TowardViewLayout = self.collectionViewLayout as! TowardViewLayout
        //: layout.dataArr = featureItems
        layout.dataArr = featureItems
        //: self.reloadData()
        self.reloadData()
    }

    //: func configDefaultSelectItem() {
    func cancelSh() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        //: var curFeature = CantThen.share.curFeature
        var curFeature = CantThen.share.curFeature
        //: self.curItem?.isSelected = false
        self.curItem?.isSelected = false
        //: curFeature = self.curItem?.featureType
        curFeature = self.curItem?.featureType

        // 1
        //: for aFeature in featureItems {
        for aFeature in featureItems {
            //: let tfeature = aFeature as! STFilterLooksModel
            let tfeature = aFeature as! OnReactiveCompatible
            //: if (curFeature == tfeature.featureType) {
            if curFeature == tfeature.featureType {
                //: tfeature.isSelected = true
                tfeature.isSelected = true
                //: self.curItem = tfeature
                self.curItem = tfeature
                //: break
                break
            }
        }

        // 2
        //: if (self.curItem == nil) {
        if self.curItem == nil {
            //: let aFeature: STFilterLooksModel = featureItems.first as! STFilterLooksModel
            let aFeature: OnReactiveCompatible = featureItems.first as! OnReactiveCompatible
            //: aFeature.isSelected = true
            aFeature.isSelected = true
            //: self.curItem = aFeature
            self.curItem = aFeature
        }
    }

    //: func setCurSuiteType(curSuiteType: BeautyItemType) {
    func acrossPurchase(curSuiteType: BeautyValueConvertible) {
        //: self.curSuiteType = curSuiteType
        self.curSuiteType = curSuiteType
        //: setupData()
        behindShould()
    }

    //: func resetDefaultBeautySuite() {
    func steadSuite() {
        //: self.curSuiteType = .Face
        self.curSuiteType = .Face
        //: setupData()
        behindShould()
        //: let aFeature: STFilterLooksModel = featureItems.first as! STFilterLooksModel
        let aFeature: OnReactiveCompatible = featureItems.first as! OnReactiveCompatible
        //: aFeature.isSelected = true
        aFeature.isSelected = true
        //: self.curItem = aFeature
        self.curItem = aFeature
    }
}

//: extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
extension BenchCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return featureItems.count
        return featureItems.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        let cell: ImpressionTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: (String(user_castId)), for: indexPath) as! ImpressionTitleCell

        //: let item: STFilterLooksModel = featureItems[indexPath.row] as! STFilterLooksModel
        let item: OnReactiveCompatible = featureItems[indexPath.row] as! OnReactiveCompatible
        //: item.isSelected  = (item.featureType == self.curItem?.featureType)
        item.isSelected = (item.featureType == self.curItem?.featureType)
        //: cell.setFeatureItem(featureItem: item)
        cell.attracter(featureItem: item)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if (indexPath.row < featureItems.count) {
        if indexPath.row < featureItems.count {
            //: let item: STFilterLooksModel = featureItems[indexPath.row] as! STFilterLooksModel
            let item: OnReactiveCompatible = featureItems[indexPath.row] as! OnReactiveCompatible
            //: self.curItem?.isSelected = false
            self.curItem?.isSelected = false
            //: item.isSelected = true
            item.isSelected = true

            //: self.curItem = item
            self.curItem = item // setter
            //: if self.selectBeautyBlock != nil {
            if self.selectBeautyBlock != nil {
                //: self.selectBeautyBlock!(self.curItem ?? STFilterLooksModel.init())
                self.selectBeautyBlock!(self.curItem ?? OnReactiveCompatible())
            }
            //: self.reloadData()
            self.reloadData()
        }
    }
}

//: extension STBeautyCollectionView {
extension BenchCollectionView {
    //: func setupSubviews() {
    func temptStart() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isPagingEnabled = true
        self.isPagingEnabled = true
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //: self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: (kWindowId.replacingOccurrences(of: "related", with: "la") + "older"))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(ImpressionTitleCell.self, forCellWithReuseIdentifier: (String(user_castId)))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")
        self.register(ImpressionTitleCell.self, forCellWithReuseIdentifier: (String(appBackFormat.suffix(9))))
    }
}
