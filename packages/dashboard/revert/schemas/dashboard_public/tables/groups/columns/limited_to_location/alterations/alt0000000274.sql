-- Revert: schemas/dashboard_public/tables/groups/columns/limited_to_location/alterations/alt0000000274 from pg

BEGIN;


ALTER TABLE "dashboard_public".groups 
    ALTER COLUMN limited_to_location DROP DEFAULT;

COMMIT;  

