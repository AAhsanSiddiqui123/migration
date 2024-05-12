-- Deploy: schemas/dashboard_public/tables/question_templates/columns/is_required/alterations/alt0000001370 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/is_required/column

BEGIN;

UPDATE "dashboard_public".question_templates SET is_required = false where is_required IS NULL;

ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN is_required SET NOT NULL;

COMMIT;
