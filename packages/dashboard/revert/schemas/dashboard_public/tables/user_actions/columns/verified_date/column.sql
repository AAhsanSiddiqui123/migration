-- Revert: schemas/dashboard_public/tables/user_actions/columns/verified_date/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN verified_date;
COMMIT;  

