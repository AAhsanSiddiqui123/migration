-- Deploy: schemas/dashboard_public/tables/actions/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table

BEGIN;

ALTER TABLE "dashboard_public".actions ADD COLUMN owner_id uuid;
COMMIT;
