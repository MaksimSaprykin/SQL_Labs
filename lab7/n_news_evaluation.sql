CREATE TABLE n_news_evaluation (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  news_id INT NOT NULL,
  evaluation INT,
  date_evaluation DATE,
  ip_address VARCHAR(20),
  FOREIGN KEY (news_id) REFERENCES n_news_name(id),
  CONSTRAINT unique_news_ip UNIQUE (news_id, ip_address)
);


