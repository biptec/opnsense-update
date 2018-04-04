# Copyright (c) 2016-2018 Franco Fichtner <franco@opnsense.org>
	ABORT=
	if ! patch -Et -p ${PATCHLEVEL} -d "${PREFIX}" -i "${WORKDIR}/${ARG}.patch"; then
		ABORT=1
	fi
		"diff --git a/"*" b/"*)
			PATCHFILE="$(echo "${PATCHLINE}" | awk '{print $4 }')"
			for INDEX in $(seq 1 ${PATCHLEVEL}); do
				PATCHFILE=${PATCHFILE#*/}
			done
			PATCHFILE="${PREFIX}/${PATCHFILE}"
	if [ -n "${ABORT}" ]; then
		exit 1
	fi