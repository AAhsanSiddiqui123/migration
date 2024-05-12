-- Deploy: schemas/dashboard_public/tables/user_viewed_actions/constraints/user_viewed_actions_action_id_fkey/alterations/alt0000001019 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_viewed_actions/constraints/user_viewed_actions_action_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_viewed_actions_action_id_fkey ON "dashboard_public".user_viewed_actions IS E'@omit manyToMany';
COMMIT;
