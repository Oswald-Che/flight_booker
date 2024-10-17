import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-passenger"
export default class extends Controller {
    static targets = ["template", "output", "node", "passenger", "amount"]
    static values = {count: Number}
    
    addPassenger() {
        this.clone = this.templateTarget.content.cloneNode(true)
        this.outputTarget.appendChild(this.clone)
        this.countValue++
    }

    removePassenger() {
        if(this.countValue > 1){
            this.lastNode = this.nodeTargets.pop()
            this.outputTarget.removeChild(this.lastNode)
            this.countValue--
        }    
       
    }

    countValueChanged(){
        this.passengerTarget.textContent = this.countValue
        this.amountTarget.value = this.countValue
    }

}
