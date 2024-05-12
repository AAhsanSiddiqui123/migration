-- Revert: schemas/dashboard_public/tables/actions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN owner_id;
COMMIT;  

