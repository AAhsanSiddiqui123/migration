-- Revert: schemas/dashboard_public/tables/user_action_items/columns/bbox/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN bbox;
COMMIT;  

