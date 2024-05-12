-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/id/alterations/alt0000000587 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_characteristics 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
