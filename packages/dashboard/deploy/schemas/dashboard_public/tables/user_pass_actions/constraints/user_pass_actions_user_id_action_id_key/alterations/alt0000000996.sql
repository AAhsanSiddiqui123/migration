-- Deploy: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_user_id_action_id_key/alterations/alt0000000996 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_user_id_action_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT user_pass_actions_user_id_action_id_key ON "dashboard_public".user_pass_actions IS E'@omit';
COMMIT;
