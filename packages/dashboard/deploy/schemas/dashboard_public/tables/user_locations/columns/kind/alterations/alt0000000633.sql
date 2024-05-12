-- Deploy: schemas/dashboard_public/tables/user_locations/columns/kind/alterations/alt0000000633 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/columns/kind/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_locations.kind IS E'e.g., home, work, exercise, other';
COMMIT;
