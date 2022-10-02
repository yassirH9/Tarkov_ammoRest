import { Component } from '@angular/core';
import {TarkovAmmoInterface} from '../Interface/tarkov-ammo-interface';
import {TarkovDataServiceService} from "../Service/tarkov-data-service.service";
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {
  search: string;
  ammo: Array<TarkovAmmoInterface>=[];
  constructor(private tkService: TarkovDataServiceService,private alertController: AlertController) {
    this.getAllAmmo();
  }
  getAllAmmo(){
    //subscribe es para realizar la consulta asincrona
    this.tkService.getAll_Ammo().subscribe(data=>{
      this.ammo = data;
    },
    (error) => {
      this.presentAlert();
    }
    );
  }
  async presentAlert() {
    const alert = await this.alertController.create({
      header: 'Error con el servidor',
      message: 'En este momento el servicio se encuentra deshabilitado, reintentelo más tarde',
      buttons: [
        {
        text: 'Reintentar',
        handler: () => {
          location.reload();
        }}
      ],
    });
    await alert.present();
  }
}