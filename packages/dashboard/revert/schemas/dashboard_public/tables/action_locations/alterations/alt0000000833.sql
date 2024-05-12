-- Revert: schemas/dashboard_public/tables/action_locations/alterations/alt0000000833 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

