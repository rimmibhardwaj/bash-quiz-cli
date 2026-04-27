#!/usr/bin/env bash

load_question(){
	local contents
	local num_questions
	local question_index
	local question
	contents=$(cat ./trivia.json)
	num_questions=$(echo "${contents}" | jq '.results | length')

	(( question_index = RANDOM % num_questions ))

	question=$(echo "${contents}" | jq ".results[${question_index}]")
	echo "${question}" | jq -r '.question'
	echo "${question}" | jq -r '.correct_answer'
	echo "${question}" | jq -r '.incorrect_answers[0]'
	echo "${question}" | jq -r '.incorrect_answers[1]'
	echo "${question}" | jq -r '.incorrect_answers[2]'
}
ask_question(){
	local question="$1"
	local correct_answer="$2"
	local incorrect_answer_0="$3"
	local incorrect_answer_1="$4"
	local incorrect_answer_2="$5"
	echo "${question}"
	select answer in "${correct_answer}"\
						"${incorrect_answer_0}"\
						"${incorrect_answer_1}"\
						"${incorrect_answer_2}"; do
	if [[ "${answer}" == "${correct_answer}" ]]; then
		echo "THis is correct! Well done!"
		return 0
	else
		echo "This is not correct."
		return 1
	fi
done
}


main() {
	local question
	local correct_answer
	local incorrect_answer_0
	local incorrect_answer_1
	local incorrect_answer_2
	{
		read -r question
		read -r correct_answer
		read -r incorrect_answer_0
		read -r incorrect_answer_1
		read -r incorrect_answer_2
	} < <(load_question)

	ask_question "${question}"\
				"${correct_answer}"\
				"${incorrect_answer_0}"\
				"${incorrect_answer_1}"\
				"${incorrect_answer_2}"
		     
	echo "${question}"
	echo "${correct_answer}"
}
main "$@"
