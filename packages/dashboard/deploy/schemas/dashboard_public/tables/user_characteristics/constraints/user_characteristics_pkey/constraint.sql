-- Deploy: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics
    ADD CONSTRAINT user_characteristics_pkey PRIMARY KEY (id);
COMMIT;
