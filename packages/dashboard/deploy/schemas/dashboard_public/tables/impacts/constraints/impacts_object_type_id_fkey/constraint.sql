-- Deploy: schemas/dashboard_public/tables/impacts/constraints/impacts_object_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/object_types/columns/id/column
-- requires: schemas/dashboard_public/tables/impacts/columns/object_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".impacts 
    ADD CONSTRAINT impacts_object_type_id_fkey 
    FOREIGN KEY (object_type_id)
    REFERENCES "dashboard_public".object_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
