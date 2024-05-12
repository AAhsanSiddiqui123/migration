-- Deploy: schemas/dashboard_public/tables/user_devices/columns/push_token_requested/alterations/alt0000001160 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/push_token_requested/column

BEGIN;

ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN push_token_requested SET DEFAULT FALSE;
COMMIT;
