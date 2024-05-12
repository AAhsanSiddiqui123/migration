-- Deploy: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_owner_id_fkey/alterations/alt0000001442 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_value_language_variations/constraints/question_value_language_variations_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT question_value_language_variations_owner_id_fkey ON "dashboard_public".question_value_language_variations IS E'@omit manyToMany';
COMMIT;
