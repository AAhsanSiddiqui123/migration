-- Revert: schemas/dashboard_public/tables/user_characteristics/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

