//: Playground - noun: a place where people can play

import UIKit

protocol ObservableProtocol {
    var observedVariable: String { get }
}

class Observable {
}

extension Observable: ObservableProtocol {
    var observedVariable: String {
        return "This is a computed property"
    }
}

class Observer {
    var observed: ObservableProtocol? {
        didSet {
            print("Observed property observer called")
        }
    }

    func trigger() {
        let computedProperty = observed?.observedVariable
        print(computedProperty)
    }
}

let observable = Observable()
let observer = Observer()
observer.observed = observable
observer.trigger()
