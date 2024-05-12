-- Deploy: schemas/dashboard_public/tables/action_items/constraints/action_items_action_id_fkey/alterations/alt0000000817 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/constraints/action_items_action_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_items_action_id_fkey ON "dashboard_public".action_items IS E'@omit manyToMany';
COMMIT;
