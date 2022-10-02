package com.yassir.TarkovData.Entity.Dao;

import org.springframework.data.repository.CrudRepository;

import com.yassir.TarkovData.Models.Ammo;

public interface ITarkovDataDao extends CrudRepository<Ammo, Integer>{
	
}
