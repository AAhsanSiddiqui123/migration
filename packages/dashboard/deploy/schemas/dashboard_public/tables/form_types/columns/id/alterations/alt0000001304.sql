-- Deploy: schemas/dashboard_public/tables/form_types/columns/id/alterations/alt0000001304 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table
-- requires: schemas/dashboard_public/tables/form_types/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".form_types 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
