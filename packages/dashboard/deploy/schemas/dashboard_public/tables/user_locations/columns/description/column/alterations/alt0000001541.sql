-- Deploy: schemas/dashboard_public/tables/user_locations/columns/description/column/alterations/alt0000001541 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table

BEGIN;

ALTER TABLE "dashboard_public".user_locations ADD COLUMN description text;
COMMIT;