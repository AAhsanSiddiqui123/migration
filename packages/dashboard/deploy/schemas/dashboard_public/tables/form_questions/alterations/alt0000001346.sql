-- Deploy: schemas/dashboard_public/tables/form_questions/alterations/alt0000001346 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;

ALTER TABLE "dashboard_public".form_questions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
