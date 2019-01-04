/obj/item/disk/tech_disk
	name = "technology disk"
	desc = "A disk for storing technology data for further research."
	icon_state = "datadisk0"
	materials = list(MAT_METAL=300, MAT_GLASS=100)
	var/datum/techweb/stored_research

/obj/item/disk/tech_disk/Initialize()
	. = ..()
	pixel_x = rand(-5, 5)
	pixel_y = rand(-5, 5)
	stored_research = new /datum/techweb

/obj/item/disk/tech_disk/debug
	name = "\improper CentCom technology disk"
	desc = "A debug item for research"
	materials = list()

/obj/item/disk/tech_disk/debug/Initialize()
	. = ..()
	stored_research = new /datum/techweb/admin

/obj/item/disk/tech_disk/unknown/Initialize()
	. = ..()
	stored_research = new /datum/techweb/unknown

/obj/item/disk/tech_disk/bos/Initialize()
	. = ..()
	stored_research = new /datum/techweb/bos

/obj/item/disk/tech_disk/vault/Initialize()
	. = ..()
	stored_research = new /datum/techweb/science

/obj/item/disk/rnd_holotape
	name = "data holotape"
	desc = "A holotape for storing scientific data, left behind in the wasteland. It can be analyzed for research points."
	icon_state = "holodisk"
