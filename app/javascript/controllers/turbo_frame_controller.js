import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("turbo:before-fetch-request", this.startLoading)
    this.element.addEventListener("turbo:frame-load", this.finishLoading)
  }

  startLoading(event) {
    event.target.classList.add("turbo-loading")
  }

  finishLoading(event) {
    const frame = event.target
    frame.classList.remove("turbo-loading")
    frame.classList.add("turbo-success")
    
    // Cleans up success state after 1 second
    setTimeout(() => {
      frame.classList.remove("turbo-success")
    }, 1000)
  }
}