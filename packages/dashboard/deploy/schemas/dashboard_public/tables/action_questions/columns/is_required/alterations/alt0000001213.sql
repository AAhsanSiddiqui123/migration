-- Deploy: schemas/dashboard_public/tables/action_questions/columns/is_required/alterations/alt0000001213 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/columns/is_required/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_questions.is_required IS E'required to progress';
COMMIT;
