-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/alterations/alt0000000408 from pg

BEGIN;


ALTER TABLE "dashboard_encrypted".user_encrypted_secrets
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

