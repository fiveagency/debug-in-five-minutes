//
//  ViewController.swift
//  iosApp
//
//  Created by Denis Buketa on 09.06.2021..
//  Copyright © 2021 orgName. All rights reserved.
//

import Foundation
import UIKit
import shared

class ViewController: UIViewController {

    private var titleLabel: UILabel!

    private var windowImageView: UIImageView!

    private var ellipseImageView: UIImageView!
    private var triangleImageView: UIImageView!
    private var rectangleImageView: UIImageView!

    private var firstBugImage: UIImageView!
    private var secondBugImage: UIImageView!
    private var thirdBugImage: UIImageView!
    private var fourthBugImage: UIImageView!
    private var fifthBugImage: UIImageView!

    private let windowImageHeight: CGFloat = 172
    private let windowImageWidth: CGFloat = 270

    private let firstBugLeadingMultiplier: CGFloat = 0.07
    private let firstBugTopMultiplier: CGFloat = 0.76

    private let secondBugLeadingMultiplier: CGFloat = 0.88
    private let secondBugTopMultiplier: CGFloat = 0.67

    private let thirdBugLeadingMultiplier: CGFloat = 0.28
    private let thirdBugTopMultiplier: CGFloat = 0.35

    private let fourthBugLeadingMultiplier: CGFloat = 0.55
    private let fourthBugTopMultiplier: CGFloat = 0.62

    private let fifthBugLeadingMultiplier: CGFloat = 0.78
    private let fifthBugTopMultiplier: CGFloat = 0.38

    private let bugResolver = BugResolver()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createViews()
        styleViews()
        defineLayoutForViews()

        firstBugImage.isHidden = bugResolver.fixBugOne()
        secondBugImage.isHidden = bugResolver.fixBugTwo()
        thirdBugImage.isHidden = bugResolver.fixBugThree()
        fourthBugImage.isHidden = bugResolver.fixBugFour()
        fifthBugImage.isHidden = bugResolver.fixBugFive()
    }

}

extension ViewController {

    func createViews() {
        titleLabel = UILabel()
        view.addSubview(titleLabel)

        ellipseImageView = UIImageView(image: UIImage(named: "ellipse"))
        view.addSubview(ellipseImageView)

        triangleImageView = UIImageView(image: UIImage(named: "triangle"))
        view.addSubview(triangleImageView)

        rectangleImageView = UIImageView(image: UIImage(named: "rectangle"))
        view.addSubview(rectangleImageView)

        firstBugImage = UIImageView(image: UIImage(named: "bug1"))
        view.addSubview(firstBugImage)

        secondBugImage = UIImageView(image: UIImage(named: "bug2"))
        view.addSubview(secondBugImage)

        thirdBugImage = UIImageView(image: UIImage(named: "bug3"))
        view.addSubview(thirdBugImage)

        fourthBugImage = UIImageView(image: UIImage(named: "bug4"))
        view.addSubview(fourthBugImage)

        fifthBugImage = UIImageView(image: UIImage(named: "bug5"))
        view.addSubview(fifthBugImage)

        windowImageView = UIImageView(image: UIImage(named: "windowImage"))
        view.addSubview(windowImageView)
    }

    func styleViews() {
        titleLabel.font = UIFont(name: "TabacG3-Bold", size: 36)
        titleLabel.text = ".debug in FIVE\n minutes"
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0

        windowImageView.contentMode = .scaleAspectFill

        firstBugImage.contentMode = .scaleAspectFill
        secondBugImage.contentMode = .scaleAspectFill
        thirdBugImage.contentMode = .scaleAspectFill
        fourthBugImage.contentMode = .scaleAspectFill
        fifthBugImage.contentMode = .scaleAspectFill
    }

    func defineLayoutForViews() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 88).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36).isActive = true

        ellipseImageView.translatesAutoresizingMaskIntoConstraints = false
        ellipseImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 308).isActive = true
        ellipseImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28).isActive = true
        ellipseImageView.heightAnchor.constraint(equalToConstant: 125).isActive = true
        ellipseImageView.widthAnchor.constraint(equalToConstant: 125).isActive = true

        triangleImageView.translatesAutoresizingMaskIntoConstraints = false
        triangleImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 286).isActive = true
        triangleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 179).isActive = true
        triangleImageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        triangleImageView.widthAnchor.constraint(equalToConstant: 140).isActive = true

        rectangleImageView.translatesAutoresizingMaskIntoConstraints = false
        rectangleImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 447).isActive = true
        rectangleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 106).isActive = true
        rectangleImageView.heightAnchor.constraint(equalToConstant: 166).isActive = true
        rectangleImageView.widthAnchor.constraint(equalToConstant: 165).isActive = true

        windowImageView.translatesAutoresizingMaskIntoConstraints = false
        windowImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        windowImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        windowImageView.heightAnchor.constraint(equalToConstant: windowImageHeight).isActive = true
        windowImageView.widthAnchor.constraint(equalToConstant: windowImageWidth).isActive = true

        firstBugImage.translatesAutoresizingMaskIntoConstraints = false
        firstBugImage.topAnchor.constraint(equalTo: windowImageView.topAnchor, constant: windowImageHeight * firstBugTopMultiplier).isActive = true
        firstBugImage.leadingAnchor.constraint(equalTo: windowImageView.leadingAnchor, constant: windowImageWidth * firstBugLeadingMultiplier).isActive = true

        secondBugImage.translatesAutoresizingMaskIntoConstraints = false
        secondBugImage.topAnchor.constraint(equalTo: windowImageView.topAnchor, constant: windowImageHeight * secondBugTopMultiplier).isActive = true
        secondBugImage.leadingAnchor.constraint(equalTo: windowImageView.leadingAnchor, constant: windowImageWidth * secondBugLeadingMultiplier).isActive = true

        thirdBugImage.translatesAutoresizingMaskIntoConstraints = false
        thirdBugImage.topAnchor.constraint(equalTo: windowImageView.topAnchor, constant: windowImageHeight * thirdBugTopMultiplier).isActive = true
        thirdBugImage.leadingAnchor.constraint(equalTo: windowImageView.leadingAnchor, constant: windowImageWidth * thirdBugLeadingMultiplier).isActive = true

        fourthBugImage.translatesAutoresizingMaskIntoConstraints = false
        fourthBugImage.topAnchor.constraint(equalTo: windowImageView.topAnchor, constant: windowImageHeight * fourthBugTopMultiplier).isActive = true
        fourthBugImage.leadingAnchor.constraint(equalTo: windowImageView.leadingAnchor, constant: windowImageWidth * fourthBugLeadingMultiplier).isActive = true

        fifthBugImage.translatesAutoresizingMaskIntoConstraints = false
        fifthBugImage.topAnchor.constraint(equalTo: windowImageView.topAnchor, constant: windowImageHeight * fifthBugTopMultiplier).isActive = true
        fifthBugImage.leadingAnchor.constraint(equalTo: windowImageView.leadingAnchor, constant: windowImageWidth * fifthBugLeadingMultiplier).isActive = true
    }

}

