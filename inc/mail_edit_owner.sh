########################################################################
# Template notification mail: édition d'une réunion -> propriétaire
########################################################################

cat<<EOT
Bonjour,

Vous avez réservé une visioconférence.
Cette notification annule et remplace la précédente.

Objet.....: ${object}
Date......: $(date -d @${begin} +"%d/%m/%Y")
Heure.....: $(date -d @${begin} +%H:%M)
Durée.....: ${conf_duration} minutes
Adresse...: ${JMB_SCHEME}://${SERVER_NAME}/${conf_name}
Invités...: ${conf_guests:-aucun}
EOT

source ${JMB_PATH}/inc/mail_best_practices.sh
source ${JMB_PATH}/inc/mail_footer_owner.sh
