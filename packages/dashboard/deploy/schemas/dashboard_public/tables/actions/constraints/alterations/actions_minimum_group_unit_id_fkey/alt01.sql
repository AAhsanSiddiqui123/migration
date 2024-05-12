-- Deploy dashboard:schemas/dashboard_public/tables/actions/constraints/alterations/actions_minimum_group_unit_id_fkey/alt01 to pg

BEGIN;

ALTER TABLE "dashboard_public".actions 
    DROP CONSTRAINT actions_minimum_group_unit_id_fkey;

ALTER TABLE "dashboard_public".actions 
    ADD CONSTRAINT actions_minimum_group_unit_id_fkey 
    FOREIGN KEY (minimum_group_unit_id)
    REFERENCES "dashboard_public".units (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

COMMIT;
