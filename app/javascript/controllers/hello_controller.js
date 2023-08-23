import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["words"];
  connect() {
    this.element.textContent = "Hello World!"
  }


}
