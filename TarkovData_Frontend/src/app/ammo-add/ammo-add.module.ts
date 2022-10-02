import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AmmoAddPageRoutingModule } from './ammo-add-routing.module';

import { AmmoAddPage } from './ammo-add.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AmmoAddPageRoutingModule
  ],
  declarations: [AmmoAddPage]
})
export class AmmoAddPageModule {}
