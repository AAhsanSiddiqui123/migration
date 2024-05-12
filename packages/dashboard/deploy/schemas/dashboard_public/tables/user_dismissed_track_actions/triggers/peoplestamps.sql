-- Deploy schemas/dashboard_public/tables/user_dismissed_track_actions/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_dismissed_track_actions/table

BEGIN;

ALTER TABLE dashboard_public.user_dismissed_track_actions ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.user_dismissed_track_actions ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_user_dismissed_track_actions_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.user_dismissed_track_actions
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
