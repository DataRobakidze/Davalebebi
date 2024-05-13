//
//  CartTest.swift
//  UnitTestingAssignment
//
//  Created by Data on 13.05.24.
//

import XCTest
@testable import UnitTestingAssignment

final class CartTest: XCTestCase {

    var viewModel: CartViewModel?
    
    override func setUpWithError() throws {
        viewModel = CartViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func testClearCart() {
        viewModel?.addProduct(withID: 1)
        viewModel?.addProduct(withID: 2)
        viewModel?.addProduct(withID: 3)
        
        viewModel?.clearCart()
        XCTAssertEqual(viewModel?.selectedItemsQuantity, 0)
    }

}
