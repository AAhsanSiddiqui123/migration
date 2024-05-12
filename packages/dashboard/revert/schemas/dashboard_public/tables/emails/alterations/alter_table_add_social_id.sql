-- Revert schemas/dashboard_public/tables/emails/alterations/alter_table_add_social_id from pg

BEGIN;

ALTER TABLE dashboard_public.emails
    DROP COLUMN social_id;

COMMIT;
