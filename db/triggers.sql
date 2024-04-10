CREATE OR REPLACE FUNCTION active_driver_update()
RETURNS TRIGGER AS
$$
BEGIN
    IF NEW.status THEN
        INSERT INTO active_drivers (driver_id) VALUES (NEW.id);
    ELSE
        DELETE FROM active_drivers WHERE driver_id = NEW.id;
    END IF;
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER active_driver_update
AFTER UPDATE ON drivers
FOR EACH ROW
EXECUTE FUNCTION active_driver_update();
