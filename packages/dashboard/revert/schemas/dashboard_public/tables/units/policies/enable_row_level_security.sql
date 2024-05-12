-- Revert: schemas/dashboard_public/tables/units/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".units
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

