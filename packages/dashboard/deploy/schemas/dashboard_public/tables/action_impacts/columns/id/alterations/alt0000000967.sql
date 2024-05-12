-- Deploy: schemas/dashboard_public/tables/action_impacts/columns/id/alterations/alt0000000967 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table
-- requires: schemas/dashboard_public/tables/action_impacts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".action_impacts 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
