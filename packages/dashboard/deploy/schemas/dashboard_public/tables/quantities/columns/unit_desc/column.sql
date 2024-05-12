-- Deploy: schemas/dashboard_public/tables/quantities/columns/unit_desc/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities ADD COLUMN unit_desc text;
COMMIT;
