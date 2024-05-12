-- Deploy: schemas/dashboard_public/tables/forms/constraints/forms_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/form_types/table
-- requires: schemas/dashboard_public/tables/form_types/columns/id/column
-- requires: schemas/dashboard_public/tables/forms/columns/type_id/column

BEGIN;

ALTER TABLE "dashboard_public".forms 
    ADD CONSTRAINT forms_type_id_fkey 
    FOREIGN KEY (type_id)
    REFERENCES "dashboard_public".form_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
