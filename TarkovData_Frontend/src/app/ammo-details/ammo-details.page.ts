import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { TarkovDataServiceService } from "../Service/tarkov-data-service.service";
import { TarkovAmmoInterface } from '../Interface/tarkov-ammo-interface';
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-ammo-details',
  templateUrl: './ammo-details.page.html',
  styleUrls: ['./ammo-details.page.scss'],
})
export class AmmoDetailsPage implements OnInit {
  //los campos son editables?
  editable: boolean;

  id: number;
  armorDamage: number;
  damage: number;
  caliber: string;
  weight: number;
  ammoType: string;
  fragmentationChance: number;
  ricochetChance: number;
  heavyBleedModifier: number;
  lightBleedModifier: number;
  tracer: boolean;
  tracerColor: string;
  avg24hPrice: number;
  lastLowPrice: number;
  name: string;
  shortName: string;
  image512pxLink: string;
  constructor(private route: ActivatedRoute, private tkService: TarkovDataServiceService, private alertCRT: AlertController, private alertController: AlertController) {

  }

  ngOnInit() {
    this.editable = true;
    this.id = Number.parseInt(this.route.snapshot.paramMap.get('id'));
    //inicializo los campos son editables? en no editables

    //alert(this.id);
    //obtiene los datos de la municion cuyo id es el que se optiene anteriormente
    this.getAmmo();
  }
  getAmmo() {
    this.tkService.get_AmmoById(this.id).subscribe(data => {
      this.armorDamage = data.armorDamage;
      this.damage = data.damage;
      this.caliber = data.caliber;
      this.weight = data.weight;
      this.ammoType = data.ammoType;
      this.fragmentationChance = data.fragmentationChance;
      this.ricochetChance = data.ricochetChance;
      this.heavyBleedModifier = data.heavyBleedModifier;
      this.lightBleedModifier = data.lightBleedModifier;
      this.tracer = data.tracer;
      this.tracerColor = data.tracerColor;
      this.avg24hPrice = data.avg24hPrice;
      this.lastLowPrice = data.lastLowPrice;
      this.name = data.name;
      this.shortName = data.shortName;
      this.image512pxLink = data.image512pxLink;
    },
      (error) => {
        this.presentAlert();
      });
  }

  sendAmmoData() {
    let ammosend: TarkovAmmoInterface = {
      id: this.id,
      armorDamage: this.armorDamage,
      damage: this.damage,
      caliber: this.caliber,
      weight: this.weight,
      ammoType: this.ammoType,
      fragmentationChance: this.fragmentationChance,
      ricochetChance: this.ricochetChance,
      heavyBleedModifier: this.heavyBleedModifier,
      lightBleedModifier: this.lightBleedModifier,
      tracer: this.tracer,
      tracerColor: this.tracerColor,
      avg24hPrice: this.avg24hPrice,
      lastLowPrice: this.lastLowPrice,
      name: this.name,
      shortName: this.shortName,
      image512pxLink: this.image512pxLink,
    };

    console.log(this.name);
    this.tkService.put_AmmoById(ammosend, this.id);
  }
  //evento para el boton de editar
  onclickEdit() {
    if (this.editable === true) {
      //document.getElementById('dataBox').setAttribute("readonly", "false");
      /*document.querySelectorAll('#dataBox').forEach(x => {
        x.setAttribute("readonly", "false");
      });*/
      for (var i = 1; i <= 14; i++) {
        document.querySelector('#dataBox' + i).setAttribute("readonly", "false");
      }
      //botones
      document.getElementById("editbtn_editdata").style.display = "none";
      document.getElementById("editbtn_senddata").style.display = "block";
      //edit imagen

      this.editable = false;
      console.log(this.editable);


    } else {


      /*document.querySelectorAll('#dataBox').forEach(x => {
        x.setAttribute("readonly", "true");
      });*/
      for (var i = 1; i <= 14; i++) {
        document.querySelector('#dataBox' + i).setAttribute("readonly", "true");
      }
      document.getElementById("editbtn_editdata").style.display = "block";
      document.getElementById("editbtn_senddata").style.display = "none";

      this.editable = true;
      this.sendAmmoData();
    }
  }
  //evento para boton de eliminar
  //con ventana emergente de confirmacion al eliminar
  async onclickDelete() {
    const alert = await this.alertCRT.create({
      header: 'Are you sure?',
      cssClass: 'custom-alert',
      buttons: [
        {
          text: 'No',
          cssClass: 'alert-button-cancel',
          handler: () => {
            //window.location.href = "/ammo-details/"+this.id;
          }
        },
        {
          text: 'Yes',
          cssClass: 'alert-button-confirm',
          handler: () => {
            this.tkService.del_AmmoById(this.id);
            window.location.href = "/";
          }
        },
      ],
    });
    await alert.present();

  }
  onclickBack() {
    window.location.href = "/";
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
