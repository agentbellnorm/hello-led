extern crate rust_gpiozero;

use std::time::Duration;
use rust_gpiozero::*;

fn main() {
    // Tell the Pi which GPIO pin you are using
    let mut led = LED::new(17);

    // Create a button which is attached to Pin 22
    let mut button = Button::new(22);

    loop{
        button.wait_for_press(None);
        println!("Press!");
        led.toggle();
        std::thread::sleep(Duration::from_secs(1));

    }
}
