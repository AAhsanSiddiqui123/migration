-- Deploy: schemas/dashboard_public/tables/actions/columns/is_private/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN is_private boolean;
COMMIT;
