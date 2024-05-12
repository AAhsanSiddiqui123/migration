-- Deploy: schemas/dashboard_public/tables/user_devices/indexes/user_devices_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/user_id/column

BEGIN;
CREATE INDEX user_devices_user_id_idx ON "dashboard_public".user_devices (user_id);
COMMIT;
