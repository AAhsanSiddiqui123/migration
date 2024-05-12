-- Deploy: schemas/dashboard_public/tables/user_profiles/constraints/user_profiles_user_id_fkey/alterations/alt0000000569 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/constraints/user_profiles_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_profiles_user_id_fkey ON "dashboard_public".user_profiles IS E'@omit manyToMany';
COMMIT;
