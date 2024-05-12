-- Deploy: schemas/dashboard_public/tables/form_questions/constraints/form_questions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_questions/table

BEGIN;

ALTER TABLE "dashboard_public".form_questions
    ADD CONSTRAINT form_questions_pkey PRIMARY KEY (id);
COMMIT;
