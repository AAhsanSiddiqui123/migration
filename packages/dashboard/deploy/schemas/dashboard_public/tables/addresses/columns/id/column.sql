-- Deploy: schemas/dashboard_public/tables/addresses/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses ADD COLUMN id uuid;
COMMIT;
