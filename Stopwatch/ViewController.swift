//
//  ViewController.swift
//  Stopwatch
//
//  Created by Kachatad Pantusen on 4/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var elapsedTimeLabel: UILabel!
  let stopwatch = Stopwatch()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  @IBAction func startButtonTapped(sender: UIButton) {
    // code to start the clock
    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
    stopwatch.start()
  }

  @IBAction func stopButtonTapped(sender: UIButton) {
    // code to stop the clock
    stopwatch.stop()
  }
  @objc func updateElapsedTimeLabel(timer: Timer) {
    if stopwatch.isRunning {
      elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
    } else {
      timer.invalidate()
    }
  }


}

