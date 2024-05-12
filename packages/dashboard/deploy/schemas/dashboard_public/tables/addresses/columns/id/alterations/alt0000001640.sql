-- Deploy: schemas/dashboard_public/tables/addresses/columns/id/alterations/alt0000001640 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".addresses 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
