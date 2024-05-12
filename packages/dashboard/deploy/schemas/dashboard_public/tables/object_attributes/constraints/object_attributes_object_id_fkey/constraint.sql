-- Deploy: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_object_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/objects/columns/id/column
-- requires: schemas/dashboard_public/tables/object_attributes/columns/object_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_attributes 
    ADD CONSTRAINT object_attributes_object_id_fkey 
    FOREIGN KEY (object_id)
    REFERENCES "dashboard_public".objects (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
