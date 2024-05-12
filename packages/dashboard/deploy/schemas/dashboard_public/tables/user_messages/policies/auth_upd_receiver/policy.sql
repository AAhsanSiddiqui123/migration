-- Deploy: schemas/dashboard_public/tables/user_messages/policies/auth_upd_receiver/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;
CREATE POLICY auth_upd_receiver ON "dashboard_public".user_messages FOR UPDATE TO authenticated USING ( receiver_id = jwt_public.current_user_id() OR sender_id = jwt_public.current_user_id() );
COMMIT;
