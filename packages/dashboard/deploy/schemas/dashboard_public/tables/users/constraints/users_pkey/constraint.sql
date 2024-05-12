-- Deploy: schemas/dashboard_public/tables/users/constraints/users_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE "dashboard_public".users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
COMMIT;
