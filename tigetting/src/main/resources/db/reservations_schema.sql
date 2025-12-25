CREATE TABLE IF NOT EXISTS reservations (
    reservation_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    reservation_group_id BIGINT NOT NULL,
    userid INT NOT NULL,
    mt20id VARCHAR(100) NOT NULL,
    seat_section VARCHAR(50),
    seat_row VARCHAR(50),
    seat_number VARCHAR(50),
    price INT,
    status VARCHAR(20),
    reserved_at DATETIME,
    
    CONSTRAINT fk_reservation_user FOREIGN KEY (userid) REFERENCES users(userid),
    CONSTRAINT fk_reservation_performance FOREIGN KEY (mt20id) REFERENCES performances(mt20id)
);
