-- Revert: schemas/dashboard_public/tables/group_locations/alterations/alt0000001132 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

