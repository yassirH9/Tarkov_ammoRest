package com.yassir.TarkovData.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yassir.TarkovData.Entity.Dao.ITarkovDataDao;
import com.yassir.TarkovData.Models.Ammo;

@Service
public class TarkovDataService implements ITarkovDataService{

	@Autowired
	private ITarkovDataDao tarkovdao;
	@Override
	public Ammo get(Integer id) {
		return tarkovdao.findById(id).get();
	}

	@Override
	public List<Ammo> getAll() {
		return (List<Ammo>) tarkovdao.findAll();
	}

	@Override
	public void post(Ammo ammo) {
		tarkovdao.save(ammo);
	}

	@Override
	public void put(Ammo ammo, Integer id) {
		tarkovdao.findById(id).ifPresent((x)->{
			ammo.setId(id);
			tarkovdao.save(ammo);
		});
	}
	
	@Override
	public void delete(Integer id) {
		tarkovdao.deleteById(id);
	}
}
