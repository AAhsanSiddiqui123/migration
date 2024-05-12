-- Deploy: schemas/dashboard_public/tables/user_devices/columns/type/alterations/alt0000001157 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/type/column

BEGIN;

ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN type SET NOT NULL;
COMMIT;
