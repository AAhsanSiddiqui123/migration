-- Revert: schemas/dashboard_encrypted/trigger_fns/user_encrypted_secrets_hash from pg

BEGIN;


DROP FUNCTION "dashboard_encrypted".user_encrypted_secrets_hash;
COMMIT;  

