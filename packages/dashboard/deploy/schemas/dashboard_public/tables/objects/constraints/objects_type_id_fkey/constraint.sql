-- Deploy: schemas/dashboard_public/tables/objects/constraints/objects_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/object_types/columns/id/column
-- requires: schemas/dashboard_public/tables/objects/columns/type_id/column

BEGIN;

ALTER TABLE "dashboard_public".objects 
    ADD CONSTRAINT objects_type_id_fkey 
    FOREIGN KEY (type_id)
    REFERENCES "dashboard_public".object_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
