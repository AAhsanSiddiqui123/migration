-- Deploy: schemas/dashboard_public/tables/action_item_types/policies/auth_sel_admin/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;
CREATE POLICY auth_sel_admin ON "dashboard_public".action_item_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
