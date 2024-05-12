-- Deploy: schemas/dashboard_public/tables/actions/columns/once_per_object/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN once_per_object bool;
COMMIT;
