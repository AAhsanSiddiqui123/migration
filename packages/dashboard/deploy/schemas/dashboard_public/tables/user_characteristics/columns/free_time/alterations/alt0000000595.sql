-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/free_time/alterations/alt0000000595 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/free_time/column

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics ADD CONSTRAINT user_characteristics_free_time_chk CHECK (free_time >= 1 AND free_time <= 5);
COMMIT;
