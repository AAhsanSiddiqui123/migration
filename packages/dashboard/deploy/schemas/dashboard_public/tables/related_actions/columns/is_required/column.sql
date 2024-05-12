-- Deploy: schemas/dashboard_public/tables/related_actions/columns/is_required/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;

ALTER TABLE "dashboard_public".related_actions ADD COLUMN is_required bool;
COMMIT;
