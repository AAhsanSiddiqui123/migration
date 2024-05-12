-- Deploy: schemas/dashboard_public/tables/question_types/columns/ref_num/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;

ALTER TABLE "dashboard_public".question_types ADD COLUMN ref_num serial;
COMMIT;
