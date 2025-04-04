import 'package:json_annotation/json_annotation.dart';

enum CatalogsEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('VehicleCategories')
  vehiclecategories,
  @JsonValue('FuelTypes')
  fueltypes,
  @JsonValue('Servies')
  servies,
  @JsonValue('Machines')
  machines,
  @JsonValue('Projects')
  projects,
  @JsonValue('MaintenanceGroups')
  maintenancegroups,
  @JsonValue('Engines')
  engines,
  @JsonValue('Models')
  models,
  @JsonValue('Brands')
  brands,
  @JsonValue('Companies')
  companies,
  @JsonValue('FuelMeasures')
  fuelmeasures,
  @JsonValue('Measures')
  measures,
  @JsonValue('ActiveCategories')
  activecategories,
  @JsonValue('MaintenanceTypes')
  maintenancetypes,
  @JsonValue('InsuranceCompanies')
  insurancecompanies,
  @JsonValue('Providers')
  providers,
  @JsonValue('Drivers')
  drivers
}

const $CatalogsEnumMap = {
  CatalogsEnum.vehiclecategories: 'VehicleCategories',
  CatalogsEnum.fueltypes: 'FuelTypes',
  CatalogsEnum.servies: 'Servies',
  CatalogsEnum.machines: 'Machines',
  CatalogsEnum.projects: 'Projects',
  CatalogsEnum.maintenancegroups: 'MaintenanceGroups',
  CatalogsEnum.engines: 'Engines',
  CatalogsEnum.models: 'Models',
  CatalogsEnum.brands: 'Brands',
  CatalogsEnum.companies: 'Companies',
  CatalogsEnum.fuelmeasures: 'FuelMeasures',
  CatalogsEnum.measures: 'Measures',
  CatalogsEnum.activecategories: 'ActiveCategories',
  CatalogsEnum.maintenancetypes: 'MaintenanceTypes',
  CatalogsEnum.insurancecompanies: 'InsuranceCompanies',
  CatalogsEnum.providers: 'Providers',
  CatalogsEnum.drivers: 'Drivers'
};

enum CategoryTypeEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Vehicle')
  vehicle,
  @JsonValue('Active')
  active
}

const $CategoryTypeEnumMap = {
  CategoryTypeEnum.vehicle: 'Vehicle',
  CategoryTypeEnum.active: 'Active'
};

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

enum PeriodEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Day')
  day,
  @JsonValue('Week')
  week,
  @JsonValue('Month')
  month,
  @JsonValue('Year')
  year
}

const $PeriodEnumMap = {
  PeriodEnum.day: 'Day',
  PeriodEnum.week: 'Week',
  PeriodEnum.month: 'Month',
  PeriodEnum.year: 'Year'
};

enum PermissionsEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Nulo')
  nulo,
  @JsonValue('Create')
  create,
  @JsonValue('Read')
  read,
  @JsonValue('Update')
  update,
  @JsonValue('Delete')
  delete,
  @JsonValue('Export')
  $export
}

const $PermissionsEnumMap = {
  PermissionsEnum.nulo: 'Nulo',
  PermissionsEnum.create: 'Create',
  PermissionsEnum.read: 'Read',
  PermissionsEnum.update: 'Update',
  PermissionsEnum.delete: 'Delete',
  PermissionsEnum.$export: 'Export'
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

enum TenantLinkStatusEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Pending')
  pending,
  @JsonValue('Accepted')
  accepted,
  @JsonValue('Rejected')
  rejected
}

const $TenantLinkStatusEnumMap = {
  TenantLinkStatusEnum.pending: 'Pending',
  TenantLinkStatusEnum.accepted: 'Accepted',
  TenantLinkStatusEnum.rejected: 'Rejected'
};

enum VehicleStatusEnum {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Disponible')
  disponible,
  @JsonValue('Deshabilitado')
  deshabilitado,
  @JsonValue('Mantenimiento')
  mantenimiento,
  @JsonValue('Asignado')
  asignado
}

const $VehicleStatusEnumMap = {
  VehicleStatusEnum.disponible: 'Disponible',
  VehicleStatusEnum.deshabilitado: 'Deshabilitado',
  VehicleStatusEnum.mantenimiento: 'Mantenimiento',
  VehicleStatusEnum.asignado: 'Asignado'
};
