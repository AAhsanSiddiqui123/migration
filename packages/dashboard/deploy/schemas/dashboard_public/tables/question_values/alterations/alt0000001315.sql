-- Deploy: schemas/dashboard_public/tables/question_values/alterations/alt0000001315 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;

ALTER TABLE "dashboard_public".question_values
    DISABLE ROW LEVEL SECURITY;
COMMIT;
