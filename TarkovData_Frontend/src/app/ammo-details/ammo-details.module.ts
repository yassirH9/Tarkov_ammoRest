import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AmmoDetailsPageRoutingModule } from './ammo-details-routing.module';

import { AmmoDetailsPage } from './ammo-details.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AmmoDetailsPageRoutingModule
  ],
  declarations: [AmmoDetailsPage]
})
export class AmmoDetailsPageModule {}
