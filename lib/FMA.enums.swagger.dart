import 'package:json_annotation/json_annotation.dart';

enum GenderEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Masculino')
  masculino,
  @JsonValue('Femenino')
  femenino,
  @JsonValue('Otro')
  otro
}

const $GenderEnumMap = {
  GenderEnum.masculino: 'Masculino',
  GenderEnum.femenino: 'Femenino',
  GenderEnum.otro: 'Otro'
};

enum SortOrderEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Ascending')
  ascending,
  @JsonValue('Descending')
  descending
}

const $SortOrderEnumMap = {
  SortOrderEnum.ascending: 'Ascending',
  SortOrderEnum.descending: 'Descending'
};

enum VehicleStatusEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Disponible')
  disponible,
  @JsonValue('Deshabilitado')
  deshabilitado,
  @JsonValue('Mantenimiento')
  mantenimiento
}

const $VehicleStatusEnumMap = {
  VehicleStatusEnum.disponible: 'Disponible',
  VehicleStatusEnum.deshabilitado: 'Deshabilitado',
  VehicleStatusEnum.mantenimiento: 'Mantenimiento'
};
