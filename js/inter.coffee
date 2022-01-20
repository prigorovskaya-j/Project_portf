
hobbies_link = (id, title) ->
        document.writeln '<a href ="#' + id + '">' + title + '</a><br>'
        return
hobbies = (id, title, text, ...img) ->
        #Модифицирование страницы Мои интересы
        document.writeln '<p class="text_link"><a id = "' + id + '">' + title + '</a></p><p class="main_text">' + text + '</p><p class="hobby_img img">'
        for i in img
                document.writeln '<img src="' + i + '" width="200" height="200" alt="Ошибка загрузки изображения!">'
                document.writeln '</p>'
        return
