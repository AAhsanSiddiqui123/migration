-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/home_ownership/alterations/alt0000000591 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/home_ownership/column

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics ADD CONSTRAINT user_characteristics_home_ownership_chk CHECK (home_ownership >= 1 AND home_ownership <= 5);
COMMIT;
