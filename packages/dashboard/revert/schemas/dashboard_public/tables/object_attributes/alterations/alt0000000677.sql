-- Revert: schemas/dashboard_public/tables/object_attributes/alterations/alt0000000677 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

