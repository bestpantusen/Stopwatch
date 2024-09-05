//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Kachatad Pantusen on 4/9/2567 BE.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate?

  func start() {
    startTime = NSDate()
  }

  func stop() {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
      let time = elapsedTime

      let minutes = Int(time) / 60
      let seconds = Int(time) % 60
      let fraction = Int((time.truncatingRemainder(dividingBy: 1)) * 10)

      return String(format: "%02d:%02d.%d", minutes, seconds, fraction)
  }
  var isRunning: Bool {
      return startTime != nil
  }


   
}
