-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_encrypted".user_encrypted_secrets
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

