-- Revert: schemas/dashboard_public/tables/user_locations/columns/type_id/alterations/alt0000001565 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations 
    ALTER COLUMN type_id DROP NOT NULL;


COMMIT;  

