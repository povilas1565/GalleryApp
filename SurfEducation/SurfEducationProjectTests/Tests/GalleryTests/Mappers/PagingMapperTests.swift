//
//  File.swift
//  
//
//  Created by Pavel Ryzhkov on 05/08/22.
//

import XCTest
import Nimble
@testable import InstaGallery

final class PagingMapperTests: XCTestCase {
    
    var sut: PagingMapper!
    
    override func setUp() {
        super.setUp()
        
        sut = PagingMapper()
    }
    
    override func tearDown() {
        super.tearDown()
        
        sut = nil
    }
    
    func testMappingInvalidDTO() {
        let expectedPaging = sut.transform(pagingDTO: nil)
        
        expect(expectedPaging).to(beNil())
    }
    
    func testMappingDTOToDomain() {
        let dto = IGPagingMother.paging()
        
        let expectedPaging = sut.transform(pagingDTO: dto)
        
        expect(expectedPaging).notTo(beNil())
        expect(expectedPaging?.cursors?.before).to(equal(dto.cursors.before))
        expect(expectedPaging?.cursors?.after).to(equal(dto.cursors.after))
        expect(expectedPaging?.next).to(equal(dto.next))
    }
}
