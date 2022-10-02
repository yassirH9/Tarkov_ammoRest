package com.yassir.TarkovData.Entity.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yassir.TarkovData.Models.Ammo;
import com.yassir.TarkovData.Services.ITarkovDataService;

@CrossOrigin(origins = "*")
@RestController

public class TarkovDataController {
	@Autowired
	ITarkovDataService tarkovsercice;
	
	@GetMapping("/ammo")
	public List<Ammo> getAllAmmo() {
		return tarkovsercice.getAll();
	}

	@GetMapping("/ammo/{id}")
	public Ammo getOne(@PathVariable(value = "id") Integer id) {
		return tarkovsercice.get(id);
	}

	@PostMapping("/ammo")
	public void post(Ammo ammo) {
		tarkovsercice.post(ammo);
	}

	@PutMapping("/ammo/{id}")
	public void put(Ammo ammo, @PathVariable(value = "id") Integer id) {
		tarkovsercice.put(ammo, id);
	}

	@DeleteMapping("/ammo/{id}")
	public void delete(@PathVariable(value = "id") Integer id) {
		tarkovsercice.delete(id);
	}
}
