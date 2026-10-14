CREATE DATABASE IF NOT EXISTS portfolio_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE portfolio_db;

CREATE TABLE IF NOT EXISTS projects (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  title         VARCHAR(150) NOT NULL,
  description   TEXT NOT NULL,
  tech_stack    VARCHAR(300) NOT NULL,
  period        VARCHAR(60),
  github_url    VARCHAR(300),
  live_url      VARCHAR(300),
  featured      BOOLEAN NOT NULL DEFAULT FALSE,
  display_order INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS skills (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(80) NOT NULL,
  category      VARCHAR(60) NOT NULL,
  display_order INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS experience (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  type          VARCHAR(20) NOT NULL,           -- WORK or EDUCATION
  title         VARCHAR(150) NOT NULL,
  organization  VARCHAR(150) NOT NULL,
  period        VARCHAR(60) NOT NULL,
  details       TEXT,                           -- one bullet per line
  display_order INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS contact_messages (
  id         BIGINT AUTO_INCREMENT PRIMARY KEY,
  name       VARCHAR(100) NOT NULL,
  email      VARCHAR(150) NOT NULL,
  message    TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
