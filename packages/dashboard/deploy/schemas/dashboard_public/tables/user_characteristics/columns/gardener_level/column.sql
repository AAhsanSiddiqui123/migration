-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/gardener_level/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics ADD COLUMN gardener_level smallint;
COMMIT;
