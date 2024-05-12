-- Deploy: schemas/dashboard_public/tables/tags/columns/id/alterations/alt0000000982 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table
-- requires: schemas/dashboard_public/tables/tags/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".tags 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
