-- Deploy: schemas/dashboard_public/tables/user_locations/columns/user_id/alterations/alt0000001538 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_locations 
    ALTER COLUMN user_id SET NOT NULL;
COMMIT;
