-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions DROP COLUMN owner_id;
COMMIT;  

