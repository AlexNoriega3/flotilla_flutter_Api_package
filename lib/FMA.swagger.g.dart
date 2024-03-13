// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FMA.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUserDTO _$AppUserDTOFromJson(Map<String, dynamic> json) => AppUserDTO(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      url: json['url'] as String?,
      countryCode: json['countryCode'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      active: json['active'] as bool?,
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
      department: (json['department'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppUserDTOToJson(AppUserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'image': instance.image,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'url': instance.url,
      'countryCode': instance.countryCode,
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'rating': instance.rating,
      'birthDate': instance.birthDate?.toIso8601String(),
      'active': instance.active,
      'costPerAppointment': instance.costPerAppointment,
      'department': instance.department?.map((e) => e.toJson()).toList(),
    };

AppUserDTOPagedResult _$AppUserDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    AppUserDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AppUserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppUserDTOPagedResultToJson(
        AppUserDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

AuthResponseDTO _$AuthResponseDTOFromJson(Map<String, dynamic> json) =>
    AuthResponseDTO(
      userId: json['userId'] as String?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      url: json['url'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$AuthResponseDTOToJson(AuthResponseDTO instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'name': instance.name,
      'image': instance.image,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'url': instance.url,
      'phone': instance.phone,
      'active': instance.active,
    };

BrandDTO _$BrandDTOFromJson(Map<String, dynamic> json) => BrandDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BrandDTOToJson(BrandDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

BrandDTOPagedResult _$BrandDTOPagedResultFromJson(Map<String, dynamic> json) =>
    BrandDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => BrandDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BrandDTOPagedResultToJson(
        BrandDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) => CategoryDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CategoryDTOToJson(CategoryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

CategoryDTOPagedResult _$CategoryDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    CategoryDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CategoryDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CategoryDTOPagedResultToJson(
        CategoryDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

CompanyDTO _$CompanyDTOFromJson(Map<String, dynamic> json) => CompanyDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CompanyDTOToJson(CompanyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

CompanyDTOPagedResult _$CompanyDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    CompanyDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CompanyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CompanyDTOPagedResultToJson(
        CompanyDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

CostCenterDTO _$CostCenterDTOFromJson(Map<String, dynamic> json) =>
    CostCenterDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as int?,
    );

Map<String, dynamic> _$CostCenterDTOToJson(CostCenterDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
    };

CostCenterDTOPagedResult _$CostCenterDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    CostCenterDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CostCenterDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CostCenterDTOPagedResultToJson(
        CostCenterDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

DocumentDTO _$DocumentDTOFromJson(Map<String, dynamic> json) => DocumentDTO(
      id: json['id'] as String?,
      path: json['path'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$DocumentDTOToJson(DocumentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'fileName': instance.fileName,
    };

DocumentDTOPagedResult _$DocumentDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    DocumentDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => DocumentDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DocumentDTOPagedResultToJson(
        DocumentDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

EditUserResponse _$EditUserResponseFromJson(Map<String, dynamic> json) =>
    EditUserResponse(
      saved: json['saved'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$EditUserResponseToJson(EditUserResponse instance) =>
    <String, dynamic>{
      'saved': instance.saved,
      'image': instance.image,
    };

EngineDTO _$EngineDTOFromJson(Map<String, dynamic> json) => EngineDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      modelId: json['modelId'] as String?,
    );

Map<String, dynamic> _$EngineDTOToJson(EngineDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'modelId': instance.modelId,
    };

EngineDTOPagedResult _$EngineDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    EngineDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => EngineDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EngineDTOPagedResultToJson(
        EngineDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

FuelLoadDTO _$FuelLoadDTOFromJson(Map<String, dynamic> json) => FuelLoadDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      chargeDate: json['chargeDate'] == null
          ? null
          : DateTime.parse(json['chargeDate'] as String),
      chargeHour: json['chargeHour'] == null
          ? null
          : TimeSpan.fromJson(json['chargeHour'] as Map<String, dynamic>),
      liters: json['liters'] as int?,
      odometer: json['odometer'] as String?,
      unitCost: (json['unitCost'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      reference: json['reference'] as String?,
      full: json['full'] as bool?,
      documentId: json['documentId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$FuelLoadDTOToJson(FuelLoadDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'chargeDate': instance.chargeDate?.toIso8601String(),
      'chargeHour': instance.chargeHour?.toJson(),
      'liters': instance.liters,
      'odometer': instance.odometer,
      'unitCost': instance.unitCost,
      'amount': instance.amount,
      'reference': instance.reference,
      'full': instance.full,
      'documentId': instance.documentId,
      'vehicleId': instance.vehicleId,
    };

FuelLoadDetailDTO _$FuelLoadDetailDTOFromJson(Map<String, dynamic> json) =>
    FuelLoadDetailDTO(
      id: json['id'] as String?,
      ecoNumber: json['ecoNumber'] as String?,
      chargeDate: json['chargeDate'] as String?,
      totalAmount: json['totalAmount'] as String?,
    );

Map<String, dynamic> _$FuelLoadDetailDTOToJson(FuelLoadDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ecoNumber': instance.ecoNumber,
      'chargeDate': instance.chargeDate,
      'totalAmount': instance.totalAmount,
    };

FuelLoadDetailDTOPagedResult _$FuelLoadDetailDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    FuelLoadDetailDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => FuelLoadDetailDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelLoadDetailDTOPagedResultToJson(
        FuelLoadDetailDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

FuelMeasureDTO _$FuelMeasureDTOFromJson(Map<String, dynamic> json) =>
    FuelMeasureDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$FuelMeasureDTOToJson(FuelMeasureDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

FuelMeasureDTOPagedResult _$FuelMeasureDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    FuelMeasureDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => FuelMeasureDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelMeasureDTOPagedResultToJson(
        FuelMeasureDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

FuelTypeDTO _$FuelTypeDTOFromJson(Map<String, dynamic> json) => FuelTypeDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$FuelTypeDTOToJson(FuelTypeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

FuelTypeDTOPagedResult _$FuelTypeDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    FuelTypeDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => FuelTypeDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelTypeDTOPagedResultToJson(
        FuelTypeDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

FuelVendorDTO _$FuelVendorDTOFromJson(Map<String, dynamic> json) =>
    FuelVendorDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as int?,
    );

Map<String, dynamic> _$FuelVendorDTOToJson(FuelVendorDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
    };

FuelVendorDTOPagedResult _$FuelVendorDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    FuelVendorDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => FuelVendorDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelVendorDTOPagedResultToJson(
        FuelVendorDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ImageDTO _$ImageDTOFromJson(Map<String, dynamic> json) => ImageDTO(
      id: json['id'] as String?,
      path: json['path'] as String?,
      name: json['name'] as String?,
      extension: json['extension'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$ImageDTOToJson(ImageDTO instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'extension': instance.extension,
      'vehicleId': instance.vehicleId,
    };

ImageDTOPagedResult _$ImageDTOPagedResultFromJson(Map<String, dynamic> json) =>
    ImageDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ImageDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ImageDTOPagedResultToJson(
        ImageDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

IncidentDTO _$IncidentDTOFromJson(Map<String, dynamic> json) => IncidentDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$IncidentDTOToJson(IncidentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'vehicleId': instance.vehicleId,
    };

IncidentDTOPagedResult _$IncidentDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    IncidentDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => IncidentDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$IncidentDTOPagedResultToJson(
        IncidentDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

IncisoDTO _$IncisoDTOFromJson(Map<String, dynamic> json) => IncisoDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      policyId: json['policyId'] as String?,
    );

Map<String, dynamic> _$IncisoDTOToJson(IncisoDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'policyId': instance.policyId,
    };

IncisoDTOPagedResult _$IncisoDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    IncisoDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => IncisoDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$IncisoDTOPagedResultToJson(
        IncisoDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

InsuranceCompanyDTO _$InsuranceCompanyDTOFromJson(Map<String, dynamic> json) =>
    InsuranceCompanyDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$InsuranceCompanyDTOToJson(
        InsuranceCompanyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

InsuranceCompanyDTOPagedResult _$InsuranceCompanyDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    InsuranceCompanyDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  InsuranceCompanyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$InsuranceCompanyDTOPagedResultToJson(
        InsuranceCompanyDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) => LoginDTO(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDTOToJson(LoginDTO instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

MachineDTO _$MachineDTOFromJson(Map<String, dynamic> json) => MachineDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      drillRigId: json['drillRigId'] as int?,
    );

Map<String, dynamic> _$MachineDTOToJson(MachineDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'drillRigId': instance.drillRigId,
    };

MachineDTOPagedResult _$MachineDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MachineDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => MachineDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MachineDTOPagedResultToJson(
        MachineDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

MaintenanceDTO _$MaintenanceDTOFromJson(Map<String, dynamic> json) =>
    MaintenanceDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      startHour: json['startHour'] == null
          ? null
          : TimeSpan.fromJson(json['startHour'] as Map<String, dynamic>),
      finishHour: json['finishHour'] == null
          ? null
          : TimeSpan.fromJson(json['finishHour'] as Map<String, dynamic>),
      comments: json['comments'] as String?,
      odometer: json['odometer'] as String?,
      maintenanceTypeId: json['maintenanceTypeId'] as String?,
      maintenanceGroupId: json['maintenanceGroupId'] as String?,
      vendorId: json['vendorId'] as String?,
      vehicleId: json['vehicleId'] as String?,
      documentId: json['documentId'] as String?,
    );

Map<String, dynamic> _$MaintenanceDTOToJson(MaintenanceDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate?.toIso8601String(),
      'finishDate': instance.finishDate?.toIso8601String(),
      'startHour': instance.startHour?.toJson(),
      'finishHour': instance.finishHour?.toJson(),
      'comments': instance.comments,
      'odometer': instance.odometer,
      'maintenanceTypeId': instance.maintenanceTypeId,
      'maintenanceGroupId': instance.maintenanceGroupId,
      'vendorId': instance.vendorId,
      'vehicleId': instance.vehicleId,
      'documentId': instance.documentId,
    };

MaintenanceDetailDTO _$MaintenanceDetailDTOFromJson(
        Map<String, dynamic> json) =>
    MaintenanceDetailDTO(
      id: json['id'] as String?,
      vehicle: json['vehicle'] as String?,
      comments: json['comments'] as String?,
      period: json['period'] as String?,
    );

Map<String, dynamic> _$MaintenanceDetailDTOToJson(
        MaintenanceDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle': instance.vehicle,
      'comments': instance.comments,
      'period': instance.period,
    };

MaintenanceDetailDTOPagedResult _$MaintenanceDetailDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MaintenanceDetailDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  MaintenanceDetailDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MaintenanceDetailDTOPagedResultToJson(
        MaintenanceDetailDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

MaintenanceGroupDTO _$MaintenanceGroupDTOFromJson(Map<String, dynamic> json) =>
    MaintenanceGroupDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MaintenanceGroupDTOToJson(
        MaintenanceGroupDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

MaintenanceGroupDTOPagedResult _$MaintenanceGroupDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MaintenanceGroupDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  MaintenanceGroupDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MaintenanceGroupDTOPagedResultToJson(
        MaintenanceGroupDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

MaintenancePartDTO _$MaintenancePartDTOFromJson(Map<String, dynamic> json) =>
    MaintenancePartDTO(
      id: json['id'] as String?,
      maintenanceId: json['maintenanceId'] as String?,
      partId: json['partId'] as String?,
    );

Map<String, dynamic> _$MaintenancePartDTOToJson(MaintenancePartDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maintenanceId': instance.maintenanceId,
      'partId': instance.partId,
    };

MaintenancePartDTOPagedResult _$MaintenancePartDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MaintenancePartDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => MaintenancePartDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MaintenancePartDTOPagedResultToJson(
        MaintenancePartDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

MaintenanceTypeDTO _$MaintenanceTypeDTOFromJson(Map<String, dynamic> json) =>
    MaintenanceTypeDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MaintenanceTypeDTOToJson(MaintenanceTypeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

MaintenanceTypeDTOPagedResult _$MaintenanceTypeDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MaintenanceTypeDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => MaintenanceTypeDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MaintenanceTypeDTOPagedResultToJson(
        MaintenanceTypeDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

MeasureDTO _$MeasureDTOFromJson(Map<String, dynamic> json) => MeasureDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MeasureDTOToJson(MeasureDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

MeasureDTOPagedResult _$MeasureDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MeasureDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => MeasureDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MeasureDTOPagedResultToJson(
        MeasureDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ModelDTO _$ModelDTOFromJson(Map<String, dynamic> json) => ModelDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      brandId: json['brandId'] as String?,
    );

Map<String, dynamic> _$ModelDTOToJson(ModelDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'brandId': instance.brandId,
    };

ModelDTOPagedResult _$ModelDTOPagedResultFromJson(Map<String, dynamic> json) =>
    ModelDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ModelDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelDTOPagedResultToJson(
        ModelDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

PackagePolicyDTO _$PackagePolicyDTOFromJson(Map<String, dynamic> json) =>
    PackagePolicyDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PackagePolicyDTOToJson(PackagePolicyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

PackagePolicyDTOPagedResult _$PackagePolicyDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    PackagePolicyDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PackagePolicyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PackagePolicyDTOPagedResultToJson(
        PackagePolicyDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

PartDTO _$PartDTOFromJson(Map<String, dynamic> json) => PartDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as int?,
      vendorId: json['vendorId'] as String?,
    );

Map<String, dynamic> _$PartDTOToJson(PartDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
      'vendorId': instance.vendorId,
    };

PartDTOPagedResult _$PartDTOPagedResultFromJson(Map<String, dynamic> json) =>
    PartDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PartDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PartDTOPagedResultToJson(PartDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

PerformanceDTO _$PerformanceDTOFromJson(Map<String, dynamic> json) =>
    PerformanceDTO(
      value: (json['value'] as num?)?.toDouble(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$PerformanceDTOToJson(PerformanceDTO instance) =>
    <String, dynamic>{
      'value': instance.value,
      'date': instance.date,
    };

PolicyDTO _$PolicyDTOFromJson(Map<String, dynamic> json) => PolicyDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      quantityVehicles: json['quantityVehicles'] as int?,
      policyStatusId: json['policyStatusId'] as String?,
      packagePolicyId: json['packagePolicyId'] as String?,
      insuranceCompanyId: json['insuranceCompanyId'] as String?,
    );

Map<String, dynamic> _$PolicyDTOToJson(PolicyDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'quantityVehicles': instance.quantityVehicles,
      'policyStatusId': instance.policyStatusId,
      'packagePolicyId': instance.packagePolicyId,
      'insuranceCompanyId': instance.insuranceCompanyId,
    };

PolicyDTOPagedResult _$PolicyDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    PolicyDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PolicyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyDTOPagedResultToJson(
        PolicyDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

PolicyStatusDTO _$PolicyStatusDTOFromJson(Map<String, dynamic> json) =>
    PolicyStatusDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$PolicyStatusDTOToJson(PolicyStatusDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

PolicyStatusDTOPagedResult _$PolicyStatusDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    PolicyStatusDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PolicyStatusDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyStatusDTOPagedResultToJson(
        PolicyStatusDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: json['status'] as int?,
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

ProjectCompanyDTO _$ProjectCompanyDTOFromJson(Map<String, dynamic> json) =>
    ProjectCompanyDTO(
      project: json['project'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$ProjectCompanyDTOToJson(ProjectCompanyDTO instance) =>
    <String, dynamic>{
      'project': instance.project,
      'company': instance.company,
    };

ProjectDTO _$ProjectDTOFromJson(Map<String, dynamic> json) => ProjectDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as int?,
    );

Map<String, dynamic> _$ProjectDTOToJson(ProjectDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
    };

ProjectDTOPagedResult _$ProjectDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    ProjectDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ProjectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProjectDTOPagedResultToJson(
        ProjectDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ReminderDTO _$ReminderDTOFromJson(Map<String, dynamic> json) => ReminderDTO(
      id: json['id'] as String?,
      reminderDate: json['reminderDate'] as String?,
      code: json['code'] as String?,
      serviceName: json['serviceName'] as String?,
      vehicle: json['vehicle'] as String?,
    );

Map<String, dynamic> _$ReminderDTOToJson(ReminderDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reminderDate': instance.reminderDate,
      'code': instance.code,
      'serviceName': instance.serviceName,
      'vehicle': instance.vehicle,
    };

ReminderDTOPagedResult _$ReminderDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    ReminderDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ReminderDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ReminderDTOPagedResultToJson(
        ReminderDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ReminderPostDTO _$ReminderPostDTOFromJson(Map<String, dynamic> json) =>
    ReminderPostDTO(
      title: json['title'] as String?,
      frecuency: json['frecuency'] as int?,
      measureId: json['measureId'] as String?,
      frecuencyPeriod: json['frecuencyPeriod'] as int?,
      period: periodEnumFromJson(json['period']),
      kmBeforeReminder: json['kmBeforeReminder'] as String?,
      timeBefore: json['timeBefore'] as int?,
      periodToReminder: periodEnumFromJson(json['periodToReminder']),
      serviceId: json['serviceId'] as String,
      userId: json['userId'] as String?,
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$ReminderPostDTOToJson(ReminderPostDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'frecuency': instance.frecuency,
      'measureId': instance.measureId,
      'frecuencyPeriod': instance.frecuencyPeriod,
      'period': periodEnumToJson(instance.period),
      'kmBeforeReminder': instance.kmBeforeReminder,
      'timeBefore': instance.timeBefore,
      'periodToReminder': periodEnumToJson(instance.periodToReminder),
      'serviceId': instance.serviceId,
      'userId': instance.userId,
      'vehicleId': instance.vehicleId,
    };

ResetPasswordModel _$ResetPasswordModelFromJson(Map<String, dynamic> json) =>
    ResetPasswordModel(
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$ResetPasswordModelToJson(ResetPasswordModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'email': instance.email,
      'token': instance.token,
    };

RoleDTO _$RoleDTOFromJson(Map<String, dynamic> json) => RoleDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$RoleDTOToJson(RoleDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };

RoleDTOPagedResult _$RoleDTOPagedResultFromJson(Map<String, dynamic> json) =>
    RoleDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => RoleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleDTOPagedResultToJson(RoleDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

SelectDTO _$SelectDTOFromJson(Map<String, dynamic> json) => SelectDTO(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$SelectDTOToJson(SelectDTO instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

ServiceDTO _$ServiceDTOFromJson(Map<String, dynamic> json) => ServiceDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ServiceDTOToJson(ServiceDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

ServiceDTOPagedResult _$ServiceDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    ServiceDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ServiceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ServiceDTOPagedResultToJson(
        ServiceDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

TimeSpan _$TimeSpanFromJson(Map<String, dynamic> json) => TimeSpan(
      ticks: json['ticks'] as num?,
      days: json['days'] as int?,
      hours: json['hours'] as int?,
      milliseconds: json['milliseconds'] as int?,
      microseconds: json['microseconds'] as int?,
      nanoseconds: json['nanoseconds'] as int?,
      minutes: json['minutes'] as int?,
      seconds: json['seconds'] as int?,
      totalDays: (json['totalDays'] as num?)?.toDouble(),
      totalHours: (json['totalHours'] as num?)?.toDouble(),
      totalMilliseconds: (json['totalMilliseconds'] as num?)?.toDouble(),
      totalMicroseconds: (json['totalMicroseconds'] as num?)?.toDouble(),
      totalNanoseconds: (json['totalNanoseconds'] as num?)?.toDouble(),
      totalMinutes: (json['totalMinutes'] as num?)?.toDouble(),
      totalSeconds: (json['totalSeconds'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TimeSpanToJson(TimeSpan instance) => <String, dynamic>{
      'ticks': instance.ticks,
      'days': instance.days,
      'hours': instance.hours,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
      'nanoseconds': instance.nanoseconds,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'totalDays': instance.totalDays,
      'totalHours': instance.totalHours,
      'totalMilliseconds': instance.totalMilliseconds,
      'totalMicroseconds': instance.totalMicroseconds,
      'totalNanoseconds': instance.totalNanoseconds,
      'totalMinutes': instance.totalMinutes,
      'totalSeconds': instance.totalSeconds,
    };

UserPostDTO _$UserPostDTOFromJson(Map<String, dynamic> json) => UserPostDTO(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      roleName: json['roleName'] as String?,
    );

Map<String, dynamic> _$UserPostDTOToJson(UserPostDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roleName': instance.roleName,
    };

UserPutDTO _$UserPutDTOFromJson(Map<String, dynamic> json) => UserPutDTO(
      imageFile: json['imageFile'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      url: json['url'] as String?,
      countryCode: json['countryCode'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      phone: json['phone'] as String,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserPutDTOToJson(UserPutDTO instance) =>
    <String, dynamic>{
      'imageFile': instance.imageFile,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'url': instance.url,
      'countryCode': instance.countryCode,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'costPerAppointment': instance.costPerAppointment,
    };

UserVehicleDTO _$UserVehicleDTOFromJson(Map<String, dynamic> json) =>
    UserVehicleDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as String?,
      userId: json['userId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$UserVehicleDTOToJson(UserVehicleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
      'userId': instance.userId,
      'vehicleId': instance.vehicleId,
    };

UserVehicleDTOPagedResult _$UserVehicleDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    UserVehicleDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => UserVehicleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserVehicleDTOPagedResultToJson(
        UserVehicleDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VehicleDTO _$VehicleDTOFromJson(Map<String, dynamic> json) => VehicleDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      vin: json['vin'] as String,
      machineId: json['machineId'] as String,
      economicNumber: json['economicNumber'] as String?,
      assignedId: json['assignedId'] as String?,
      brandId: json['brandId'] as String?,
      modelId: json['modelId'] as String?,
      modelYear: json['modelYear'] as int?,
      engineId: json['engineId'] as String?,
      policyId: json['policyId'] as String?,
      incisoId: json['incisoId'] as String?,
      packagePolicyId: json['packagePolicyId'] as String?,
      measureId: json['measureId'] as String?,
      fuelMeasureId: json['fuelMeasureId'] as String?,
      fuelTypeId: json['fuelTypeId'] as String?,
      photographs: (json['photographs'] as List<dynamic>?)
              ?.map((e) => ImageDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      bill: json['bill'] == null
          ? null
          : DocumentDTO.fromJson(json['bill'] as Map<String, dynamic>),
      pedimento: json['pedimento'] == null
          ? null
          : DocumentDTO.fromJson(json['pedimento'] as Map<String, dynamic>),
      placas: json['placas'] as String?,
      drillRigId: json['drillRigId'] as int?,
      documentId: json['documentId'] as String?,
      vehicleTypeId: json['vehicleTypeId'] as String?,
      companyId: json['companyId'] as String?,
    );

Map<String, dynamic> _$VehicleDTOToJson(VehicleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'vin': instance.vin,
      'machineId': instance.machineId,
      'economicNumber': instance.economicNumber,
      'assignedId': instance.assignedId,
      'brandId': instance.brandId,
      'modelId': instance.modelId,
      'modelYear': instance.modelYear,
      'engineId': instance.engineId,
      'policyId': instance.policyId,
      'incisoId': instance.incisoId,
      'packagePolicyId': instance.packagePolicyId,
      'measureId': instance.measureId,
      'fuelMeasureId': instance.fuelMeasureId,
      'fuelTypeId': instance.fuelTypeId,
      'photographs': instance.photographs?.map((e) => e.toJson()).toList(),
      'bill': instance.bill?.toJson(),
      'pedimento': instance.pedimento?.toJson(),
      'placas': instance.placas,
      'drillRigId': instance.drillRigId,
      'documentId': instance.documentId,
      'vehicleTypeId': instance.vehicleTypeId,
      'companyId': instance.companyId,
    };

VehicleDTOPagedResult _$VehicleDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    VehicleDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VehicleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleDTOPagedResultToJson(
        VehicleDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VehicleDetailDTO _$VehicleDetailDTOFromJson(Map<String, dynamic> json) =>
    VehicleDetailDTO(
      id: json['id'] as String?,
      description: json['description'] as String?,
      economicNumber: json['economicNumber'] as String?,
      vin: json['vin'] as String?,
      placas: json['placas'] as String?,
      status: vehicleStatusEnumFromJson(json['status']),
      category: json['category'] as String?,
      machine: json['machine'] as String?,
      project: json['project'] as String?,
      company: json['company'] as String?,
      assignment: json['assignment'] as String?,
      performance: (json['performance'] as List<dynamic>?)
              ?.map((e) => PerformanceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      statistics: (json['statistics'] as List<dynamic>?)
              ?.map((e) =>
                  VehicleStatisticsDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fuelLoads: json['fuelLoads'] == null
          ? null
          : FuelLoadDetailDTOPagedResult.fromJson(
              json['fuelLoads'] as Map<String, dynamic>),
      listMaintenances: json['listMaintenances'] == null
          ? null
          : MaintenanceDetailDTOPagedResult.fromJson(
              json['listMaintenances'] as Map<String, dynamic>),
      photographs: (json['photographs'] as List<dynamic>?)
              ?.map((e) => ImageDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      bill: json['bill'] == null
          ? null
          : DocumentDTO.fromJson(json['bill'] as Map<String, dynamic>),
      pedimento: json['pedimento'] == null
          ? null
          : DocumentDTO.fromJson(json['pedimento'] as Map<String, dynamic>),
      listReminders: json['listReminders'] == null
          ? null
          : ReminderDTOPagedResult.fromJson(
              json['listReminders'] as Map<String, dynamic>),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$VehicleDetailDTOToJson(VehicleDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'economicNumber': instance.economicNumber,
      'vin': instance.vin,
      'placas': instance.placas,
      'status': vehicleStatusEnumToJson(instance.status),
      'category': instance.category,
      'machine': instance.machine,
      'project': instance.project,
      'company': instance.company,
      'assignment': instance.assignment,
      'performance': instance.performance?.map((e) => e.toJson()).toList(),
      'statistics': instance.statistics?.map((e) => e.toJson()).toList(),
      'fuelLoads': instance.fuelLoads?.toJson(),
      'listMaintenances': instance.listMaintenances?.toJson(),
      'photographs': instance.photographs?.map((e) => e.toJson()).toList(),
      'bill': instance.bill?.toJson(),
      'pedimento': instance.pedimento?.toJson(),
      'listReminders': instance.listReminders?.toJson(),
      'active': instance.active,
    };

VehicleFormDTO _$VehicleFormDTOFromJson(Map<String, dynamic> json) =>
    VehicleFormDTO(
      assignedId: json['assignedId'] as String?,
      brandId: json['brandId'] as String?,
      modelId: json['modelId'] as String?,
      modelYear: json['modelYear'] as int?,
      engineId: json['engineId'] as String?,
      placas: json['placas'] as String?,
      drillRigId: json['drillRigId'] as int?,
      policyId: json['policyId'] as String?,
      incisoId: json['incisoId'] as String?,
      packagePolicyId: json['packagePolicyId'] as String?,
      measureId: json['measureId'] as String?,
      fuelMeasureId: json['fuelMeasureId'] as String?,
      fuelTypeId: json['fuelTypeId'] as String?,
      companyId: json['companyId'] as String?,
      categoryId: json['categoryId'] as String?,
      tankSize: json['tankSize'] as int?,
      active: json['active'] as bool?,
      photographsFiles: (json['photographsFiles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      billFile: json['billFile'] as String?,
      pedimentoFile: json['pedimentoFile'] as String?,
      description: json['description'] as String?,
      vin: json['vin'] as String?,
      machineId: json['machineId'] as String?,
      economicNumber: json['economicNumber'] as String?,
      photographs: (json['photographs'] as List<dynamic>?)
              ?.map((e) => ImageDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      bill: json['bill'] == null
          ? null
          : DocumentDTO.fromJson(json['bill'] as Map<String, dynamic>),
      pedimento: json['pedimento'] == null
          ? null
          : DocumentDTO.fromJson(json['pedimento'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleFormDTOToJson(VehicleFormDTO instance) =>
    <String, dynamic>{
      'assignedId': instance.assignedId,
      'brandId': instance.brandId,
      'modelId': instance.modelId,
      'modelYear': instance.modelYear,
      'engineId': instance.engineId,
      'placas': instance.placas,
      'drillRigId': instance.drillRigId,
      'policyId': instance.policyId,
      'incisoId': instance.incisoId,
      'packagePolicyId': instance.packagePolicyId,
      'measureId': instance.measureId,
      'fuelMeasureId': instance.fuelMeasureId,
      'fuelTypeId': instance.fuelTypeId,
      'companyId': instance.companyId,
      'categoryId': instance.categoryId,
      'tankSize': instance.tankSize,
      'active': instance.active,
      'photographsFiles': instance.photographsFiles,
      'billFile': instance.billFile,
      'pedimentoFile': instance.pedimentoFile,
      'description': instance.description,
      'vin': instance.vin,
      'machineId': instance.machineId,
      'economicNumber': instance.economicNumber,
      'photographs': instance.photographs?.map((e) => e.toJson()).toList(),
      'bill': instance.bill?.toJson(),
      'pedimento': instance.pedimento?.toJson(),
    };

VehicleInboxDTO _$VehicleInboxDTOFromJson(Map<String, dynamic> json) =>
    VehicleInboxDTO(
      id: json['id'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      assignedTo: json['assignedTo'] as String?,
      economicNumber: json['economicNumber'] as String?,
      vin: json['vin'] as String?,
      placas: json['placas'] as String?,
      category: json['category'] as String?,
      projectName: json['projectName'] as String?,
      machineName: json['machineName'] as String?,
      machineId: json['machineId'] as String?,
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$VehicleInboxDTOToJson(VehicleInboxDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'assignedTo': instance.assignedTo,
      'economicNumber': instance.economicNumber,
      'vin': instance.vin,
      'placas': instance.placas,
      'category': instance.category,
      'projectName': instance.projectName,
      'machineName': instance.machineName,
      'machineId': instance.machineId,
      'companyName': instance.companyName,
    };

VehicleInboxDTOPagedResult _$VehicleInboxDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    VehicleInboxDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VehicleInboxDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleInboxDTOPagedResultToJson(
        VehicleInboxDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VehicleNewEditDTO _$VehicleNewEditDTOFromJson(Map<String, dynamic> json) =>
    VehicleNewEditDTO(
      vehicle: json['vehicle'] == null
          ? null
          : VehicleFormDTO.fromJson(json['vehicle'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      brands: (json['brands'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      models: (json['models'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      engines: (json['engines'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      incisos: (json['incisos'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      packagePolicies: (json['packagePolicies'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      measures: (json['measures'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fuelMeasures: (json['fuelMeasures'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fuelTypes: (json['fuelTypes'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      machines: (json['machines'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      companies: (json['companies'] as List<dynamic>?)
              ?.map((e) => SelectDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleNewEditDTOToJson(VehicleNewEditDTO instance) =>
    <String, dynamic>{
      'vehicle': instance.vehicle?.toJson(),
      'users': instance.users?.map((e) => e.toJson()).toList(),
      'brands': instance.brands?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'models': instance.models?.map((e) => e.toJson()).toList(),
      'engines': instance.engines?.map((e) => e.toJson()).toList(),
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
      'incisos': instance.incisos?.map((e) => e.toJson()).toList(),
      'packagePolicies':
          instance.packagePolicies?.map((e) => e.toJson()).toList(),
      'measures': instance.measures?.map((e) => e.toJson()).toList(),
      'fuelMeasures': instance.fuelMeasures?.map((e) => e.toJson()).toList(),
      'fuelTypes': instance.fuelTypes?.map((e) => e.toJson()).toList(),
      'machines': instance.machines?.map((e) => e.toJson()).toList(),
      'companies': instance.companies?.map((e) => e.toJson()).toList(),
    };

VehiclePostDTO _$VehiclePostDTOFromJson(Map<String, dynamic> json) =>
    VehiclePostDTO(
      vin: json['vin'] as String,
      machineId: json['machineId'] as String,
      description: json['description'] as String,
      economicNumber: json['economicNumber'] as String,
      assignedId: json['assignedId'] as String?,
      brandId: json['brandId'] as String?,
      modelId: json['modelId'] as String?,
      modelYear: json['modelYear'] as int?,
      engineId: json['engineId'] as String?,
      placas: json['placas'] as String?,
      drillRigId: json['drillRigId'] as int?,
      policyId: json['policyId'] as String?,
      incisoId: json['incisoId'] as String?,
      packagePolicyId: json['packagePolicyId'] as String?,
      measureId: json['measureId'] as String?,
      fuelMeasureId: json['fuelMeasureId'] as String?,
      fuelTypeId: json['fuelTypeId'] as String?,
      companyId: json['companyId'] as String?,
      categoryId: json['categoryId'] as String?,
      tankSize: json['tankSize'] as int?,
      active: json['active'] as bool?,
      photographsFiles: (json['photographsFiles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      billFile: json['billFile'] as String?,
      pedimentoFile: json['pedimentoFile'] as String?,
    );

Map<String, dynamic> _$VehiclePostDTOToJson(VehiclePostDTO instance) =>
    <String, dynamic>{
      'vin': instance.vin,
      'machineId': instance.machineId,
      'description': instance.description,
      'economicNumber': instance.economicNumber,
      'assignedId': instance.assignedId,
      'brandId': instance.brandId,
      'modelId': instance.modelId,
      'modelYear': instance.modelYear,
      'engineId': instance.engineId,
      'placas': instance.placas,
      'drillRigId': instance.drillRigId,
      'policyId': instance.policyId,
      'incisoId': instance.incisoId,
      'packagePolicyId': instance.packagePolicyId,
      'measureId': instance.measureId,
      'fuelMeasureId': instance.fuelMeasureId,
      'fuelTypeId': instance.fuelTypeId,
      'companyId': instance.companyId,
      'categoryId': instance.categoryId,
      'tankSize': instance.tankSize,
      'active': instance.active,
      'photographsFiles': instance.photographsFiles,
      'billFile': instance.billFile,
      'pedimentoFile': instance.pedimentoFile,
    };

VehiclePutDTO _$VehiclePutDTOFromJson(Map<String, dynamic> json) =>
    VehiclePutDTO(
      vin: json['vin'] as String,
      machineId: json['machineId'] as String,
      description: json['description'] as String,
      economicNumber: json['economicNumber'] as String,
      assignedId: json['assignedId'] as String?,
      brandId: json['brandId'] as String?,
      modelId: json['modelId'] as String?,
      modelYear: json['modelYear'] as int?,
      engineId: json['engineId'] as String?,
      placas: json['placas'] as String?,
      drillRigId: json['drillRigId'] as int?,
      policyId: json['policyId'] as String?,
      incisoId: json['incisoId'] as String?,
      packagePolicyId: json['packagePolicyId'] as String?,
      measureId: json['measureId'] as String?,
      fuelMeasureId: json['fuelMeasureId'] as String?,
      fuelTypeId: json['fuelTypeId'] as String?,
      companyId: json['companyId'] as String?,
      categoryId: json['categoryId'] as String?,
      tankSize: json['tankSize'] as int?,
      active: json['active'] as bool?,
      photographsFiles: (json['photographsFiles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      billFile: json['billFile'] as String?,
      pedimentoFile: json['pedimentoFile'] as String?,
      photosToRemove: (json['photosToRemove'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehiclePutDTOToJson(VehiclePutDTO instance) =>
    <String, dynamic>{
      'vin': instance.vin,
      'machineId': instance.machineId,
      'description': instance.description,
      'economicNumber': instance.economicNumber,
      'assignedId': instance.assignedId,
      'brandId': instance.brandId,
      'modelId': instance.modelId,
      'modelYear': instance.modelYear,
      'engineId': instance.engineId,
      'placas': instance.placas,
      'drillRigId': instance.drillRigId,
      'policyId': instance.policyId,
      'incisoId': instance.incisoId,
      'packagePolicyId': instance.packagePolicyId,
      'measureId': instance.measureId,
      'fuelMeasureId': instance.fuelMeasureId,
      'fuelTypeId': instance.fuelTypeId,
      'companyId': instance.companyId,
      'categoryId': instance.categoryId,
      'tankSize': instance.tankSize,
      'active': instance.active,
      'photographsFiles': instance.photographsFiles,
      'billFile': instance.billFile,
      'pedimentoFile': instance.pedimentoFile,
      'photosToRemove': instance.photosToRemove,
    };

VehicleStatisticsDTO _$VehicleStatisticsDTOFromJson(
        Map<String, dynamic> json) =>
    VehicleStatisticsDTO(
      id: json['id'] as String?,
      date: json['date'] as String?,
      odometer: json['odometer'] as String?,
      performanceAverage: json['performanceAverage'] as String?,
      costKMAverage: json['costKMAverage'] as String?,
      costLTAverage: json['costLTAverage'] as String?,
      costTotalFuel: json['costTotalFuel'] as String?,
      costTotalMaintenance: json['costTotalMaintenance'] as String?,
      costAdditional: json['costAdditional'] as String?,
    );

Map<String, dynamic> _$VehicleStatisticsDTOToJson(
        VehicleStatisticsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'odometer': instance.odometer,
      'performanceAverage': instance.performanceAverage,
      'costKMAverage': instance.costKMAverage,
      'costLTAverage': instance.costLTAverage,
      'costTotalFuel': instance.costTotalFuel,
      'costTotalMaintenance': instance.costTotalMaintenance,
      'costAdditional': instance.costAdditional,
    };

VehicleTypeDTO _$VehicleTypeDTOFromJson(Map<String, dynamic> json) =>
    VehicleTypeDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      inUse: json['inUse'] as bool?,
    );

Map<String, dynamic> _$VehicleTypeDTOToJson(VehicleTypeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'inUse': instance.inUse,
    };

VehicleTypeDTOPagedResult _$VehicleTypeDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    VehicleTypeDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VehicleTypeDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleTypeDTOPagedResultToJson(
        VehicleTypeDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

VendorDTO _$VendorDTOFromJson(Map<String, dynamic> json) => VendorDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$VendorDTOToJson(VendorDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

VendorDTOPagedResult _$VendorDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    VendorDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VendorDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VendorDTOPagedResultToJson(
        VendorDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

ApiUserIdPut$RequestBody _$ApiUserIdPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    ApiUserIdPut$RequestBody(
      imageFile: json['imageFile'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      url: json['Url'] as String?,
      countryCode: json['countryCode'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      gender: genderEnumFromJson(json['gender']),
      phone: json['phone'] as String,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      costPerAppointment: (json['costPerAppointment'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ApiUserIdPut$RequestBodyToJson(
        ApiUserIdPut$RequestBody instance) =>
    <String, dynamic>{
      'imageFile': instance.imageFile,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'Url': instance.url,
      'countryCode': instance.countryCode,
      'titleAbbreviation': instance.titleAbbreviation,
      'gender': genderEnumToJson(instance.gender),
      'phone': instance.phone,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthDate': instance.birthDate?.toIso8601String(),
      'costPerAppointment': instance.costPerAppointment,
    };

ApiUserUploadImageIdPost$RequestBody
    _$ApiUserUploadImageIdPost$RequestBodyFromJson(Map<String, dynamic> json) =>
        ApiUserUploadImageIdPost$RequestBody(
          image: json['image'] as String?,
        );

Map<String, dynamic> _$ApiUserUploadImageIdPost$RequestBodyToJson(
        ApiUserUploadImageIdPost$RequestBody instance) =>
    <String, dynamic>{
      'image': instance.image,
    };
