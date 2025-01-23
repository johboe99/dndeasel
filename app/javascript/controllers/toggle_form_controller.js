import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-form"
export default class extends Controller {
  static targets = ["button", "form"]

  connect() {
    console.log("toggle-form controller connected...")
  }

  toggle(event) {
    event.preventDefault();
    this.formTarget.classList.toggle("d-none");
    if (this.buttonTarget.innerHTML == "Add a new Character") {
      this.buttonTarget.innerHTML = "Hide Form";
    } else if (this.buttonTarget.innerHTML == "Hide Form") {
      this.buttonTarget.innerHTML = ("Add a new Character");
    }
  }
}
