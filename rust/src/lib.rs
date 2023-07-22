use std::os::raw::c_int;
use std::os::raw::c_float;
use std::slice::from_raw_parts_mut;
use fastblur::gaussian_blur;

#[no_mangle]
fn hello() {
    println!("Hello, world!");
}

#[no_mangle]
fn sum(a: c_int, b: c_int) -> c_int {
    return a + b;
}

#[no_mangle]
fn sum_all(vals: *mut c_float, len: c_int) -> c_float {
    let new_slice = unsafe { from_raw_parts_mut(vals, len as usize) };

    // return new_slice.iter().sum::<c_float>();
    
    let mut sum: c_float = 0.0;
    for i in 0..len {
        sum += new_slice[i as usize];
    }
    return sum;
}

#[no_mangle]
fn blur(data, width: c_int, height: c_int, n: c_int) {
    return gaussian_blur(&mut data, width, height, n);
}
