-- Deploy: schemas/dashboard_public/tables/user_questions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE "dashboard_public".user_questions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
