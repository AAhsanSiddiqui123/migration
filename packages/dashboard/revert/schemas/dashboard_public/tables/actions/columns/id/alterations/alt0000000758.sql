-- Revert: schemas/dashboard_public/tables/actions/columns/id/alterations/alt0000000758 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

