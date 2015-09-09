$ ->
  mapData = Highcharts.maps['custom/world-highres']

  allCountryCodes = $.map mapData.features, (feature) -> feature.properties['iso-a2']

  data =
    UA: 'internalPassport'
    RU: {status: 'internalPassport', note: 'если паспорт заполнен от руки, могут возникнуть проблемы'}
    BY: 'internalPassport'
    AZ: 'visaFree'
    AL: 'visaFree'
    AG: 'visaFree'
    AR: {status: 'visaFree', note: 'до 90 дней'}
    BA: {status: 'visaFree', note: 'до 30 дней'}
    BR: {status: 'visaFree', note: 'до 90 дней'}
    BN: {status: 'visaFree', note: 'до 30 дней'}
    AM: 'visaFree'
    GT: 'visaFree'
    TM: {status: 'visaFree', note: 'до 30 дней, с туристическим ваучером'}
    TR: {status: 'visaFree', note: 'до 60 дней'}
    HK: {status: 'visaFree', note: 'до 14 дней'}
    GD: {status: 'visaFree', note: 'только для туристов по ваучерам'}
    GE: {status: 'visaFree', note: 'до 90 дней'}
    PA: {status: 'visaFree', note: 'до 90 дней'}
    PY: {status: 'visaFree', note: 'до 90 дней'}
    PE: {status: 'visaFree', note: 'до 183 дней при наличии документов о туристической цели путешествия'}
    PN: {status: 'visaFree', note: 'на 14 дней в случае прибытия и отплытия на одном судне'}
    EH: 'visaFree'
    IL: {status: 'visaFree', note: 'до 90 дней'}
    KZ: {status: 'visaFree', note: 'до 90 дней'}
    KG: {status: 'visaFree', note: 'до 90 дней'}
    MY: {status: 'visaFree', note: 'до 30 дней'}
    MK: 'visaFree',
    FM: {status: 'visaFree', note: 'только для туристов с ваучерами'}
    MD: 'visaFree',
    MN: 'visaFree',
    CK: 'visaFree',
    SV: {status: 'visaFree', note: 'до 90 дней'}
    WS: {status: 'visaFree', note: 'до 60 дней'}
    SZ: 'visaFree',
    SC: {status: 'visaFree', note: 'до 60 дней'}
    RS: {status: 'visaFree', note: 'до 30 дней'}
    NA: {status: 'visaFree', note: 'до 90 дней'}
    NI: 'visaFree',
    NU: {status: 'visaFree', note: 'до 30 дней'}
    TJ: {status: 'visaFree', note: 'до 90 дней'}
    UZ: 'visaFree',
    ME: {status: 'visaFree', note: 'до 90 дней'}
    EC: {status: 'visaFree', note: 'до 90 дней туристам'}
    JM: {status: 'visaFree', note: 'до 30 дней'}
    # •  Шпицберген - visa free - no country code
    # •  Ян-Маен (безвизовый, но проехать по территории Норвегии, которая визовая для украинцев)

    MO: 'airport'
    BB: 'airport'
    BO: 'airport'
    BF: {status: 'airport', note: 'на границе'}
    BI: {status: 'airport', note: 'желательно открывать в посольстве'}
    TL: 'airport'
    MU: 'airport'
    MG: 'airport'
    MW: 'airport'
    MV: 'airport'
    HT: 'airport'
    GM: 'airport'
    TG: 'airport'
    TO: 'airport'
    TV: 'airport'
    UG: 'airport'
    FJ: 'airport'
    DJ: 'airport'
    DM: 'airport'
    DO: 'airport'
    BO: 'airport'
    EG: {status: 'airport', note: 'можно получить бесплатную Синайскую визу'}
    ZM: 'airport'
    JO: 'airport'
    CV: 'airport'
    KE: 'airport'
    KM: 'airport'
    LA: 'airport'
    LB: 'airport'
    NP: 'airport'
    VC: 'airport'
    TZ: 'airport'
    TH: {status: 'airport', note: 'туристическая виза на 15 дней оформляется на границе'}
    #•  Северный Кипр - airport

    AU: {status: 'online', note: 'разрешение на получение визы в аэропорту прибытие оформляется по Интернету'}
    QA: 'online'
    CY: 'online'
    KW: 'online'
    BH: {status: 'online', note: 'визу ставят в аэропорту'}
    BW: 'online'
    # BT: 'online'
    VU: 'online'
    ST: 'online'
    SN: 'online'
    KN: 'online'
    LC: 'online'
    SG: {status: 'online', note: 'оформление через авиакомпанию или отель'}
    # SY: 'online'
    SR: 'online'
    VN: {status: 'online', note: 'виза получается в любом аэропорту, однако нужно иметь пригласительное письмо'}
    GH: 'online'
    IR: 'online'
    IN: {status: 'online', note: 'виза проставляется в аэропорту, однако требуется заранее оформить приглашение онлайн'}
    KH: 'online'
    MH: 'online'
    MX: 'online'
    AE: 'online'
    PG: 'online'
    RW: 'online'
    LK: 'online'
    SS: 'online'

    AT: 'schengen'
    AD: 'schengen'
    BE: 'schengen'
    HU: 'schengen'
    CH: 'schengen'
    SE: 'schengen'
    DE: 'schengen'
    GR: 'schengen'
    DK: 'schengen'
    IS: 'schengen'
    ES: 'schengen'
    IT: 'schengen'
    MT: 'schengen'
    NL: 'schengen'
    NO: 'schengen'
    PL: 'schengen'
    PT: 'schengen'
    SK: 'schengen'
    SI: 'schengen'
    LV: 'schengen'
    LT: 'schengen'
    LI: 'schengen'
    LU: 'schengen'
    FI: 'schengen'
    FR: 'schengen'
    # HR: 'schengen' wrong
    CZ: 'schengen'
    EE: 'schengen'

    SO: 'danger'
    AF: 'danger'
    IQ: 'danger'
    CG: 'danger'
    PK: 'danger'
    # Сектор Газа - danger
    HT: 'danger'
    YE: 'danger'
    SD: 'danger'
    SY: 'danger'
    ZW: 'danger'
    CI: 'danger'
    DZ: 'danger'
    NG: 'danger'
    ET: 'danger'

    AO: 'closed'
    BT: 'closed'
    LY: 'closed'
    SA: 'closed'
    KP: 'closed'

  styles =
    internalPassport:
      name: 'Загранпаспорт не нужен'
      color: '#7f7'
    visaFree:
      name: 'Виза не нужна'
      color: '#3c3'
    airport:
      name: 'Оформление в аэропорту'
      color: '#ff7'
    online:
      name: 'Оформление онлайн'
      color: '#da7'
    schengen:
      name: 'Шенгенская зона'
      color: '#77f'
    danger:
      color: '#fcc'
      name: 'Посещение опасно'
    closed:
      color: '#f77'
      name: 'Въезд закрыт'
    other:
      color: '#eee'
      name: 'Нужна виза / Другое'

  compileLists = ->
    $.each data, (country, data) ->
      if typeof data == 'string'
        status = data
        data = {"iso-a2": country}
      else
        status = data.status
        data["iso-a2"] = country

      styles[status].data = [] unless styles[status].data
      if allCountryCodes.indexOf(data['iso-a2'])>-1
        allCountryCodes.splice(allCountryCodes.indexOf(data['iso-a2']), 1)
      else
        console.log(data['iso-a2'])
      styles[status].data.push(data)
  compileLists()

  styles.other.data = $.map allCountryCodes, (code) -> {'iso-a2': code}

  makeSeries = ->
    return $.map styles, (value, name) -> value

  countryNames = {"AC":"о-в Вознесения","AD":"Андорра","AE":"ОАЭ","AF":"Афганистан","AG":"Антигуа и Барбуда","AI":"Ангилья","AL":"Албания","AM":"Армения","AN":"Нидерландские Антильские о-ва","AO":"Ангола","AQ":"Антарктида","AR":"Аргентина","AS":"Американское Самоа","AT":"Австрия","AU":"Австралия","AW":"Аруба","AX":"Аландские о-ва","AZ":"Азербайджан","BA":"Босния и Герцеговина","BB":"Барбадос","BD":"Бангладеш","BE":"Бельгия","BF":"Буркина-Фасо","BG":"Болгария","BH":"Бахрейн","BI":"Бурунди","BJ":"Бенин","BL":"Сен-Бартельми","BM":"Бермудские о-ва","BN":"Бруней-Даруссалам","BO":"Боливия","BQ":"Бонэйр, Синт-Эстатиус и Саба","BR":"Бразилия","BS":"Багамские о-ва","BT":"Бутан","BV":"о-в Буве","BW":"Ботсвана","BY":"Беларусь","BZ":"Белиз","CA":"Канада","CC":"Кокосовые о-ва","CD":"Конго - Киншаса","CF":"ЦАР","CG":"Конго - Браззавиль","CH":"Швейцария","CI":"Кот-д’Ивуар","CK":"о-ва Кука","CL":"Чили","CM":"Камерун","CN":"Китай","CO":"Колумбия","CP":"о-в Клиппертон","CR":"Коста-Рика","CU":"Куба","CV":"Кабо-Верде","CW":"Кюрасао","CX":"о-в Рождества","CY":"Кипр","CZ":"Чехия","DE":"Германия","DG":"Диего-Гарсия","DJ":"Джибути","DK":"Дания","DM":"Доминика","DO":"Доминиканская Республика","DZ":"Алжир","EA":"Сеута и Мелилья","EC":"Эквадор","EE":"Эстония","EG":"Египет","EH":"Западная Сахара","ER":"Эритрея","ES":"Испания","ET":"Эфиопия","EU":"Европейский союз","FI":"Финляндия","FJ":"Фиджи","FK":"Фолклендские о-ва","FM":"Федеративные Штаты Микронезии","FO":"Фарерские о-ва","FR":"Франция","GA":"Габон","GB":"Великобритания","GD":"Гренада","GE":"Грузия","GF":"Французская Гвиана","GG":"Гернси","GH":"Гана","GI":"Гибралтар","GL":"Гренландия","GM":"Гамбия","GN":"Гвинея","GP":"Гваделупа","GQ":"Экваториальная Гвинея","GR":"Греция","GS":"Южная Георгия и Южные Сандвичевы о-ва","GT":"Гватемала","GU":"Гуам","GW":"Гвинея-Бисау","GY":"Гайана","HK":"Гонконг (особый район)","HM":"о-ва Херд и Макдональд","HN":"Гондурас","HR":"Хорватия","HT":"Гаити","HU":"Венгрия","IC":"Канарские о-ва","ID":"Индонезия","IE":"Ирландия","IL":"Израиль","IM":"О-в Мэн","IN":"Индия","IO":"Британская территория в Индийском океане","IQ":"Ирак","IR":"Иран","IS":"Исландия","IT":"Италия","JE":"Джерси","JM":"Ямайка","JO":"Иордания","JP":"Япония","KE":"Кения","KG":"Киргизия","KH":"Камбоджа","KI":"Кирибати","KM":"Коморские о-ва","KN":"Сент-Китс и Невис","KP":"КНДР","KR":"Республика Корея","KW":"Кувейт","KY":"Каймановы о-ва","KZ":"Казахстан","LA":"Лаос","LB":"Ливан","LC":"Сент-Люсия","LI":"Лихтенштейн","LK":"Шри-Ланка","LR":"Либерия","LS":"Лесото","LT":"Литва","LU":"Люксембург","LV":"Латвия","LY":"Ливия","MA":"Марокко","MC":"Монако","MD":"Молдова","ME":"Черногория","MF":"Сен-Мартен","MG":"Мадагаскар","MH":"Маршалловы о-ва","MK":"Македония","ML":"Мали","MM":"Мьянма (Бирма)","MN":"Монголия","MO":"Макао (особый район)","MP":"Северные Марианские о-ва","MQ":"Мартиника","MR":"Мавритания","MS":"Монтсеррат","MT":"Мальта","MU":"Маврикий","MV":"Мальдивские о-ва","MW":"Малави","MX":"Мексика","MY":"Малайзия","MZ":"Мозамбик","NA":"Намибия","NC":"Новая Каледония","NE":"Нигер","NF":"о-в Норфолк","NG":"Нигерия","NI":"Никарагуа","NL":"Нидерланды","NO":"Норвегия","NP":"Непал","NR":"Науру","NU":"Ниуэ","NZ":"Новая Зеландия","OM":"Оман","PA":"Панама","PE":"Перу","PF":"Французская Полинезия","PG":"Папуа – Новая Гвинея","PH":"Филиппины","PK":"Пакистан","PL":"Польша","PM":"Сен-Пьер и Микелон","PN":"Питкэрн","PR":"Пуэрто-Рико","PS":"Палестинские территории","PT":"Португалия","PW":"Палау","PY":"Парагвай","QA":"Катар","QO":"Внешняя Океания","RE":"Реюньон","RO":"Румыния","RS":"Сербия","RU":"Россия","RW":"Руанда","SA":"Саудовская Аравия","SB":"Соломоновы о-ва","SC":"Сейшельские о-ва","SD":"Судан","SE":"Швеция","SG":"Сингапур","SH":"О-в Св. Елены","SI":"Словения","SJ":"Шпицберген и Ян-Майен","SK":"Словакия","SL":"Сьерра-Леоне","SM":"Сан-Марино","SN":"Сенегал","SO":"Сомали","SR":"Суринам","SS":"Южный Судан","ST":"Сан-Томе и Принсипи","SV":"Сальвадор","SX":"Синт-Мартен","SY":"Сирия","SZ":"Свазиленд","TA":"Тристан-да-Кунья","TC":"О-ва Тёркс и Кайкос","TD":"Чад","TF":"Французские Южные Территории","TG":"Того","TH":"Таиланд","TJ":"Таджикистан","TK":"Токелау","TL":"Восточный Тимор","TM":"Туркменистан","TN":"Тунис","TO":"Тонга","TR":"Турция","TT":"Тринидад и Тобаго","TV":"Тувалу","TW":"Тайвань","TZ":"Танзания","UA":"Украина","UG":"Уганда","UM":"Внешние малые о-ва (США)","US":"Соединенные Штаты","UY":"Уругвай","UZ":"Узбекистан","VA":"Ватикан","VC":"Сент-Винсент и Гренадины","VE":"Венесуэла","VG":"Виргинские о-ва (Британские)","VI":"Виргинские о-ва (США)","VN":"Вьетнам","VU":"Вануату","WF":"Уоллис и Футуна","WS":"Самоа","XK":"Косово","YE":"Йемен","YT":"Майотта","ZA":"ЮАР","ZM":"Замбия","ZW":"Зимбабве","ZZ":"Неизвестный регион"}

  $('#map').highcharts 'Map',
    title:
      text: 'Визовый режим для украинцев'
    mapNavigation:
      enabled: true
    plotOptions:
      map:
        allAreas: false,
        joinBy: 'iso-a2'
        tooltip:
          headerFormat: ''
          pointFormatter: () ->
            "#{countryNames[this['iso-a2']]}: <b>#{this.series.name} #{this.note||''}</b>"
        mapData: mapData
        events:
          click: (e) ->
            window.open("https://ru.wikipedia.org/wiki/#{encodeURIComponent(countryNames[e.point['iso-a2']])}")
          legendItemClick: -> return false
    series: makeSeries()
