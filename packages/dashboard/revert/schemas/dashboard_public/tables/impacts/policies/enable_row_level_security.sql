-- Revert: schemas/dashboard_public/tables/impacts/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

