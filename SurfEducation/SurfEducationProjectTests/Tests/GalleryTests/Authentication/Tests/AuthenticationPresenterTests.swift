//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import XCTest
import Nimble
@testable import InstaGallery

final class AuthenticationPresenterTests: XCTestCase {
    
    var sut: AuthPresenter!
    
    private let viewMock = AuthViewMock()
    private let interactorMock = AuthInteractorInputMock()
    private let routingMock = AuthRoutingMock()
    
    override func setUp() {
        super.setUp()
        
        sut = AuthPresenter()
        sut.view = viewMock
        sut.interactor = interactorMock
        sut.routing = routingMock
    }
    
    override func tearDown() {
        super.tearDown()
        
        sut = nil
    }
    
    func testViewLoaded() {
        sut.viewLoaded()
        
        expect(self.viewMock.invokedSetupView).to(beTrue())
    }
    
    func testLoad() {
        let urlTest = URL(string: "https://www.google.com/")!
        interactorMock.stubbedAuthRequest = URLRequest(url: urlTest)
        
        sut.load()
        
        expect(self.viewMock.invokedLoadRequest).to(beTrue())
    }
    
    func testFailLoad() {
        interactorMock.stubbedAuthRequest = nil
        
        sut.load()
        
        expect(self.viewMock.invokedLoadRequest).to(beFalse())
    }
    
    func dismiss() {
        sut.dismiss()
        
        expect(self.routingMock.invokedDismiss).to(beTrue())
    }
}
