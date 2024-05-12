-- Deploy: schemas/dashboard_public/tables/action_questions/columns/is_required/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions ADD COLUMN is_required bool;
COMMIT;
