-- Deploy: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_action_id_fkey/alterations/alt0000000995 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_action_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_pass_actions_action_id_fkey ON "dashboard_public".user_pass_actions IS E'@omit manyToMany';
COMMIT;
