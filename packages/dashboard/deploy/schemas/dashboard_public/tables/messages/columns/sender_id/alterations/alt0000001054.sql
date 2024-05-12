-- Deploy: schemas/dashboard_public/tables/messages/columns/sender_id/alterations/alt0000001054 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table
-- requires: schemas/dashboard_public/tables/messages/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_public".messages 
    ALTER COLUMN sender_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
