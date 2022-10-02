import { Component, Input, OnInit, Output } from '@angular/core';
import { NavController } from '@ionic/angular';
@Component({
  selector: 'app-modal',
  templateUrl: './modal.component.html',
  styleUrls: ['./modal.component.scss'],
})
export class ModalComponent {
  @Input() id:number;
  @Input() name:string;
  @Input() link:string;
  @Input() caliber:string;  
  constructor(private navCTR:NavController) { }
  goToDetails(){
    console.log(this.id);
    this.navCTR.navigateForward('/ammo-details/'+this.id);
  }
}