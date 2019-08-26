CREATE TABLE learn_questions (
  id serial primary key,
  question varchar,
  answer boolean,
  difficulty int
);

CREATE TABLE learn_answers (
  id serial primary key,
  user_id int,
  learn_questions_id int,
  got_it_right boolean
);

CREATE TABLE learn_scoreboard (
  id serial primary key,
  user_id int,
  score int
);

ALTER TABLE learn_answers ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE learn_answers ADD FOREIGN KEY (learn_questions_id) REFERENCES learn_questions (id);

ALTER TABLE learn_scoreboard ADD FOREIGN KEY (user_id) REFERENCES users (id);
