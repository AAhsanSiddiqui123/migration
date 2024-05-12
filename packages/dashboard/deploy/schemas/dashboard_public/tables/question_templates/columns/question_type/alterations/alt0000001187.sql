-- Deploy: schemas/dashboard_public/tables/question_templates/columns/question_type/alterations/alt0000001187 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/columns/question_type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".question_templates.question_type IS E'e.g., text, number, image, location';
COMMIT;
