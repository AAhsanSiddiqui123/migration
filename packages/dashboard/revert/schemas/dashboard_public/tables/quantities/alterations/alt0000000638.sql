-- Revert: schemas/dashboard_public/tables/quantities/alterations/alt0000000638 from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

