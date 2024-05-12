-- Deploy schemas/dashboard_public/tables/track_actions/indexes/track_actions_data_tags_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

CREATE INDEX track_actions_data_tags_idx ON dashboard_public.track_actions USING GIN(
 data_tags
);

COMMIT;
