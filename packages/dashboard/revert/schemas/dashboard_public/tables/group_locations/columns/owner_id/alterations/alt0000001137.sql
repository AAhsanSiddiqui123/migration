-- Revert: schemas/dashboard_public/tables/group_locations/columns/owner_id/alterations/alt0000001137 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

