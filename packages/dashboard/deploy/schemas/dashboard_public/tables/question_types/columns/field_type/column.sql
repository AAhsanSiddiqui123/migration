-- Deploy: schemas/dashboard_public/tables/question_types/columns/field_type/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;

ALTER TABLE "dashboard_public".question_types ADD COLUMN field_type text;
COMMIT;
