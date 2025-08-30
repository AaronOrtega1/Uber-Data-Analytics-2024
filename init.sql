-- Create table if it doesn't exists
CREATE TABLE IF NOT EXISTS staging_bookings (
    booking_date TEXT,
    booking_time TEXT,
    booking_id TEXT,
    booking_status TEXT,
    customer_id TEXT,
    vehicle_type TEXT,
    pickup_location TEXT,
    drop_location TEXT,
    avg_vtat TEXT,
    avg_ctat TEXT,
    cancelled_by_customer TEXT,
    cancel_reason_customer TEXT,
    cancelled_by_driver TEXT,
    cancel_reason_driver TEXT,
    incomplete_rides TEXT,
    incomplete_reason TEXT,
    booking_value TEXT,
    ride_distance TEXT,
    driver_rating TEXT,
    customer_rating TEXT,
    payment_method TEXT
);


-- Load data from CSV
COPY staging_bookings FROM '/tmp/ncr_ride_bookings.csv' DELIMITER ',' CSV HEADER;
