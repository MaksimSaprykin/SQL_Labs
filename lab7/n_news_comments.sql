CREATE TABLE n_news_comments (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  news_id INT NOT NULL,
  text_comment TEXT,
  date_comment DATE,
  FOREIGN KEY (news_id) REFERENCES n_news_name(id)
);


