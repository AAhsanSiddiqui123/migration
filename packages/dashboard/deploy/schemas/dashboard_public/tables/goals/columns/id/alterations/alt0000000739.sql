-- Deploy: schemas/dashboard_public/tables/goals/columns/id/alterations/alt0000000739 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".goals 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
