### the directory name
SET(DIRECTORY source/APPLICATIONS/UTILITIES)

### list all filenames of the directory here ###
SET(EXECUTABLES_LIST
	add_hydrogens
	assign_charges_from_rules
	assign_radii_from_rules
	assign_typenames_from_rules
	atomtyper
	calculate_RMSD
	clip_protein_around_ligand
	compute_docking_RMSD
	create_random_numbers
	dcd2dcd
	export_fragment
	hin2mol2
	pdb2amber_naming
	pdb2dcd
	pdb2hin
	reconstruct_fragment
	rigid_docking
	solvent_accessibility
)	

IF (BALL_HAS_MPI)
	LIST(APPEND EXECUTABLES_LIST geometricFit_slave)
ENDIF()

SET(UTILITIES_EXECUTABLES ${UTILITIES_EXECUTABLES} ${EXECUTABLES_LIST})

### add filenames to Visual Studio solution
SET(UTILITIES_SOURCES)
FOREACH(i ${EXECUTABLES_LIST})
	LIST(APPEND UTILITIES_SOURCES "${i}")
ENDFOREACH(i)
SOURCE_GROUP("" FILES ${UTILITIES_SOURCES})