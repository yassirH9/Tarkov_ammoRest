package com.yassir.TarkovData.Services;

import java.util.List;

import com.yassir.TarkovData.Models.Ammo;

public interface ITarkovDataService {
	public Ammo get(Integer id);
	public List<Ammo> getAll();
	public void post(Ammo ammo);
	public void put (Ammo ammo, Integer id);
	public void delete (Integer id);
}
