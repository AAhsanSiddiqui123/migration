-- Revert: schemas/dashboard_public/tables/objects/alterations/alt0000000651 from pg

BEGIN;


ALTER TABLE "dashboard_public".objects
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

