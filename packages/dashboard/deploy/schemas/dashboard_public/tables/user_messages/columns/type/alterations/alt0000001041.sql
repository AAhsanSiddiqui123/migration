-- Deploy: schemas/dashboard_public/tables/user_messages/columns/type/alterations/alt0000001041 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table
-- requires: schemas/dashboard_public/tables/user_messages/columns/type/column

BEGIN;

ALTER TABLE "dashboard_public".user_messages 
    ALTER COLUMN type SET DEFAULT 'text';
COMMIT;
