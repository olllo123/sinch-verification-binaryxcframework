import XCTest

import VerificationTests

var tests = [XCTestCaseEntry]()
tests += VerificationTests.allTests()
XCTMain(tests)
