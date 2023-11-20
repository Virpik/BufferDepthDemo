import XCTest
@testable import BufferDepthDemo

final class BufferDepthDemoTests: XCTestCase {
  private var bufferDepthProvider: BufferDepthProvider!

  override func setUp() {
    super.setUp()

    self.bufferDepthProvider = BufferDepthProvider()
  }

}
