-- Deploy: schemas/dashboard_public/tables/user_devices/constraints/user_devices_user_id_fkey/alterations/alt0000001163 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/constraints/user_devices_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_devices_user_id_fkey ON "dashboard_public".user_devices IS E'@omit manyToMany';
COMMIT;
