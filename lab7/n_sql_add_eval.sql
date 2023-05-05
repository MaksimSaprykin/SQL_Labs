INSERT INTO n_news_evaluation (evaluation, date_evaluation, ip_address, news_id)
VALUES (4, NOW(), '000.000.000.000', 1)
WHERE NOT EXISTS (
  SELECT id FROM n_news_evaluation 
  WHERE ip_address = '000.000.000.000' AND news_id = 1
);


