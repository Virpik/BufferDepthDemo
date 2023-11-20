// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum NetworkType {
  case circular, wifi
}

public struct BufferDepthProvider {
  func bufferDepth(networkType: NetworkType, watchedTime: TimeInterval) -> TimeInterval {
    guard !watchedTime.isZero, !watchedTime.isNaN, !watchedTime.isInfinite else {
      return watchedTime
    }

    if watchedTime <= 5 {
      return 10
    }

    if watchedTime <= 10 {
      return 15
    }
    
    return bufferDepth(networkType)
  }

  private func bufferDepth(_ networkType: NetworkType) -> TimeInterval {
    switch networkType {
      case .circular:
        return 30
      case .wifi:
        return 50
    }
  }
}
