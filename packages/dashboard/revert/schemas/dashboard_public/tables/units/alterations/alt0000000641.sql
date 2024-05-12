-- Revert: schemas/dashboard_public/tables/units/alterations/alt0000000641 from pg

BEGIN;


ALTER TABLE "dashboard_public".units
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

