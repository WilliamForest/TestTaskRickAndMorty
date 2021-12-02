//
//  CharacterContainer.swift
//  TestTaskRickAndMorty
//
//  Created by Roman Gorshkov on 01.12.2021.
//  
//

import UIKit

final class CharacterContainer {
    let input: CharacterModuleInput
	let viewController: UIViewController
	private(set) weak var router: CharacterRouterInput!

	static func assemble(with context: CharacterContext) -> CharacterContainer {
        let router = CharacterRouter()
        let interactor = CharacterInteractor()
        let presenter = CharacterPresenter(router: router, interactor: interactor)
		let viewController = CharacterViewController(output: presenter)

		presenter.view = viewController
		presenter.moduleOutput = context.moduleOutput

		interactor.output = presenter

        return CharacterContainer(view: viewController, input: presenter, router: router)
	}

    private init(view: UIViewController, input: CharacterModuleInput, router: CharacterRouterInput) {
		self.viewController = view
        self.input = input
		self.router = router
	}
}

struct CharacterContext {
	weak var moduleOutput: CharacterModuleOutput?
}
