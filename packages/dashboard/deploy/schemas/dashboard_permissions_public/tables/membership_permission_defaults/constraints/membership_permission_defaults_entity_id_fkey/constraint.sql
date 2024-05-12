-- Deploy: schemas/dashboard_permissions_public/tables/membership_permission_defaults/constraints/membership_permission_defaults_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_permissions_public".membership_permission_defaults 
    ADD CONSTRAINT membership_permission_defaults_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
