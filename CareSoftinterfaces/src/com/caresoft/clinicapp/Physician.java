package com.caresoft.clinicapp;

public class Physician extends User implements HIPAACompliantUser {

	public Physician(Integer id) {
		super(id);
	}

	@Override
	public boolean assignPin(int pin) {
        if (String.valueOf(pin).length() == 4) {
            this.pin = pin;
            return true;
        }
        return false;
	}

	@Override
    public boolean accessAuthorized(Integer id) {
        return this.id.equals(id);
    }

}
