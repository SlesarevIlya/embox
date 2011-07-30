/**
 * @file
 *
 * @brief The command enables control irq in system and show information about
 *        one.
 *
 * @date 17.07.2011
 * @author Anton Bondarev
 */

#include <embox/cmd.h>

#include <getopt.h>

#include <hal/interrupt.h>

EMBOX_CMD(exec);

static int exec(int argc, char **argv) {
	interrupt_mask_t mask, pending = 0;
	mask = irqc_get_mask();

	pritnf ("irq mask = 0x%X\n", irqc_get_mask());

	return 0;
}
