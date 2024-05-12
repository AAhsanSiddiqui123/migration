-- Deploy: schemas/dashboard_public/tables/users/constraints/users_username_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE "dashboard_public".users
    ADD CONSTRAINT users_username_key UNIQUE (username);
COMMIT;
