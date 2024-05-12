-- Revert: schemas/dashboard_public/tables/user_action_items/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN owner_id;
COMMIT;  

