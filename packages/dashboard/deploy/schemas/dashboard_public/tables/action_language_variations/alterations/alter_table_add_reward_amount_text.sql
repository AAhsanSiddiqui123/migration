-- Deploy schemas/dashboard_public/tables/action_language_variations/alterations/alter_table_add_reward_amount_text to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.action_language_variations
    ADD COLUMN reward_amount_text text NULL;

COMMIT;
