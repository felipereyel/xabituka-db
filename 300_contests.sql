CREATE TABLE contests (
  id serial primary key,
  name varchar,
  author_id int,
  is_open boolean
);

CREATE TABLE contests_questions (
  id serial primary key,
  constest_id int,
  question varchar,
  answer boolean
);

CREATE TABLE contests_answers (
  id serial primary key,
  user_id int,
  constest_id int,
  got_it_right boolean
);

ALTER TABLE contests_questions ADD FOREIGN KEY (constest_id) REFERENCES contests (id);

ALTER TABLE contests_answers ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE contests_answers ADD FOREIGN KEY (constest_id) REFERENCES contests (id);
