-- Deploy: schemas/dashboard_public/tables/user_actions/columns/rejected/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_actions ADD COLUMN rejected boolean;
COMMIT;
