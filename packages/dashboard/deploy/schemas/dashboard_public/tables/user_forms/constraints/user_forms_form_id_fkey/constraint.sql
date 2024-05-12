-- Deploy: schemas/dashboard_public/tables/user_forms/constraints/user_forms_form_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/forms/columns/id/column
-- requires: schemas/dashboard_public/tables/user_forms/columns/form_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_forms 
    ADD CONSTRAINT user_forms_form_id_fkey 
    FOREIGN KEY (form_id)
    REFERENCES "dashboard_public".forms (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
