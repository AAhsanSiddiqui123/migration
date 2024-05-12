-- Revert schemas/dashboard_public/tables/impacts/alterations/alter_table_add_share_text from pg

BEGIN;

ALTER TABLE dashboard_public.impacts
    DROP COLUMN share_text;

COMMIT;
