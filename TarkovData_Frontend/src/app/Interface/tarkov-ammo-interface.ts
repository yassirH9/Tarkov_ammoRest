export interface TarkovAmmoInterface {
    //Interfaz dedicada a los gameobject appo y sus espesificaciones
    id?:number;
	armorDamage:number;
    damage:number;
    caliber:string;
    weight:number;
    ammoType:string;
    fragmentationChance:number;
    ricochetChance:number;
    heavyBleedModifier:number;
    lightBleedModifier:number;
    tracer:boolean;
    tracerColor:string;
    avg24hPrice:number;
    lastLowPrice:number;
    name:string;
    shortName:string;
    image512pxLink:string;
}
