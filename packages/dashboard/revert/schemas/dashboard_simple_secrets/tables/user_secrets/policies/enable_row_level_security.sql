-- Revert: schemas/dashboard_simple_secrets/tables/user_secrets/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_simple_secrets".user_secrets
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

