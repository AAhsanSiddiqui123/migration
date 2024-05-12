-- Deploy: schemas/dashboard_public/tables/action_questions/indexes/action_questions_action_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table
-- requires: schemas/dashboard_public/tables/action_questions/columns/action_id/column

BEGIN;
CREATE INDEX action_questions_action_id_idx ON "dashboard_public".action_questions (action_id);
COMMIT;
