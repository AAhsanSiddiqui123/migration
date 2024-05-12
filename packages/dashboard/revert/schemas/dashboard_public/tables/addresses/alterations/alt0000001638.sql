-- Revert: schemas/dashboard_public/tables/addresses/alterations/alt0000001638 from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

