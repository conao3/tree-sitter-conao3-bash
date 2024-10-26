import XCTest
import SwiftTreeSitter
import TreeSitterConao3Bash

final class TreeSitterConao3BashTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_conao3_bash())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Conao3Bash grammar")
    }
}
