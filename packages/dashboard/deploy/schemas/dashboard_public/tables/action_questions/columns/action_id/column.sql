-- Deploy: schemas/dashboard_public/tables/action_questions/columns/action_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_questions/table

BEGIN;

ALTER TABLE "dashboard_public".action_questions ADD COLUMN action_id uuid;
COMMIT;
