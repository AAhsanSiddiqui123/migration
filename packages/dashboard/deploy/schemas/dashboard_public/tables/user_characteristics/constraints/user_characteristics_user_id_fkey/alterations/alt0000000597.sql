-- Deploy: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_user_id_fkey/alterations/alt0000000597 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/constraints/user_characteristics_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_characteristics_user_id_fkey ON "dashboard_public".user_characteristics IS E'@omit manyToMany';
COMMIT;
