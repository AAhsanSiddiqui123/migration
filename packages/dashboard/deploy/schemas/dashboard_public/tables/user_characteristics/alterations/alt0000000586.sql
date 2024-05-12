-- Deploy: schemas/dashboard_public/tables/user_characteristics/alterations/alt0000000586 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics
    DISABLE ROW LEVEL SECURITY;
COMMIT;
