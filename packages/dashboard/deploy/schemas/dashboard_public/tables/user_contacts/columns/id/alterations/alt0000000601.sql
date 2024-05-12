-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/id/alterations/alt0000000601 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table
-- requires: schemas/dashboard_public/tables/user_contacts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_contacts 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
