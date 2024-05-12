-- Deploy: schemas/dashboard_public/tables/question_values/constraints/question_values_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/table

BEGIN;

ALTER TABLE "dashboard_public".question_values
    ADD CONSTRAINT question_values_pkey PRIMARY KEY (id);
COMMIT;
