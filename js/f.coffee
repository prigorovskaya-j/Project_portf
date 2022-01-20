album = ->
    conteiner = $('.BigPhoto')
    leftButton = $('#left_button')
    rightButton = $('#right_button')
    titleImg = $('#titlePhoto')
    innerImage = $('<img></img>')
    currntIndex = 0
    conteiner.append innerImage
    images = $('.Photo ')
    images.each (index, element) ->
        $(element).click ->
            img = $(element).find('img')[0]
            innerImage.attr 'src', img.src
            innerImage.attr 'alt', 'Картинка'
            currntIndex = index
            $('.BigPhotoContainer').css 'display': 'block'
            titleImg.text 'Картинка ' + (index + 1) + ' из 15'
            return
        return
    conteiner.click ->
        $('.BigPhotoContainer').css 'display': 'none'
        return
    leftButton.click ->
        currntIndex--
        if currntIndex == -1
            currntIndex = 14
        innerImage.fadeOut 1
        imgNext = $(images[currntIndex]).find('img')[0]
        innerImage.attr 'src', imgNext.src
        innerImage.fadeIn 1000
        titleImg.text 'Картинка ' + (currntIndex + 1) + ' из 15'
        return
    rightButton.click ->
        currntIndex++
        if currntIndex == 15
            currntIndex = 0
        innerImage.fadeOut 1
        imgNext = $(images[currntIndex]).find('img')[0]
        innerImage.attr 'src', imgNext.src
        innerImage.fadeIn 1000
        titleImg.text 'Картинка ' + (currntIndex + 1) + ' из 15'
        return
    AddTooltip innerImage.get(0), 'mousemove', 'mouseout'
return