-- Deploy: schemas/dashboard_public/tables/user_contacts/alterations/alt0000000599 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;

ALTER TABLE "dashboard_public".user_contacts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
