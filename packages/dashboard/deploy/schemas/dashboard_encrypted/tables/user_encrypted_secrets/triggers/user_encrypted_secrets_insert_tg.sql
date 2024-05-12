-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/triggers/user_encrypted_secrets_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/dashboard_encrypted/trigger_fns/user_encrypted_secrets_hash

BEGIN;

CREATE TRIGGER user_encrypted_secrets_insert_tg BEFORE
INSERT
    ON "dashboard_encrypted".user_encrypted_secrets FOR EACH ROW
EXECUTE PROCEDURE "dashboard_encrypted".user_encrypted_secrets_hash ();
COMMIT;
