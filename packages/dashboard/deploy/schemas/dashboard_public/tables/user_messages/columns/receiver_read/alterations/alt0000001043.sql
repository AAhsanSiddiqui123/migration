-- Deploy: schemas/dashboard_public/tables/user_messages/columns/receiver_read/alterations/alt0000001043 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/receiver_read/column

BEGIN;

ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN receiver_read SET DEFAULT false;
COMMIT;
