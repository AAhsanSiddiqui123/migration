-- Deploy: schemas/dashboard_public/tables/question_templates/constraints/question_templates_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_templates/table

BEGIN;

ALTER TABLE "dashboard_public".question_templates
    ADD CONSTRAINT question_templates_pkey PRIMARY KEY (id);
COMMIT;
