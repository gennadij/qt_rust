use interface::*;
use chrono::{Local, Timelike};
use std::thread;
use std::time::Duration;

pub struct Time {
    emit: TimeEmitter
}


fn emit_time(mut emit: TimeEmitter) {
    thread::spawn(move || {
        loop {
            thread::sleep(Duration::from_secs(1));
            emit.second_changed();
            if Local::now().second() == 0 {
                emit.minute_changed();
                if Local::now().minute() == 0 {
                    emit.hour_changed();
                }
            }
        }
    });
}

impl TimeTrait for Time {
    fn new(mut emit: TimeEmitter) -> Self {
        emit_time(emit.clone());
        Time {
            emit
        }
    }
    fn emit(&mut self) -> &mut TimeEmitter {
        &mut self.emit
    }
    fn hour(&self) -> u32 {
        Local::now().hour()
    }
    fn minute(&self) -> u32 {
        Local::now().minute()
    }
    fn second(&self) -> u32 {
        Local::now().second()
    }
}

