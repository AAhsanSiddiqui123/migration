-- Deploy: schemas/dashboard_public/tables/actions/columns/minimum_group_unit_amount/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN minimum_group_unit_amount numeric;
COMMIT;
