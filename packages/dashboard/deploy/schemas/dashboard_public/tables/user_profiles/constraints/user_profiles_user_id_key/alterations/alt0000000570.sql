-- Deploy: schemas/dashboard_public/tables/user_profiles/constraints/user_profiles_user_id_key/alterations/alt0000000570 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/constraints/user_profiles_user_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT user_profiles_user_id_key ON "dashboard_public".user_profiles IS E'@omit';
COMMIT;
