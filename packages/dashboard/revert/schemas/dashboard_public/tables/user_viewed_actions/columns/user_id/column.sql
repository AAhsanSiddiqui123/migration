-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/user_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions DROP COLUMN user_id;
COMMIT;  

