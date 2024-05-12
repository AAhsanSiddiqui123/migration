-- Revert: schemas/dashboard_public/tables/addresses/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

