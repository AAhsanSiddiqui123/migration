-- Deploy: schemas/dashboard_public/tables/question_values/constraints/question_values_owner_id_fkey/alterations/alt0000001318 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_values/constraints/question_values_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT question_values_owner_id_fkey ON "dashboard_public".question_values IS E'@omit manyToMany';
COMMIT;
