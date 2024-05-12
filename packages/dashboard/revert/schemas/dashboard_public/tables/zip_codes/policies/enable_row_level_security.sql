-- Revert: schemas/dashboard_public/tables/zip_codes/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".zip_codes
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

