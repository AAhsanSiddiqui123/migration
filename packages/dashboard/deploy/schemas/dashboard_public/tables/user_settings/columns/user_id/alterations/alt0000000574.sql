-- Deploy: schemas/dashboard_public/tables/user_settings/columns/user_id/alterations/alt0000000574 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_settings 
    ALTER COLUMN user_id SET NOT NULL;
COMMIT;
