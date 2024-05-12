-- Deploy: schemas/dashboard_public/tables/user_action_reactions/constraints/user_action_reactions_user_id_fkey/alterations/alt0000001029 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/constraints/user_action_reactions_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_action_reactions_user_id_fkey ON "dashboard_public".user_action_reactions IS E'@omit manyToMany';
COMMIT;
