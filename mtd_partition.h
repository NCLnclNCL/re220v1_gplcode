static struct mtd_partition rt2880_partitions[] = {
	{
		name:	"ALL",
		size:	MTDPART_SIZ_FULL,
		offset:	0,
	},
	{
		name:	"fs-uboot",
		size:	0x00020000,
		offset:	0x00000000,
	},
	{
		name:	"os-image",
		size:	0x000ee000,
		offset:	0x00020000,
	},
	{
		name:	"file-system",
		size:	0x006c0000,
		offset:	0x0010e000,
	},
	{
		name:	"radio",
		size:	0x00010000,
		offset:	0x007f0000,
	},
};
