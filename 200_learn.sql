CREATE TABLE subjects(
  id serial primary key,
  name text not null
);

CREATE TABLE topics (
  id serial primary key,
  subject_id int not null,
  name text not null
);

CREATE TABLE learn_questions (
  id serial primary key,
  question varchar not null,
  answer boolean not null,
  difficulty int not null check(difficulty < 6),
  topic_id int not null
);

CREATE TABLE learn_answers (
  id serial primary key,
  user_id int not null,
  learn_questions_id int not null,
  got_it_right boolean not null
);

CREATE TABLE learn_scoreboard (
  id serial primary key,
  user_id int not null,
  topic_id int not null,
  total_answers int not null,
  total_score int not null
);

ALTER TABLE topics ADD FOREIGN KEY (subject_id) REFERENCES subjects (id);

ALTER TABLE learn_questions ADD FOREIGN KEY (topic_id) REFERENCES topics (id);

ALTER TABLE learn_answers ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE learn_answers ADD FOREIGN KEY (learn_questions_id) REFERENCES learn_questions (id);

ALTER TABLE learn_scoreboard ADD FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE learn_scoreboard ADD FOREIGN KEY (topic_id) REFERENCES topics (id);
