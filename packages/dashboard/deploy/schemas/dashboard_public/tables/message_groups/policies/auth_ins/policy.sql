-- Deploy: schemas/dashboard_public/tables/message_groups/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/message_groups/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".message_groups FOR INSERT TO authenticated WITH CHECK ( jwt_public.current_user_id() = ANY( member_ids ) );
COMMIT;
