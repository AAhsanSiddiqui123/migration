-- Deploy: schemas/dashboard_public/tables/user_questions/alterations/alt0000001189 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE "dashboard_public".user_questions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
