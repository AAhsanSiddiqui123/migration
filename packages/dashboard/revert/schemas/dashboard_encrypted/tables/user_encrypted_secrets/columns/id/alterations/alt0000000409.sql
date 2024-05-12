-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/id/alterations/alt0000000409 from pg

BEGIN;


ALTER TABLE "dashboard_encrypted".user_encrypted_secrets 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

