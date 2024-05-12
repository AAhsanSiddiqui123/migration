-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions DROP COLUMN id;
COMMIT;  

