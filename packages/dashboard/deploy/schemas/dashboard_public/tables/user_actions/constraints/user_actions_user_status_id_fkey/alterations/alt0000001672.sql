-- Deploy: schemas/dashboard_public/tables/user_actions/constraints/user_actions_user_status_id_fkey/alterations/alt0000001672 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/constraints/user_actions_user_status_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_actions_user_status_id_fkey ON "dashboard_public".user_actions IS E'@omit manyToMany';
COMMIT;
