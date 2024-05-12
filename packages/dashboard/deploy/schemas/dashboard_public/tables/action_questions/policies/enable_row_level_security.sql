-- Deploy: schemas/dashboard_public/tables/action_questions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
