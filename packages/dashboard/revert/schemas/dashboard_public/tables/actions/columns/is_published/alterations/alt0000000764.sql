-- Revert: schemas/dashboard_public/tables/actions/columns/is_published/alterations/alt0000000764 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN is_published DROP DEFAULT;

COMMIT;  

