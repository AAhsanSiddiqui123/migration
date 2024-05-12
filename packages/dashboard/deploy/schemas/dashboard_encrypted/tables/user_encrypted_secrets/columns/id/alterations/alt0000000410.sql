-- Deploy: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/id/alterations/alt0000000410 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_encrypted/schema
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/dashboard_encrypted/tables/user_encrypted_secrets/columns/id/column

BEGIN;

ALTER TABLE "dashboard_encrypted".user_encrypted_secrets 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
