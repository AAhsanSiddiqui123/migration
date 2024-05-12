-- Revert: schemas/dashboard_public/tables/user_action_items/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_action_items;
COMMIT;  

