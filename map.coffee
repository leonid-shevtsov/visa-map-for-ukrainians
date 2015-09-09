$.getJSON "data.json", (visaData) -> $.getJSON "ru_country_names.json", (countryNames) ->
  mapData = Highcharts.maps['custom/world-highres']

  allCountryCodes = $.map mapData.features, (feature) -> feature.properties['iso-a2']

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
    visa:
      color: '#7bf'
      name: 'Нужна виза'
    other:
      color: '#eee'
      name: 'Другое'

  compileLists = ->
    $.each visaData, (country, data) ->
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
