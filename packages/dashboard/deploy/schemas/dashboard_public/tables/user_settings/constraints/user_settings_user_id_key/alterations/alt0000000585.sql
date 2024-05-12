-- Deploy: schemas/dashboard_public/tables/user_settings/constraints/user_settings_user_id_key/alterations/alt0000000585 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/constraints/user_settings_user_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT user_settings_user_id_key ON "dashboard_public".user_settings IS E'@omit';
COMMIT;
