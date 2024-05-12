-- Deploy: schemas/dashboard_public/tables/question_types/alterations/alt0000001294 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;

ALTER TABLE "dashboard_public".question_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
