-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/gardener_level/alterations/alt0000000594 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/gardener_level/column

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics ADD CONSTRAINT user_characteristics_gardener_level_chk CHECK (gardener_level >= 1 AND gardener_level <= 5);
COMMIT;
