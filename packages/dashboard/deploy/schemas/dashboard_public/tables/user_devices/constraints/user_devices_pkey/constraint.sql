-- Deploy: schemas/dashboard_public/tables/user_devices/constraints/user_devices_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table

BEGIN;

ALTER TABLE "dashboard_public".user_devices
    ADD CONSTRAINT user_devices_pkey PRIMARY KEY (id);
COMMIT;
