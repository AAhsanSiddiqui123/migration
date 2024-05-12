-- Deploy: schemas/dashboard_public/tables/forms/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;

ALTER TABLE "dashboard_public".forms ADD COLUMN owner_id uuid;
COMMIT;
