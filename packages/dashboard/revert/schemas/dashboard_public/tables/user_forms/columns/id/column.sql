-- Revert: schemas/dashboard_public/tables/user_forms/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms DROP COLUMN id;
COMMIT;  

