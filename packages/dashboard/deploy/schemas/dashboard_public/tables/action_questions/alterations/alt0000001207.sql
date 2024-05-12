-- Deploy: schemas/dashboard_public/tables/action_questions/alterations/alt0000001207 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
