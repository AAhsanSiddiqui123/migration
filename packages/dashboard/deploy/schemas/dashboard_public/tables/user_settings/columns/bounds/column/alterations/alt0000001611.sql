-- Deploy: schemas/dashboard_public/tables/user_settings/columns/bounds/column/alterations/alt0000001611 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;

ALTER TABLE "dashboard_public".user_settings ADD COLUMN bounds geometry(geometrycollection, 4326);
COMMIT;
