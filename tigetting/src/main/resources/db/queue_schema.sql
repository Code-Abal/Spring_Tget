-- Create queue_tokens table
CREATE TABLE IF NOT EXISTS `queue_tokens` (
  `token_id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `performance_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_in_queue` int DEFAULT NULL,
  `estimated_wait_time` int DEFAULT NULL,
  `issued_at` datetime(6) NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `activated_at` datetime(6) DEFAULT NULL,
  `used_at` datetime(6) DEFAULT NULL,
  `booking_expires_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `uk_token` (`token`),
  KEY `idx_user_performance` (`user_id`,`performance_id`),
  KEY `idx_performance_status_issued` (`performance_id`,`status`,`issued_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
