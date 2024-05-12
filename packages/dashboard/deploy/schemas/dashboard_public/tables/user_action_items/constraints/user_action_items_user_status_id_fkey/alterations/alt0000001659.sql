-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_status_id_fkey/alterations/alt0000001659 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_user_status_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_action_items_user_status_id_fkey ON "dashboard_public".user_action_items IS E'@omit manyToMany';
COMMIT;
