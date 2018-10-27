-- Schema release 17

ALTER TABLE `user_passes`
ADD INDEX `user_passes_sale_1_idx` (`sale_id` ASC);
ALTER TABLE `user_passes` 
ADD CONSTRAINT `user_passes_sale_ibfk_1`
   FOREIGN KEY (`sale_id`)
   REFERENCES `sales` (`id`)
   ON DELETE NO ACTION
   ON UPDATE NO ACTION;

UPDATE `system_settings` SET `value` = '17' WHERE `name` = 'data-version' and `id` > 0;
