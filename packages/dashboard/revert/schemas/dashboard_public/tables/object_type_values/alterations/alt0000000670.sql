-- Revert: schemas/dashboard_public/tables/object_type_values/alterations/alt0000000670 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

