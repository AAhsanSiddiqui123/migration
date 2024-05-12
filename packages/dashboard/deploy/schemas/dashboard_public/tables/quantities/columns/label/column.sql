-- Deploy: schemas/dashboard_public/tables/quantities/columns/label/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/quantities/table

BEGIN;

ALTER TABLE "dashboard_public".quantities ADD COLUMN label text;
COMMIT;
