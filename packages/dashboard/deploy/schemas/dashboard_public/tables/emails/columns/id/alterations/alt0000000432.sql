-- Deploy: schemas/dashboard_public/tables/emails/columns/id/alterations/alt0000000432 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".emails 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
