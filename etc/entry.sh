#!/bin/bash
mkdir -p "${STEAMAPPDIR}" || true  

# update the server application before launching
bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${STEAMAPPDIR}" \
				+login anonymous \
				+app_update "${STEAMAPPID}" \
				+quit

# List of environment vars:
# 
# STEAMAPPID - ID num of the application
# STEAMAPP - name of server application (mainly for folder naming)
# STEAMAPPDIR - directory for the server application
# DLURL - base URL for downloading things like entry.sh
# USER
# HOMEDIR 
# SERVERNAME 
# SERVERMAP
# SERVERPWD
# OWNERSTEAMID 

cd ${STEAMAPPDIR}
./ServerHelper.sh +InternetServer/unturned1 \
+Name ${SERVERNAME} \
+Map ${SERVERMAP} \
+Password ${SERVERPWD}