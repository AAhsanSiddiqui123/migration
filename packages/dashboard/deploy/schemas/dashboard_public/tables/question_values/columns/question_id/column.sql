-- Deploy: schemas/dashboard_public/tables/question_values/columns/question_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;

ALTER TABLE "dashboard_public".question_values ADD COLUMN question_id uuid;
COMMIT;
