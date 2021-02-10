-- the bd used on this app will be PostgreSQL. To install the latest version:
-- sudo apt-get -y install postgresql https://www.postgresql.org/download/linux/ubuntu/
-- Install postbird to see the tables w/ more facility. In case u r using ubuntu dist, search through ubuntu software.
-- Connection: username: postgres | password: postgres. In case it doesn't work, try this command:
ALTER USER postgres WITH PASSWORD 'postgres';

CREATE DATABASE easyjob;

CREATE TABLE "admin" (
    "id" SERIAL PRIMARY KEY,
    "user_id" int
)

CREATE TABLE "company" (
    "id" SERIAL PRIMARY KEY,
    "user_id" int
);

CREATE TABLE "candidate" (
    "id" SERIAL PRIMARY KEY,
    "user_id" int
)

CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY,
    "name" text NOT NULL
    "email" text UNIQUE NOT NULL,
    "password" text,
    "cpf_cnpj" text UNIQUE NOT NULL,
    "cep" text,
    "address" text,
    "reset_token" text,
    "reset_token_expires" text,
)

ALTER TABLE "admin" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE;
ALTER TABLE "" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE;