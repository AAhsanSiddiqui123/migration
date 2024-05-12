-- Deploy: schemas/dashboard_public/tables/user_messages/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".user_messages FOR SELECT TO authenticated USING ( receiver_id = jwt_public.current_user_id() OR sender_id = jwt_public.current_user_id() );
COMMIT;
