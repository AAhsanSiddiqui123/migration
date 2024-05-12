-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

