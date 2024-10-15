import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-passenger"
export default class extends Controller {
    static targets = ["template", 'output']
  addPassenger() {
    console.log(this.hasOutputTarget)
    this.outputTarget.appendChild(this.templateTarget.content)

  }
}
