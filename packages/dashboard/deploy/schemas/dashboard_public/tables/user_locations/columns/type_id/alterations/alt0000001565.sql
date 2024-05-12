-- Deploy: schemas/dashboard_public/tables/user_locations/columns/type_id/alterations/alt0000001565 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/type_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_locations 
    ALTER COLUMN type_id SET NOT NULL;
COMMIT;
