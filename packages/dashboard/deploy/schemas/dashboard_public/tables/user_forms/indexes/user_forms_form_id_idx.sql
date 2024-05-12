-- Deploy: schemas/dashboard_public/tables/user_forms/indexes/user_forms_form_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table
-- requires: schemas/dashboard_public/tables/user_forms/columns/form_id/column

BEGIN;
CREATE INDEX user_forms_form_id_idx ON "dashboard_public".user_forms (form_id);
COMMIT;
