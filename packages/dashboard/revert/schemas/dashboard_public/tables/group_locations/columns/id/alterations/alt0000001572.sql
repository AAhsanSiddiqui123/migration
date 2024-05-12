-- Revert: schemas/dashboard_public/tables/group_locations/columns/id/alterations/alt0000001572 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

