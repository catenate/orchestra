function handler () {
	EVENT_DATA=$1
	echo "$EVENT_DATA" 1>&2;

	echo $EVENT_DATA | python -mjson

	RESPONSE="Echoing request: '$EVENT_DATA'"
	echo $RESPONSE
}
