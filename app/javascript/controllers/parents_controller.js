import ApplicationController from './application_controller'
import Cleave from 'cleave.js';
import 'cleave.js/dist/addons/cleave-phone.gr'

export default class extends ApplicationController {
  static targets = [ "output", "phone", "name"]
  connect () {
    super.connect()
    console.log('connected')
    this.spaceNumber()
  }

  createParent(){
    console.log('triggered')
    this.stimulate('ParentsReflex#create', this.name, this.phone)
  }

  spaceNumber(){
    new Cleave(this.phoneTarget, { 
      phone: true,
      phoneRegionCode: 'GR'
     })
  }

  get name(){
    return this.nameTarget.value
  }

  get phone() {
    return this.phoneTarget.value
  }
  set phone(phone){
    this.phoneTarget.value = phone
  }
}
