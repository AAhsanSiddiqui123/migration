-- Deploy: schemas/dashboard_public/tables/user_contacts/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".user_contacts TO authenticated;
COMMIT;
