-- Deploy: schemas/dashboard_public/tables/question_templates/columns/id/alterations/alt0000001186 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table
-- requires: schemas/dashboard_public/tables/question_templates/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".question_templates 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
