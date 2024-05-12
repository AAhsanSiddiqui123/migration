-- Deploy: schemas/dashboard_public/tables/question_values/indexes/question_values_template_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table
-- requires: schemas/dashboard_public/tables/question_values/columns/template_id/column

BEGIN;
CREATE INDEX question_values_template_id_idx ON "dashboard_public".question_values (template_id);
COMMIT;
