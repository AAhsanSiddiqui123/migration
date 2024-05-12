-- Deploy: schemas/dashboard_public/tables/user_settings/columns/bounds/alterations/alt0000001610 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/bounds/column

BEGIN;

ALTER TABLE "dashboard_public".user_settings 
    DROP COLUMN bounds;
COMMIT;
