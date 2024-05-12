-- Revert: schemas/dashboard_public/tables/user_forms/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms DROP COLUMN owner_id;
COMMIT;  

