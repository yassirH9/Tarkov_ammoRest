package com.yassir.TarkovData.Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.bind.annotation.PathVariable;
@Entity
@Table(name = "ammo")
public class Ammo implements Serializable{
	private static final Integer serialVersion = 1;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	
	int armor_Damage;
    int damage;
    String caliber;
    float weight;
    String ammo_Type;
    float fragmentationChance;
    float ricochet_Chance;
    float heavy_Bleed_Modifier;
    float light_Bleed_Modifier;
    boolean tracer;
    String tracer_Color;
    int avg24h_Price;
    int last_Low_Price;
    String name;
    String short_Name;
    String image512px_Link;
	
	public Ammo(Integer id, int armorDamage, int damage, String caliber, float weight, String ammoType,
			float fragmentationChance, float ricochetChance, float heavyBleedModifier, float lightBleedModifier,
			boolean tracer, String tracerColor, int avg24hPrice, int lastLowPrice, String name, String shortName,
			String image512pxLink) {
		this.id = id;
		this.armor_Damage = armorDamage;
		this.damage = damage;
		this.caliber = caliber;
		this.weight = weight;
		this.ammo_Type = ammoType;
		this.fragmentationChance = fragmentationChance;
		this.ricochet_Chance = ricochetChance;
		this.heavy_Bleed_Modifier = heavyBleedModifier;
		this.light_Bleed_Modifier = lightBleedModifier;
		this.tracer = tracer;
		this.tracer_Color = tracerColor;
		this.avg24h_Price = avg24hPrice;
		this.last_Low_Price = lastLowPrice;
		this.name = name;
		this.short_Name = shortName;
		this.image512px_Link = image512pxLink;
	}
	public Ammo() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getArmorDamage() {
		return armor_Damage;
	}

	public void setArmorDamage(int armorDamage) {
		this.armor_Damage = armorDamage;
	}

	public int getDamage() {
		return damage;
	}

	public void setDamage(int damage) {
		this.damage = damage;
	}

	public String getCaliber() {
		return caliber;
	}

	public void setCaliber(String caliber) {
		this.caliber = caliber;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public String getAmmoType() {
		return ammo_Type;
	}

	public void setAmmoType(String ammoType) {
		this.ammo_Type = ammoType;
	}

	public float getFragmentationChance() {
		return fragmentationChance;
	}

	public void setFragmentationChance(float fragmentationChance) {
		this.fragmentationChance = fragmentationChance;
	}

	public float getRicochetChance() {
		return ricochet_Chance;
	}

	public void setRicochetChance(float ricochetChance) {
		this.ricochet_Chance = ricochetChance;
	}

	public float getHeavyBleedModifier() {
		return heavy_Bleed_Modifier;
	}

	public void setHeavyBleedModifier(float heavyBleedModifier) {
		this.heavy_Bleed_Modifier = heavyBleedModifier;
	}

	public float getLightBleedModifier() {
		return light_Bleed_Modifier;
	}

	public void setLightBleedModifier(float lightBleedModifier) {
		this.light_Bleed_Modifier = lightBleedModifier;
	}

	public boolean isTracer() {
		return tracer;
	}

	public void setTracer(boolean tracer) {
		this.tracer = tracer;
	}

	public String getTracerColor() {
		return tracer_Color;
	}

	public void setTracerColor(String tracerColor) {
		this.tracer_Color = tracerColor;
	}

	public int getAvg24hPrice() {
		return avg24h_Price;
	}

	public void setAvg24hPrice(int avg24hPrice) {
		this.avg24h_Price = avg24hPrice;
	}

	public int getLastLowPrice() {
		return last_Low_Price;
	}

	public void setLastLowPrice(int lastLowPrice) {
		this.last_Low_Price = lastLowPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShortName() {
		return short_Name;
	}

	public void setShortName(String shortName) {
		this.short_Name = shortName;
	}

	public String getImage512pxLink() {
		return image512px_Link;
	}

	public void setImage512pxLink(String image512pxLink) {
		this.image512px_Link = image512pxLink;
	}    
}
