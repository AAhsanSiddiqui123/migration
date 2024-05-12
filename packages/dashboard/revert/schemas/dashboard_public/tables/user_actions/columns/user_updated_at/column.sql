-- Revert: schemas/dashboard_public/tables/user_actions/columns/user_updated_at/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN user_updated_at;
COMMIT;  

