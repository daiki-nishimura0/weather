//
//  ViewController.swift
//  weather
//
//  Created by daiki nishimura on 2022/09/06.
//

import UIKit


class HomeViewModel {
    var weather: Weather?
    
    private var main: Weather.Main? {
        return weather?.main
    }
    
    var temperatureString: String {
        return String(main?.temp ?? 0)
    }
    
    func fetchWeather(for cityId: Int = 5128581, completion: @escaping (() -> Void)) {
        NetworkController.fetchWeather(for: cityId) { weather in
            self.weather = weather
            completion()
        }
    }
}

class HomeController: UIViewController {

    private let viewModel = HomeViewModel()
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        viewModel.fetchWeather { [weak self] in
                    DispatchQueue.main.async {
                        self?.setupUI()
                    }
                }
            }

    private func setupUI() {
        temperatureLabel.text = viewModel.temperatureString
    }
}
