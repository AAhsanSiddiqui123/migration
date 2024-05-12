-- Deploy: schemas/dashboard_public/tables/role_types/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/role_types/table

BEGIN;

ALTER TABLE "dashboard_public".role_types ADD COLUMN name citext;
COMMIT;
