-- Revert: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/name/alterations/alt0000000412 from pg

BEGIN;


ALTER TABLE "dashboard_encrypted".user_encrypted_secrets 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

