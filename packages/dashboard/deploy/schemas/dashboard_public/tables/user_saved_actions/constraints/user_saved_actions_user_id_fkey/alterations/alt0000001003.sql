-- Deploy: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_user_id_fkey/alterations/alt0000001003 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_saved_actions_user_id_fkey ON "dashboard_public".user_saved_actions IS E'@omit manyToMany';
COMMIT;
