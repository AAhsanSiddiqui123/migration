-- Deploy: schemas/dashboard_public/tables/user_saved_actions/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_saved_actions ADD COLUMN id uuid;
COMMIT;
