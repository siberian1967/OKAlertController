/*
*   Copyright (c) 2016 Oleh Kulykov <info@resident.name>
*
*   Permission is hereby granted, free of charge, to any person obtaining a copy
*   of this software and associated documentation files (the "Software"), to deal
*   in the Software without restriction, including without limitation the rights
*   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*   copies of the Software, and to permit persons to whom the Software is
*   furnished to do so, subject to the following conditions:
*
*   The above copyright notice and this permission notice shall be included in
*   all copies or substantial portions of the Software.
*
*   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
*   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
*   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
*   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
*   THE SOFTWARE.
*/


import UIKit


class MyViewController: UIViewController {

	let alertTitle = "Lorem ipsum dolor sit amet"
	let alertMessage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

	@IBAction func show() {

		let alert = OKAlertController(title: alertTitle, message: alertMessage)

		alert.addAction("Ut enim ad minim veniam", style: .Default) { _ in
			print("Ut enim ad minim veniam")
		}

		alert.addAction("Duis aute irure dolor", style: .Default) { _ in
			print("Duis aute irure dolor")
		}

		alert.addAction("Cancel", style: .Cancel) { _ in
			print("Cancel")
		}
		alert.addAction("Destructive", style: .Destructive, handler: nil)

		alert.showMinimalistic()
//		alert.show(fromController: self, animated: true)
	}

	override func viewDidLoad() {
		self.view.backgroundColor = UIColor.lightGrayColor()
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

