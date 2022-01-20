check_submit_cont = ->
  if !focusFio()
    return false
  if !focusCom()
    return false
  if !focusMail()
    return false
  if !focusTel()
    return false
  return

focusCom = (x) ->
  com = document.formContact.comment.value
  element = document.getElementById('pCom')
  if com != ''
    x.style.backgroundColor = 'green'
    element.innerHTML = ''
    true
  else
    x.style.backgroundColor = 'red'
    element.innerHTML = 'Заполните комментарий'
    focus()
    false

focusMail = (x) ->
  mail = document.formContact.Mail.value
  element = document.getElementById('pMail')
  if mail != ''
    x.style.backgroundColor = 'green'
    element.innerHTML = ''
    true
  else
    x.style.backgroundColor = 'red'
    element.innerHTML = 'Заполните email'
    false

focusTel = (x) ->
  phone = document.formContact.tel.value
  element = document.getElementById('pTel')
  array = phone.split('')
  if (array.length == 10 or array.length == 11 or array.length == 12) and array[0] == '+' and (array[1] == '3' or array[1] == '7')
    x.style.backgroundColor = 'green'
    element.innerHTML = ''
    true
  else
    x.style.backgroundColor = 'red'
    element.innerHTML = 'Формат телефона не верный'
    false

focusFio = (x) ->
  fio = document.formContact.formFIO.value
  element = document.getElementById('pFio')
  array = fio.split(' ')
  if array.length == 3
    i = 0
    while i < array.length
      if array[i] != ''
        x.style.backgroundColor = 'green'
        element.innerHTML = ''
        return true
      else
        x.style.backgroundColor = 'red'
        element.innerHTML = 'Формат ФИО не верный'
        return false
      i++
  else
    x.style.backgroundColor = 'red'
    element.innerHTML = 'Формат ФИО не верный'
    return false
  return

myFunction = ->
  document.getElementById('myDropdown').classList.toggle 'show'
  return

#ДМГ день недели

currentDate = ->
  element = document.getElementById('DDay')
  t = new Date
  now = (new Date).toLocaleDateString()
  days = [
    'Воскресенье'
    'Понедельник'
    'Вторник'
    'Среда'
    'Четверг'
    'Пятница'
    'Суббота'
  ]
  d = t.getDay()
  element.innerText = 'Дата: ' + now + '  ' + days[d]
  setTimeout 'currentDate()', 1000
  return

window.onclick = (e) ->
  if !e.target.matches('.dropbtn')
    myDropdown = document.getElementById('myDropdown')
    if myDropdown.classList.contains('show')
      myDropdown.classList.remove 'show'
  return