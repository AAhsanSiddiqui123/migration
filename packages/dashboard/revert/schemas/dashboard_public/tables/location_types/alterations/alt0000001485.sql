-- Revert: schemas/dashboard_public/tables/location_types/alterations/alt0000001485 from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

