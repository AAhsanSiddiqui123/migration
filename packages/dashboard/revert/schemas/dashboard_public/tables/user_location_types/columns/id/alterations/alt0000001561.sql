-- Revert: schemas/dashboard_public/tables/user_location_types/columns/id/alterations/alt0000001561 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

