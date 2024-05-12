-- Deploy: schemas/dashboard_public/tables/user_messages/policies/auth_ins_sender_create/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;
CREATE POLICY auth_ins_sender_create ON "dashboard_public".user_messages FOR INSERT TO authenticated WITH CHECK ( sender_id = jwt_public.current_user_id() );
COMMIT;
