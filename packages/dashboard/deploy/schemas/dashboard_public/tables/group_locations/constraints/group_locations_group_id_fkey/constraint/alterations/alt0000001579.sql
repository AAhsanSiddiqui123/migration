-- Deploy: schemas/dashboard_public/tables/group_locations/constraints/group_locations_group_id_fkey/constraint/alterations/alt0000001579 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/groups/columns/id/column
-- requires: schemas/dashboard_public/tables/group_locations/columns/group_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_locations 
    ADD CONSTRAINT group_locations_group_id_fkey 
    FOREIGN KEY (group_id)
    REFERENCES "dashboard_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
