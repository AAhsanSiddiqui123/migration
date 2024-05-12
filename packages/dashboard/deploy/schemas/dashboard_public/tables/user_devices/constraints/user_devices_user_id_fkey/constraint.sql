-- Deploy: schemas/dashboard_public/tables/user_devices/constraints/user_devices_user_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/user_devices/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_devices 
    ADD CONSTRAINT user_devices_user_id_fkey 
    FOREIGN KEY (user_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
