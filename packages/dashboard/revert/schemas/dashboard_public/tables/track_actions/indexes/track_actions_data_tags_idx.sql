-- Revert schemas/dashboard_public/tables/track_actions/indexes/track_actions_data_tags_idx from pg

BEGIN;

DROP INDEX dashboard_public.track_actions_data_tags_idx;

COMMIT;
