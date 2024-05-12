-- Deploy: schemas/dashboard_public/tables/form_questions/indexes/form_questions_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table
-- requires: schemas/dashboard_public/tables/form_questions/columns/owner_id/column

BEGIN;
CREATE INDEX form_questions_owner_id_idx ON "dashboard_public".form_questions (owner_id);
COMMIT;
