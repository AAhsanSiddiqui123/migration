-- Deploy: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_user_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics
    ADD CONSTRAINT user_characteristics_user_id_key UNIQUE (user_id);
COMMIT;
