-- Revert: schemas/dashboard_public/tables/group_locations/columns/group_id/alterations/alt0000001135 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN group_id DROP NOT NULL;


COMMIT;  

