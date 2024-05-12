-- Revert: schemas/dashboard_public/tables/object_records/alterations/alt0000000692 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

