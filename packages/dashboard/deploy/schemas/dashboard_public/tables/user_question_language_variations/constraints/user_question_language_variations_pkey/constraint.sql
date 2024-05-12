-- Deploy: schemas/dashboard_public/tables/user_question_language_variations/constraints/user_question_language_variations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_question_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".user_question_language_variations
    ADD CONSTRAINT user_question_language_variations_pkey PRIMARY KEY (id);
COMMIT;
