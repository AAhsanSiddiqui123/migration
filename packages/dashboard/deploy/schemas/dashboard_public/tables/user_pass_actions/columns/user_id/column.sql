-- Deploy: schemas/dashboard_public/tables/user_pass_actions/columns/user_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_pass_actions ADD COLUMN user_id uuid;
COMMIT;
