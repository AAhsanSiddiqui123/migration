-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/diy_level/alterations/alt0000000593 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/diy_level/column

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics ADD CONSTRAINT user_characteristics_diy_level_chk CHECK (diy_level >= 1 AND diy_level <= 5);
COMMIT;
