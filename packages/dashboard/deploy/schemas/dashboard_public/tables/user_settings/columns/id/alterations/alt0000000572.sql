-- Deploy: schemas/dashboard_public/tables/user_settings/columns/id/alterations/alt0000000572 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_settings 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
