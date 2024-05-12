-- Revert: schemas/dashboard_public/tables/user_action_items/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN id;
COMMIT;  

