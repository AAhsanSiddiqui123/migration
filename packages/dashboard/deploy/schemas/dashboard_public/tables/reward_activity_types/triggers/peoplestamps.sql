-- Deploy schemas/dashboard_public/tables/reward_activity_types/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/reward_activity_types/table

BEGIN;

ALTER TABLE dashboard_public.reward_activity_types ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.reward_activity_types ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_reward_activity_types_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.reward_activity_types
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
