//
//  UnitTestingAssignmentTests.swift
//  UnitTestingAssignmentTests
//
//  Created by Data on 13.05.24.
//

import XCTest
@testable import UnitTestingAssignment

final class UnitTestingAssignmentTests: XCTestCase {
    
    var viewModel: CartViewModel!
    
    override func setUpWithError() throws {
        viewModel = CartViewModel()
    }
    
    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func testSelectedItemsQuantity() {
            XCTAssertEqual(viewModel.selectedItemsQuantity, 0)
            
            viewModel.addProduct(withID: 1)
            viewModel.addProduct(withID: 2)
            viewModel.addProduct(withID: 3)
            XCTAssertEqual(viewModel.selectedItemsQuantity, 3)
            
            viewModel.addProduct(withID: 1)
            XCTAssertEqual(viewModel.selectedItemsQuantity, 4)
            
            viewModel.removeProduct(withID: 1)
            XCTAssertEqual(viewModel.selectedItemsQuantity, 3)
        }
    

    func testSome() {
        
    }
    
    func testTotalPrice() {
        XCTAssertEqual(viewModel.totalPrice, 0.0)
            
            let product1 = Product(title: "Product 1", price: 50.0)
            let product2 = Product(title: "Product 2", price: 25.0)
            viewModel.addProduct(product: product1)
            viewModel.addProduct(product: product2)
            
            XCTAssertEqual(viewModel.totalPrice, 75.0)
        }
}
