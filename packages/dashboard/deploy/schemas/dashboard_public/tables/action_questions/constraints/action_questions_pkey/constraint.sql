-- Deploy: schemas/dashboard_public/tables/action_questions/constraints/action_questions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions
    ADD CONSTRAINT action_questions_pkey PRIMARY KEY (id);
COMMIT;
