-- Deploy: schemas/dashboard_public/tables/user_devices/columns/user_id/alterations/alt0000001161 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN user_id SET NOT NULL;
COMMIT;
