-- Deploy: schemas/dashboard_public/tables/user_messages/columns/id/alterations/alt0000001037 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
