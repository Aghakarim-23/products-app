//
//  ProductsViewController.swift
//  ProductsApp
//
//  Created by Agakerim Hemidzade on 22.07.26.
//

import SnapKit
import UIKit

class ProductsViewController: UIViewController {

    private let products: [Product] = [
        Product(
            name: "iPhone 16",
            description: "A clean product card built with UIKit and Snapkit.",
            price: "$999",
            symbolName: "iphone"
        ),
        Product(
            name: "Apple watch",
            description: "A clean product card built with UIKit and Snapkit.",
            price: "$399",
            symbolName: "applewatch"
        ),
        Product(
            name: "Macbook Air",
            description: "A clean product card built with UIKit and Snapkit.",
            price: "$1299",
            symbolName: "laptopcomputer"
        ),
    ]

    private var selectedProduct: Product {
        products[categorySegmentController.selectedSegmentIndex]
    }

    private let categorySegmentController: UISegmentedControl = {
        let control = UISegmentedControl(items: ["Phone", "Watch", "Laptop"])

        control.selectedSegmentIndex = 0

        return control
    }()

    private let productCardView: ProductCardView = {
        let cardView = ProductCardView()

        return cardView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {

        productCardView.configure(with: selectedProduct)
        addSubviews()
        addConstraints()

        categorySegmentController.addTarget(
            self,
            action: #selector(categoryChanged),
            for: .valueChanged
        )
    }
    
    @objc private func categoryChanged () {
        productCardView.configure(with: selectedProduct)
    }

    private func addSubviews() {
        view.addSubview(categorySegmentController)
        view.addSubview(productCardView)
    }

    private func addConstraints() {
        categorySegmentController.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(24)
            make.horizontalEdges.equalToSuperview().inset(16)
        }

        productCardView.snp.makeConstraints { make in
            make.top.equalTo(categorySegmentController.snp.bottom).offset(24)
            make.horizontalEdges.equalToSuperview().inset(16)
        }
    }

}
