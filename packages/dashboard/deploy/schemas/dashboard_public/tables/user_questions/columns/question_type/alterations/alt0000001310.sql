-- Deploy: schemas/dashboard_public/tables/user_questions/columns/question_type/alterations/alt0000001310 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table
-- requires: schemas/dashboard_public/tables/user_questions/columns/question_type/column

BEGIN;

ALTER TABLE "dashboard_public".user_questions 
    DROP COLUMN question_type;
COMMIT;
