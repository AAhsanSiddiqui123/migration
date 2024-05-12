-- Revert: schemas/dashboard_public/tables/locations/alterations/alt0000000621 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

