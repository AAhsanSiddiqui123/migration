-- Deploy: schemas/dashboard_public/tables/action_items/constraints/action_items_action_id_name_key/alterations/alt0000000818 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/constraints/action_items_action_id_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT action_items_action_id_name_key ON "dashboard_public".action_items IS E'@omit';
COMMIT;
