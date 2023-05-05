CREATE TABLE n_news_name (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  news_categories_id INT NOT NULL,
  title VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  article_text TEXT,
  data_news DATE
  FOREIGN KEY (news_categories_id) REFERENCES n_news_categories (id)	
);


