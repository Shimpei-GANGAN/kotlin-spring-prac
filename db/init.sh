#!/bin/sh

set -e

# NOTE: テスト用のテーブル
psql -U root root << EOSQL
CREATE TABLE Users(
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(20),
  email     VARCHAR(100),
  password  CHAR(64)
);

EOSQL