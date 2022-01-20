res = undefined
x = undefined
check_question2 = ->
  res = document.formStudy.question2.value
  res = res - 0
  if res != NaN and Number.isInteger(res)
    return true
  alert 'Введите целое число '
  formStudy.question2.focus()
  false
check_submit = ->
  if !check_question2()
    return false
  true
