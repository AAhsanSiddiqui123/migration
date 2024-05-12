-- Revert: schemas/dashboard_public/tables/actions/columns/limited_to_location/alterations/alt0000000775 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN limited_to_location DROP DEFAULT;

COMMIT;  

