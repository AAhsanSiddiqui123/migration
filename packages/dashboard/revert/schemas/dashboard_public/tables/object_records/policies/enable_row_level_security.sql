-- Revert: schemas/dashboard_public/tables/object_records/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

