-- Deploy: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_user_id_action_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_pass_actions
    ADD CONSTRAINT user_pass_actions_user_id_action_id_key UNIQUE (user_id,action_id);
COMMIT;
