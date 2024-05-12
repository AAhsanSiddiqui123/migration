-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/name/alterations/alt0000000412 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/name/column

BEGIN;

ALTER TABLE "dashboard_encrypted".user_encrypted_secrets 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
