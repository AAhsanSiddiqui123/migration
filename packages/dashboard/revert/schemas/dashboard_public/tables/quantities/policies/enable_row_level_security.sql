-- Revert: schemas/dashboard_public/tables/quantities/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

