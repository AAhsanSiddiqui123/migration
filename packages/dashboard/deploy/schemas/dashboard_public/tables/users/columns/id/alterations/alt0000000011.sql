-- Deploy: schemas/dashboard_public/tables/users/columns/id/alterations/alt0000000011 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".users 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
