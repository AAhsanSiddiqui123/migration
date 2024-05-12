-- Deploy: schemas/dashboard_public/tables/user_devices/alterations/alt0000001154 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table

BEGIN;

ALTER TABLE "dashboard_public".user_devices
    DISABLE ROW LEVEL SECURITY;
COMMIT;
