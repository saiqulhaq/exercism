// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let mut current_speed: u8 = 1;
    let mut result: f64 = 0.0;
    let adder: f64 = 221.0;

    if (speed == 0) {
        return 0.0;
    }
    loop {
        result += adder;

        if (current_speed == speed) {
            break;
        }

        current_speed += 1;
    }
    if (speed <= 4) {
        return result
    } else if (speed >= 5 && speed <= 8) {
        return result * 90.0/100.0;
    } else {
        return result * 77.0/100.0;
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    if (speed == 0) {
        return 0;
    }
   return production_rate_per_hour(speed) as u32 / 60;
}
