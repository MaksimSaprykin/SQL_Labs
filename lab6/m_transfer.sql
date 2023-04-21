CREATE TABLE m_transfer (
  id INT PRIMARY KEY AUTO_INCREMENT,
  station_id INT,
  branch_id INT
);

INSERT INTO `m_transfer` (`id`, `to_station_id`, `iz_station_id`) VALUES
(1,	21,	4),
(3,	30,	6),
(4,	27,	20),
(5,	4,	21),
(6,	20,	27),
(7,	6,	30);