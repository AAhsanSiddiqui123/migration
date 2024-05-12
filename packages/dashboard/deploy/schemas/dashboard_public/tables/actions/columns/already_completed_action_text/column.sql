-- Deploy: schemas/dashboard_public/tables/actions/columns/already_completed_action_text/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN already_completed_action_text text;
COMMIT;
