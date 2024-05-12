-- Deploy: schemas/dashboard_public/tables/question_types/constraints/question_types_name_key/alterations/alt0000001301 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/constraints/question_types_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT question_types_name_key ON "dashboard_public".question_types IS E'@omit';
COMMIT;
