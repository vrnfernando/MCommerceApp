//
//  MiniMCommerceAppTests.swift
//  MiniMCommerceAppTests
//
//  Created by Vishwa Fernando on 2025-06-29.
//

import XCTest
@testable import MiniMCommerceApp

final class MiniMCommerceAppTests: XCTestCase {
    
    var cartManager: CartManager!
    var testProduct: Product!

    override func setUp() {
        super.setUp()
        cartManager = CartManager()
        cartManager.items = []  // Clear persisted items for testing

        testProduct = Product(
            id: 1,
            title: "Test Product",
            description: "Test description",
            price: 10.0,
            category: "test",
            image: "https://example.com/image.png",
            rating: Rating(rate: 4.5, count: 100)
        )
    }

    override func tearDown() {
        cartManager = nil
        testProduct = nil
        super.tearDown()
    }

    func testAddToCart() {
        cartManager.addToCart(testProduct)
        XCTAssertEqual(cartManager.items.count, 1)
        XCTAssertEqual(cartManager.items.first?.quantity, 1)
    }

    func testAddSameProductIncrementsQuantity() {
        cartManager.addToCart(testProduct)
        cartManager.addToCart(testProduct)
        XCTAssertEqual(cartManager.items.first?.quantity, 2)
    }

    func testRemoveFromCart() {
        cartManager.addToCart(testProduct)
        cartManager.removeFromCart(testProduct)
        XCTAssertTrue(cartManager.items.isEmpty)
    }

    func testUpdateQuantity() {
        cartManager.addToCart(testProduct)
        cartManager.updateQuantity(for: testProduct, quantity: 5)
        XCTAssertEqual(cartManager.items.first?.quantity, 5)
    }

    func testTotalPrice() {
        cartManager.addToCart(testProduct)
        cartManager.updateQuantity(for: testProduct, quantity: 3)
        XCTAssertEqual(cartManager.totalPrice, 30.0)
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
