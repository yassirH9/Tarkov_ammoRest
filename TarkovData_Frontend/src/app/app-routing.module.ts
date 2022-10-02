import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';
import {MatButtonModule} from '@angular/material/button';
import {MatIconModule} from '@angular/material/icon';
const routes: Routes = [
  {
    path: 'home',
    loadChildren: () => import('./home/home.module').then( m => m.HomePageModule)
  },
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'ammo-details/:id',
    loadChildren: () => import('./ammo-details/ammo-details.module').then( m => m.AmmoDetailsPageModule)
  },
  {
    path: 'ammo-add',
    loadChildren: () => import('./ammo-add/ammo-add.module').then( m => m.AmmoAddPageModule)
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules }),
    HttpClientModule,
    MatButtonModule,MatIconModule
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
