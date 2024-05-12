-- Revert: schemas/dashboard_public/tables/impacts_conditions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

