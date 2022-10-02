import { Component, OnInit } from '@angular/core';
import { TarkovDataServiceService } from "../Service/tarkov-data-service.service";
import { TarkovAmmoInterface } from '../Interface/tarkov-ammo-interface';

@Component({
  selector: 'app-ammo-add',
  templateUrl: './ammo-add.page.html',
  styleUrls: ['./ammo-add.page.scss'],
})
export class AmmoAddPage implements OnInit {
  
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
  constructor(private tkService: TarkovDataServiceService) {}

  ngOnInit() {
  }
  onclickSend(){
    let ammosend: TarkovAmmoInterface = {
      id: this.id,
      armorDamage: this.armorDamage,
      damage: this.damage,
      caliber: this.caliber,
      weight: this.weight,
      ammoType: this.ammoType,
      fragmentationChance: 0,
      ricochetChance: this.ricochetChance,
      heavyBleedModifier: this.heavyBleedModifier,
      lightBleedModifier: this.lightBleedModifier,
      tracer: this.tracer,
      tracerColor: this.tracerColor,
      avg24hPrice: 0,
      lastLowPrice: 0,
      name: this.name,
      shortName: this.shortName,
      image512pxLink: this.image512pxLink,
    };

    console.log(this.name);
    this.tkService.post_AmmoById(ammosend);
    window.location.href="/home";
  }
}
