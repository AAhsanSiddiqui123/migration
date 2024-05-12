-- Deploy: schemas/dashboard_public/tables/user_settings/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;

ALTER TABLE "dashboard_public".user_settings ADD COLUMN id uuid;
COMMIT;
