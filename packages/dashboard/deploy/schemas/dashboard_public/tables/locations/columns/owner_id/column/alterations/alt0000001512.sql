-- Deploy: schemas/dashboard_public/tables/locations/columns/owner_id/column/alterations/alt0000001512 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table

BEGIN;

ALTER TABLE "dashboard_public".locations ADD COLUMN owner_id uuid;
COMMIT;
