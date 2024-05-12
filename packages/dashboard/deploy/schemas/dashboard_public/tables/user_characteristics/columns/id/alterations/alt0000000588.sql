-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/id/alterations/alt0000000588 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
