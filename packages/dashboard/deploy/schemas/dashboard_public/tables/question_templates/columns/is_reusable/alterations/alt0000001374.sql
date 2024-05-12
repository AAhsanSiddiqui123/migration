-- Deploy: schemas/dashboard_public/tables/question_templates/columns/is_reusable/alterations/alt0000001374 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/columns/is_reusable/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".question_templates.is_reusable IS E'for recurring if value can be re-used';
COMMIT;
