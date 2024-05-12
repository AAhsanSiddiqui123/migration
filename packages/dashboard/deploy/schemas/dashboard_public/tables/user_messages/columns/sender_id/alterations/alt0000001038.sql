-- Deploy: schemas/dashboard_public/tables/user_messages/columns/sender_id/alterations/alt0000001038 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN sender_id SET NOT NULL;
COMMIT;
