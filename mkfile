# DESCRIPTION:
# mk module to plot matrices of hic files
#
# USAGE:
# Single target execution: `mk <TARGET>` where TARGET is
# any line printed by the script `bin/mk-targets`
#
# Multiple target execution in tandem `bin/mk-targets | xargs mk`
#
# AUTHOR: HRG
#
# include config file
#
<config.mk

# Run fanc
#
results/%:	data/%.hic
	fancplot \
		-o $target"_square_heatmap_"$CHR".png" \
		$CHR \
		-p square \
		-vmax $VMAX \
		$prereq

	fancplot \
		-o $target"_square_heatmap_OBEX_"$CHR".png" \
		$CHR \
		-p square \
		-vmax $VMAX_OBEX \
		-vmin $VMIN_OBEX \
		-e $prereq

