-- Deploy: schemas/dashboard_public/tables/user_contacts/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".user_contacts TO authenticated;
COMMIT;
