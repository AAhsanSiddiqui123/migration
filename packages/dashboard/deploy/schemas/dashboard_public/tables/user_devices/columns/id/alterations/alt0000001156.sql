-- Deploy: schemas/dashboard_public/tables/user_devices/columns/id/alterations/alt0000001156 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_devices 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
