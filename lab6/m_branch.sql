CREATE TABLE m_branch (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
  color VARCHAR(50) COLLATE utf8_unicode_ci NOT NULL
);

INSERT INTO m_branch (id, name, color) VALUES
(3, 'Олексіївська', 'зелена'),
(2, 'Салтівська', 'блакитна'),
(1, 'Холодногірсько-Заводська', 'червона');




