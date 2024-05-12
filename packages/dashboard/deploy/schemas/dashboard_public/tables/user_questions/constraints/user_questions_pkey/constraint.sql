-- Deploy: schemas/dashboard_public/tables/user_questions/constraints/user_questions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_questions/table

BEGIN;

ALTER TABLE "dashboard_public".user_questions
    ADD CONSTRAINT user_questions_pkey PRIMARY KEY (id);
COMMIT;
