-- Deploy: schemas/dashboard_public/tables/question_types/constraints/question_types_name_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table

BEGIN;

ALTER TABLE "dashboard_public".question_types
    ADD CONSTRAINT question_types_name_key UNIQUE (name);
COMMIT;
