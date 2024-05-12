-- Deploy: schemas/dashboard_public/tables/form_questions/indexes/form_questions_form_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/form_id/column

BEGIN;
CREATE INDEX form_questions_form_id_idx ON "dashboard_public".form_questions (form_id);
COMMIT;
