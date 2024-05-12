-- Deploy: schemas/dashboard_public/tables/message_groups/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;
CREATE POLICY auth_upd ON "dashboard_public".message_groups FOR UPDATE TO authenticated USING ( jwt_public.current_user_id() = ANY( member_ids ) );
COMMIT;
