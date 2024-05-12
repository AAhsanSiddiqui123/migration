-- Revert: schemas/dashboard_public/tables/locations/alterations/alt0000001504 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

