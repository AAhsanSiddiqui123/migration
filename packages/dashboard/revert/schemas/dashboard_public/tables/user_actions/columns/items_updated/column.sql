-- Revert: schemas/dashboard_public/tables/user_actions/columns/items_updated/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN items_updated;
COMMIT;  

