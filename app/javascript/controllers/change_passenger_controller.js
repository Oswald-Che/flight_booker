import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-passenger"
export default class extends Controller {
    static targets = ["template", "output", "node"]
  addPassenger() {
    console.log(this.hasTemplateTarget)
    
    this.clone = this.templateTarget.content.cloneNode(true)
    this.outputTarget.appendChild(this.clone)
    console.log(this.nodeTargets)
  }
}
