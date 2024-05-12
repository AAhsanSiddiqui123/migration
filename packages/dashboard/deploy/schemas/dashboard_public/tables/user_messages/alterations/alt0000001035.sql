-- Deploy: schemas/dashboard_public/tables/user_messages/alterations/alt0000001035 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;

ALTER TABLE "dashboard_public".user_messages
    DISABLE ROW LEVEL SECURITY;
COMMIT;
