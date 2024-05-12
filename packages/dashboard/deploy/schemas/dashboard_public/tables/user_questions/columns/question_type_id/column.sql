-- Deploy: schemas/dashboard_public/tables/user_questions/columns/question_type_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE "dashboard_public".user_questions ADD COLUMN question_type_id uuid;
COMMIT;
