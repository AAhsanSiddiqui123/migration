-- Deploy: schemas/dashboard_public/tables/messages/alterations/alt0000001050 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;

ALTER TABLE "dashboard_public".messages
    DISABLE ROW LEVEL SECURITY;
COMMIT;
