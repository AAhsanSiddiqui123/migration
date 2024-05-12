-- Deploy: schemas/dashboard_public/tables/action_questions/constraints/action_questions_action_id_fkey/alterations/alt0000001218 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/constraints/action_questions_action_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT action_questions_action_id_fkey ON "dashboard_public".action_questions IS E'@omit manyToMany';
COMMIT;
