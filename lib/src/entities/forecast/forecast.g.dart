part of forecast;

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      list: (json['list'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
