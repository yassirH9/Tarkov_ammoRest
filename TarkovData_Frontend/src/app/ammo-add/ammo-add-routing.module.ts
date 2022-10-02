import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AmmoAddPage } from './ammo-add.page';

const routes: Routes = [
  {
    path: '',
    component: AmmoAddPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AmmoAddPageRoutingModule {}
