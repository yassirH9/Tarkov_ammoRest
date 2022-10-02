import { Injectable } from '@angular/core';
import { HttpClient, HttpResponse } from '@angular/common/http';
import { HttpClientModule } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { AlertController } from '@ionic/angular';

//objeto ammo
import { TarkovAmmoInterface } from '../Interface/tarkov-ammo-interface';
import { throwError } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class TarkovDataServiceService {

  constructor(private httpClient: HttpClient,private alertController: AlertController) { }
  endpoint: string = "http://localhost:8080/ammo";
  getAll_Ammo() {
    return this.httpClient.get<Array<TarkovAmmoInterface>>(this.endpoint)
      
  }
  get_AmmoById(id: number) {
    return this.httpClient.get<TarkovAmmoInterface>(this.endpoint + "/" + id)
      
  }
  del_AmmoById(id: number) {
    return this.httpClient.delete(this.endpoint + "/" + id)
      .subscribe(data => { },
        (error) => {
          this.presentAlert();
        });
  }



  //-------------------------------------------------------------------------<

  //esto es temporal revisar si es asi
  post_AmmoById(ammo: TarkovAmmoInterface) {
    this.httpClient.post<TarkovAmmoInterface>(this.endpoint, {}, {
      params: {
        //id:ammo.id,
        armorDamage: ammo.armorDamage,
        damage: ammo.damage,
        caliber: ammo.caliber,
        weight: ammo.weight,
        ammoType: ammo.ammoType,
        fragmentationChance: ammo.fragmentationChance,
        ricochetChance: ammo.ricochetChance,
        heavyBleedModifier: ammo.heavyBleedModifier,
        lightBleedModifier: ammo.lightBleedModifier,
        tracer: ammo.tracer,
        tracerColor: ammo.tracerColor,
        avg24hPrice: ammo.avg24hPrice,
        lastLowPrice: ammo.lastLowPrice,
        name: ammo.name,
        shortName: ammo.shortName,
        image512pxLink: ammo.image512pxLink,
      }
    })
      // .pipe()
      .subscribe(data => { },
        (error) => {
        this.presentAlert();
      })
  }
  
  put_AmmoById(ammo: TarkovAmmoInterface, id: number) {
    this.httpClient.put<TarkovAmmoInterface>(this.endpoint + "/" + id, {}, {
      params: {
        id: ammo.id,
        armorDamage: ammo.armorDamage,
        damage: ammo.damage,
        caliber: ammo.caliber,
        weight: ammo.weight,
        ammoType: ammo.ammoType,
        fragmentationChance: ammo.fragmentationChance,
        ricochetChance: ammo.ricochetChance,
        heavyBleedModifier: ammo.heavyBleedModifier,
        lightBleedModifier: ammo.lightBleedModifier,
        tracer: ammo.tracer,
        tracerColor: ammo.tracerColor,
        avg24hPrice: ammo.avg24hPrice,
        lastLowPrice: ammo.lastLowPrice,
        name: ammo.name,
        shortName: ammo.shortName,
        image512pxLink: ammo.image512pxLink,

      }
    })
      .pipe()
      .subscribe(data => { },
        (error) => {
          this.presentAlert();
        })
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


/*
"id": "500", 
      armorDamage:ammo.armorDamage.toString,
      damage: ammo.damage,
      caliber: ammo.caliber,
      weight: ammo.weight,
      ammoType: ammo.ammoType,
      fragmentationChance: ammo.fragmentationChance,
      ricochetChance: ammo.ricochetChance,
      heavyBleedModifier: ammo.heavyBleedModifier,
      lightBleedModifier: ammo.lightBleedModifier,
      tracer: ammo.tracer,
      tracerColor: ammo.tracerColor,
      avg24hPrice: ammo.avg24hPrice,
      lastLowPrice: ammo.lastLowPrice,
      name: ammo.name,
      shortName: ammo.shortName,
      image512pxLink: ammo.image512pxLink,
*/