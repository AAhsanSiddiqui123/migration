-- Deploy: schemas/dashboard_public/tables/groups/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table

BEGIN;

ALTER TABLE "dashboard_public".groups ADD COLUMN owner_id uuid;
COMMIT;
