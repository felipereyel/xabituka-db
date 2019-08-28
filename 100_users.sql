CREATE TYPE user_type_enum AS ENUM (
  'professor',
  'student',
  'admin'
);

CREATE TABLE users (
  id serial PRIMARY KEY,
  nickname varchar not null,
  user_type user_type_enum not null,
  password text not null,
  created_at timestamp default now()
);
