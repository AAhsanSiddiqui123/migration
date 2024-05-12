-- Deploy: schemas/dashboard_public/tables/user_settings/alterations/alt0000000571 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;

ALTER TABLE "dashboard_public".user_settings
    DISABLE ROW LEVEL SECURITY;
COMMIT;
