-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/constraints/membership_defaults_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".membership_defaults 
    ADD CONSTRAINT membership_defaults_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
