CREATE TYPE user_type_enum AS ENUM (
  'professor',
  'student',
  'admin'
);

CREATE TABLE users (
  id serial PRIMARY KEY,
  nickname varchar,
  user_type user_type_enum,
  created_at timestamp default now()
);
