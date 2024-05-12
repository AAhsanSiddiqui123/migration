-- Deploy: schemas/dashboard_memberships_private/trigger_fns/delete_groups_remove_mbrs to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table

BEGIN;

CREATE FUNCTION "dashboard_memberships_private".delete_groups_remove_mbrs ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    gid uuid;
    delete_member_cascade_groups boolean;
BEGIN
    SELECT 
        owd.delete_member_cascade_groups
    FROM "dashboard_memberships_public".membership_defaults owd 
        WHERE owd.entity_id = OLD.entity_id
    INTO delete_member_cascade_groups;
    IF (NOT FOUND) THEN 
        delete_member_cascade_groups = FALSE;
    END IF;
    FOR gid in
        SELECT g.id FROM 
            "dashboard_public".groups g
        WHERE g.owner_id = OLD.entity_id
    LOOP 
        IF (delete_member_cascade_groups IS TRUE) THEN 
            DELETE FROM "dashboard_memberships_public".group_memberships m
            WHERE m.actor_id = OLD.actor_id AND 
            m.entity_id = gid;
        ELSE
            UPDATE "dashboard_memberships_public".group_memberships m
                SET is_admin = FALSE, is_owner = FALSE
            WHERE m.actor_id = OLD.actor_id AND 
            m.entity_id = gid;
        END IF;
    END LOOP;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
