CREATE TYPE "user_type" AS ENUM (
  'professor',
  'student',
  'admin'
);

CREATE TABLE "users" (
  "id" int,
  "nickname" varchar,
  "user_type" int,
  "created_at" timestamp
);