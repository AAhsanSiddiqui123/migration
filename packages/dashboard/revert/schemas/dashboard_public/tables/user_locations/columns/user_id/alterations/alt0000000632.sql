-- Revert: schemas/dashboard_public/tables/user_locations/columns/user_id/alterations/alt0000000632 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

