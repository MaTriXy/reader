import UIKit
import SwiftUI
import shared

struct ComposeView: UIViewControllerRepresentable {
    
    let homeViewControllerComponent: InjectHomeViewControllerComponent
	
    init(homeViewControllerComponent: InjectHomeViewControllerComponent) {
        self.homeViewControllerComponent = homeViewControllerComponent
	}
	
	func makeUIViewController(context: Context) -> UIViewController {
        return homeViewControllerComponent.homeViewControllerFactory()
	}

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

struct ContentView: View {
	
    let homeViewControllerComponent: InjectHomeViewControllerComponent
	
    init(homeViewControllerComponent: InjectHomeViewControllerComponent) {
        self.homeViewControllerComponent = homeViewControllerComponent
	}

	var body: some View {
        ComposeView(homeViewControllerComponent: homeViewControllerComponent)
			.ignoresSafeArea(.keyboard) // Compose has own keyboard handler
			.edgesIgnoringSafeArea(.all)
	}
}
