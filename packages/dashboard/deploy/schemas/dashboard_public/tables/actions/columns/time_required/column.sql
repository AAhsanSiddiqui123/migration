-- Deploy: schemas/dashboard_public/tables/actions/columns/time_required/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN time_required interval;
COMMIT;
