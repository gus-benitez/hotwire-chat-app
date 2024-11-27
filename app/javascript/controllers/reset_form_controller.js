import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input"]

  reset() {
    this.inputTarget.value = ""
  }

  connect() {
    this.element.addEventListener("turbo:submit-end", () => {
      this.reset()
    })
  }
}