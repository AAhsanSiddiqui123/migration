-- Deploy: schemas/dashboard_public/tables/emails/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;
GRANT UPDATE ( email, owner_id, is_primary ) ON TABLE "dashboard_public".emails TO authenticated;
COMMIT;
