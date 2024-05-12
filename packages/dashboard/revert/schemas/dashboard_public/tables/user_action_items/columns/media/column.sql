-- Revert: schemas/dashboard_public/tables/user_action_items/columns/media/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN media;
COMMIT;  

