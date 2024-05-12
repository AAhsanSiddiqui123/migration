-- Deploy: schemas/dashboard_public/tables/action_questions/columns/is_before/alterations/alt0000001216 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/columns/is_before/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".action_questions.is_before IS E'prompt user before beginning action items.';
COMMIT;
