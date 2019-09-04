CREATE TABLE contests (
  id serial primary key,
  name varchar not null,
  pin text not null,
  author_id int not null,
  private boolean not null
);

CREATE TABLE contests_questions (
  id serial primary key,
  constest_id int not null,
  question varchar not null,
  answer boolean not null
);

CREATE TABLE contests_answers (
  id serial primary key,
  user_id int not null,
  constest_id int not null,
  got_it_right boolean not null
);

ALTER TABLE contests_questions ADD FOREIGN KEY (constest_id) REFERENCES contests (id);

ALTER TABLE contests_answers ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE contests_answers ADD FOREIGN KEY (constest_id) REFERENCES contests (id);
