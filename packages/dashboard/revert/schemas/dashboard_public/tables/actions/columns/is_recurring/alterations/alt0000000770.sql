-- Revert: schemas/dashboard_public/tables/actions/columns/is_recurring/alterations/alt0000000770 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_recurring DROP DEFAULT;

COMMIT;  

