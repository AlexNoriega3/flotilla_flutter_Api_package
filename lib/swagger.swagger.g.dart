// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

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

AppUsuario _$AppUsuarioFromJson(Map<String, dynamic> json) => AppUsuario(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      normalizedUserName: json['normalizedUserName'] as String?,
      normalizedEmail: json['normalizedEmail'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      passwordHash: json['passwordHash'] as String?,
      securityStamp: json['securityStamp'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
      twoFactorEnabled: json['twoFactorEnabled'] as bool?,
      lockoutEnd: json['lockoutEnd'] == null
          ? null
          : DateTime.parse(json['lockoutEnd'] as String),
      lockoutEnabled: json['lockoutEnabled'] as bool?,
      accessFailedCount: json['accessFailedCount'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      url: json['url'] as String?,
      titleAbbreviation: json['titleAbbreviation'] as String?,
      image: json['image'] as String?,
      gender: genderEnumFromJson(json['gender']),
      active: json['active'] as bool?,
      parentId: json['parentId'] as String?,
      projectId: json['projectId'] as String?,
      parent: json['parent'] == null
          ? null
          : AppUsuario.fromJson(json['parent'] as Map<String, dynamic>),
      subordinates: (json['subordinates'] as List<dynamic>?)
              ?.map((e) => AppUsuario.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      userRoles: (json['userRoles'] as List<dynamic>?)
              ?.map((e) => UserRole.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AppUsuarioToJson(AppUsuario instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'normalizedUserName': instance.normalizedUserName,
      'normalizedEmail': instance.normalizedEmail,
      'emailConfirmed': instance.emailConfirmed,
      'passwordHash': instance.passwordHash,
      'securityStamp': instance.securityStamp,
      'concurrencyStamp': instance.concurrencyStamp,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberConfirmed': instance.phoneNumberConfirmed,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'lockoutEnd': instance.lockoutEnd?.toIso8601String(),
      'lockoutEnabled': instance.lockoutEnabled,
      'accessFailedCount': instance.accessFailedCount,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'name': instance.name,
      'email': instance.email,
      'url': instance.url,
      'titleAbbreviation': instance.titleAbbreviation,
      'image': instance.image,
      'gender': genderEnumToJson(instance.gender),
      'active': instance.active,
      'parentId': instance.parentId,
      'projectId': instance.projectId,
      'parent': instance.parent?.toJson(),
      'subordinates': instance.subordinates?.map((e) => e.toJson()).toList(),
      'userRoles': instance.userRoles?.map((e) => e.toJson()).toList(),
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
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
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
      'roles': instance.roles,
    };

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
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

CompanyDTO _$CompanyDTOFromJson(Map<String, dynamic> json) => CompanyDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CompanyDTOToJson(CompanyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
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

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      path: json['path'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'path': instance.path,
      'fileName': instance.fileName,
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
      model: json['model'] == null
          ? null
          : ModelDTO.fromJson(json['model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EngineDTOToJson(EngineDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'modelId': instance.modelId,
      'model': instance.model?.toJson(),
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

FuelLoad _$FuelLoadFromJson(Map<String, dynamic> json) => FuelLoad(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      amount: (json['amount'] as num?)?.toDouble(),
      reference: json['reference'] as String?,
      full: json['full'] as bool?,
      liters: (json['liters'] as num?)?.toDouble(),
      unitCost: (json['unitCost'] as num?)?.toDouble(),
      vehicleId: json['vehicleId'] as String?,
      documentId: json['documentId'] as String?,
      chargeDate: json['chargeDate'] == null
          ? null
          : DateTime.parse(json['chargeDate'] as String),
      chargeHour: json['chargeHour'] == null
          ? null
          : TimeSpan.fromJson(json['chargeHour'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FuelLoadToJson(FuelLoad instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'amount': instance.amount,
      'reference': instance.reference,
      'full': instance.full,
      'liters': instance.liters,
      'unitCost': instance.unitCost,
      'vehicleId': instance.vehicleId,
      'documentId': instance.documentId,
      'chargeDate': instance.chargeDate?.toIso8601String(),
      'chargeHour': instance.chargeHour?.toJson(),
      'vehicle': instance.vehicle?.toJson(),
      'document': instance.document?.toJson(),
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
      unitCost: (json['unitCost'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      reference: json['reference'] as String?,
      full: json['full'] as bool?,
      documentId: json['documentId'] as int?,
      vehicleId: json['vehicleId'] as int?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : DocumentDTO.fromJson(json['document'] as Map<String, dynamic>),
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
      'unitCost': instance.unitCost,
      'amount': instance.amount,
      'reference': instance.reference,
      'full': instance.full,
      'documentId': instance.documentId,
      'vehicleId': instance.vehicleId,
      'vehicle': instance.vehicle?.toJson(),
      'document': instance.document?.toJson(),
    };

FuelLoadDTOPagedResult _$FuelLoadDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    FuelLoadDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => FuelLoadDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelLoadDTOPagedResultToJson(
        FuelLoadDTOPagedResult instance) =>
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
      fuelLoads: (json['fuelLoads'] as List<dynamic>?)
              ?.map((e) => FuelLoadDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelTypeDTOToJson(FuelTypeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'fuelLoads': instance.fuelLoads?.map((e) => e.toJson()).toList(),
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
      fuelLoads: (json['fuelLoads'] as List<dynamic>?)
              ?.map((e) => FuelLoadDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FuelVendorDTOToJson(FuelVendorDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
      'fuelLoads': instance.fuelLoads?.map((e) => e.toJson()).toList(),
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
      vehicle: json['vehicle'] == null
          ? null
          : VehicleDTO.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageDTOToJson(ImageDTO instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'extension': instance.extension,
      'vehicleId': instance.vehicleId,
      'vehicle': instance.vehicle?.toJson(),
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
      vehicle: json['vehicle'] == null
          ? null
          : VehicleDTO.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IncidentDTOToJson(IncidentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'vehicleId': instance.vehicleId,
      'vehicle': instance.vehicle?.toJson(),
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
      vehicleId: json['vehicleId'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : VehicleDTO.fromJson(json['vehicle'] as Map<String, dynamic>),
      policyId: json['policyId'] as String?,
      policy: json['policy'] == null
          ? null
          : PolicyDTO.fromJson(json['policy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IncisoDTOToJson(IncisoDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vehicleId': instance.vehicleId,
      'vehicle': instance.vehicle?.toJson(),
      'policyId': instance.policyId,
      'policy': instance.policy?.toJson(),
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

InsuranceCompany _$InsuranceCompanyFromJson(Map<String, dynamic> json) =>
    InsuranceCompany(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$InsuranceCompanyToJson(InsuranceCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
    };

InsuranceCompanyDTO _$InsuranceCompanyDTOFromJson(Map<String, dynamic> json) =>
    InsuranceCompanyDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => PolicyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$InsuranceCompanyDTOToJson(
        InsuranceCompanyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
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
      vendor: json['vendor'] == null
          ? null
          : VendorDTO.fromJson(json['vendor'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : DocumentDTO.fromJson(json['document'] as Map<String, dynamic>),
      maintenanceGroup: json['maintenanceGroup'] == null
          ? null
          : MaintenanceGroupDTO.fromJson(
              json['maintenanceGroup'] as Map<String, dynamic>),
      maintenanceType: json['maintenanceType'] == null
          ? null
          : MaintenanceTypeDTO.fromJson(
              json['maintenanceType'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : VehicleDTO.fromJson(json['vehicle'] as Map<String, dynamic>),
      maintenanceParts: (json['maintenanceParts'] as List<dynamic>?)
              ?.map(
                  (e) => MaintenancePartDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
      'vendor': instance.vendor?.toJson(),
      'document': instance.document?.toJson(),
      'maintenanceGroup': instance.maintenanceGroup?.toJson(),
      'maintenanceType': instance.maintenanceType?.toJson(),
      'vehicle': instance.vehicle?.toJson(),
      'maintenanceParts':
          instance.maintenanceParts?.map((e) => e.toJson()).toList(),
    };

MaintenanceDTOPagedResult _$MaintenanceDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    MaintenanceDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => MaintenanceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MaintenanceDTOPagedResultToJson(
        MaintenanceDTOPagedResult instance) =>
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
      maintenances: (json['maintenances'] as List<dynamic>?)
              ?.map((e) => MaintenanceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MaintenanceGroupDTOToJson(
        MaintenanceGroupDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'maintenances': instance.maintenances?.map((e) => e.toJson()).toList(),
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
      maintenance: json['maintenance'] == null
          ? null
          : MaintenanceDTO.fromJson(
              json['maintenance'] as Map<String, dynamic>),
      $part: json['part'] == null
          ? null
          : PartDTO.fromJson(json['part'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaintenancePartDTOToJson(MaintenancePartDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maintenanceId': instance.maintenanceId,
      'partId': instance.partId,
      'maintenance': instance.maintenance?.toJson(),
      'part': instance.$part?.toJson(),
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

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      brandId: json['brandId'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'brandId': instance.brandId,
      'brand': instance.brand?.toJson(),
    };

ModelDTO _$ModelDTOFromJson(Map<String, dynamic> json) => ModelDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      brandId: json['brandId'] as int?,
      brand: json['brand'] == null
          ? null
          : BrandDTO.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelDTOToJson(ModelDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'brandId': instance.brandId,
      'brand': instance.brand?.toJson(),
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

PartDTO _$PartDTOFromJson(Map<String, dynamic> json) => PartDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as int?,
      vendorId: json['vendorId'] as String?,
      vendor: json['vendor'] == null
          ? null
          : VendorDTO.fromJson(json['vendor'] as Map<String, dynamic>),
      maintenanceParts: (json['maintenanceParts'] as List<dynamic>?)
              ?.map(
                  (e) => MaintenancePartDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PartDTOToJson(PartDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
      'vendorId': instance.vendorId,
      'vendor': instance.vendor?.toJson(),
      'maintenanceParts':
          instance.maintenanceParts?.map((e) => e.toJson()).toList(),
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

Policy _$PolicyFromJson(Map<String, dynamic> json) => Policy(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
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
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      policyStatusId: json['policyStatusId'] as String?,
      policyStatus: json['policyStatus'] == null
          ? null
          : PolicyStatus.fromJson(json['policyStatus'] as Map<String, dynamic>),
      policyPacketId: json['policyPacketId'] as String?,
      policyPacket: json['policyPacket'] == null
          ? null
          : PolicyPacket.fromJson(json['policyPacket'] as Map<String, dynamic>),
      insuranceCompanyId: json['insuranceCompanyId'] as String?,
      insuranceCompany: json['insuranceCompany'] == null
          ? null
          : InsuranceCompany.fromJson(
              json['insuranceCompany'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PolicyToJson(Policy instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'quantityVehicles': instance.quantityVehicles,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
      'policyStatusId': instance.policyStatusId,
      'policyStatus': instance.policyStatus?.toJson(),
      'policyPacketId': instance.policyPacketId,
      'policyPacket': instance.policyPacket?.toJson(),
      'insuranceCompanyId': instance.insuranceCompanyId,
      'insuranceCompany': instance.insuranceCompany?.toJson(),
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
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      policyStatusId: json['policyStatusId'] as String?,
      policyStatus: json['policyStatus'] == null
          ? null
          : PolicyStatusDTO.fromJson(
              json['policyStatus'] as Map<String, dynamic>),
      policyPacketId: json['policyPacketId'] as String?,
      policyPacket: json['policyPacket'] == null
          ? null
          : PolicyPacketDTO.fromJson(
              json['policyPacket'] as Map<String, dynamic>),
      insuranceCompanyId: json['insuranceCompanyId'] as String?,
      insuranceCompany: json['insuranceCompany'] == null
          ? null
          : InsuranceCompanyDTO.fromJson(
              json['insuranceCompany'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PolicyDTOToJson(PolicyDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'quantityVehicles': instance.quantityVehicles,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
      'policyStatusId': instance.policyStatusId,
      'policyStatus': instance.policyStatus?.toJson(),
      'policyPacketId': instance.policyPacketId,
      'policyPacket': instance.policyPacket?.toJson(),
      'insuranceCompanyId': instance.insuranceCompanyId,
      'insuranceCompany': instance.insuranceCompany?.toJson(),
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

PolicyPacket _$PolicyPacketFromJson(Map<String, dynamic> json) => PolicyPacket(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyPacketToJson(PolicyPacket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
    };

PolicyPacketDTO _$PolicyPacketDTOFromJson(Map<String, dynamic> json) =>
    PolicyPacketDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => PolicyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyPacketDTOToJson(PolicyPacketDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
    };

PolicyPacketDTOPagedResult _$PolicyPacketDTOPagedResultFromJson(
        Map<String, dynamic> json) =>
    PolicyPacketDTOPagedResult(
      totalCount: json['totalCount'] as int?,
      pageNumber: json['pageNumber'] as int?,
      recordNumber: json['recordNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PolicyPacketDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyPacketDTOPagedResultToJson(
        PolicyPacketDTOPagedResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'recordNumber': instance.recordNumber,
      'totalPages': instance.totalPages,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

PolicyStatus _$PolicyStatusFromJson(Map<String, dynamic> json) => PolicyStatus(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyStatusToJson(PolicyStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
    };

PolicyStatusDTO _$PolicyStatusDTOFromJson(Map<String, dynamic> json) =>
    PolicyStatusDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => PolicyDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PolicyStatusDTOToJson(PolicyStatusDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'policies': instance.policies?.map((e) => e.toJson()).toList(),
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

ProjectDTO _$ProjectDTOFromJson(Map<String, dynamic> json) => ProjectDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as int?,
      packetId: json['packetId'] as String?,
      packet: json['packet'] == null
          ? null
          : PolicyDTO.fromJson(json['packet'] as Map<String, dynamic>),
      documentId: json['documentId'] as String?,
      document: json['document'] == null
          ? null
          : DocumentDTO.fromJson(json['document'] as Map<String, dynamic>),
      maintenanceId: json['maintenanceId'] as String?,
      maintenance: json['maintenance'] == null
          ? null
          : MaintenanceDTO.fromJson(
              json['maintenance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProjectDTOToJson(ProjectDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
      'packetId': instance.packetId,
      'packet': instance.packet?.toJson(),
      'documentId': instance.documentId,
      'document': instance.document?.toJson(),
      'maintenanceId': instance.maintenanceId,
      'maintenance': instance.maintenance?.toJson(),
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

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      id: json['id'] as String?,
      name: json['name'] as String?,
      normalizedName: json['normalizedName'] as String?,
      concurrencyStamp: json['concurrencyStamp'] as String?,
      active: json['active'] as bool?,
      createBy: json['createBy'] as String?,
      updateBy: json['updateBy'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      dtUpdateDate: json['dtUpdateDate'] == null
          ? null
          : DateTime.parse(json['dtUpdateDate'] as String),
      userRoles: (json['userRoles'] as List<dynamic>?)
              ?.map((e) => UserRole.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'normalizedName': instance.normalizedName,
      'concurrencyStamp': instance.concurrencyStamp,
      'active': instance.active,
      'createBy': instance.createBy,
      'updateBy': instance.updateBy,
      'createDate': instance.createDate?.toIso8601String(),
      'dtUpdateDate': instance.dtUpdateDate?.toIso8601String(),
      'userRoles': instance.userRoles?.map((e) => e.toJson()).toList(),
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
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ServiceDTOToJson(ServiceDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
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

UserRole _$UserRoleFromJson(Map<String, dynamic> json) => UserRole(
      userId: json['userId'] as String?,
      roleId: json['roleId'] as String?,
      user: json['user'] == null
          ? null
          : AppUsuario.fromJson(json['user'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'userId': instance.userId,
      'roleId': instance.roleId,
      'user': instance.user?.toJson(),
      'role': instance.role?.toJson(),
    };

UserVehicleDTO _$UserVehicleDTOFromJson(Map<String, dynamic> json) =>
    UserVehicleDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      externalId: json['externalId'] as String?,
      userId: json['userId'] as String?,
      user: json['user'] == null
          ? null
          : AppUsuario.fromJson(json['user'] as Map<String, dynamic>),
      vehicleId: json['vehicleId'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserVehicleDTOToJson(UserVehicleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'externalId': instance.externalId,
      'userId': instance.userId,
      'user': instance.user?.toJson(),
      'vehicleId': instance.vehicleId,
      'vehicle': instance.vehicle?.toJson(),
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

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      drillRigId: json['drillRigId'] as int?,
      vin: json['vin'] as String?,
      placas: json['placas'] as String?,
      inciso: json['inciso'] as String?,
      economicNumber: json['economicNumber'] as String?,
      modelId: json['modelId'] as String?,
      model: json['model'] == null
          ? null
          : Model.fromJson(json['model'] as Map<String, dynamic>),
      documentId: json['documentId'] as String?,
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
      policyId: json['policyId'] as String?,
      policy: json['policy'] == null
          ? null
          : Policy.fromJson(json['policy'] as Map<String, dynamic>),
      vehicleTypeId: json['vehicleTypeId'] as String?,
      vehicleType: json['vehicleType'] == null
          ? null
          : VehicleType.fromJson(json['vehicleType'] as Map<String, dynamic>),
      fuelLoads: (json['fuelLoads'] as List<dynamic>?)
              ?.map((e) => FuelLoad.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'drillRigId': instance.drillRigId,
      'vin': instance.vin,
      'placas': instance.placas,
      'inciso': instance.inciso,
      'economicNumber': instance.economicNumber,
      'modelId': instance.modelId,
      'model': instance.model?.toJson(),
      'documentId': instance.documentId,
      'document': instance.document?.toJson(),
      'policyId': instance.policyId,
      'policy': instance.policy?.toJson(),
      'vehicleTypeId': instance.vehicleTypeId,
      'vehicleType': instance.vehicleType?.toJson(),
      'fuelLoads': instance.fuelLoads?.map((e) => e.toJson()).toList(),
    };

VehicleDTO _$VehicleDTOFromJson(Map<String, dynamic> json) => VehicleDTO(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      vin: json['vin'] as String?,
      placas: json['placas'] as String?,
      drillRigId: json['drillRigId'] as int?,
      inciso: json['inciso'] as String?,
      economicNumber: json['economicNumber'] as int?,
      modelId: json['modelId'] as String?,
      model: json['model'] == null
          ? null
          : ModelDTO.fromJson(json['model'] as Map<String, dynamic>),
      documentId: json['documentId'] as String?,
      document: json['document'] == null
          ? null
          : DocumentDTO.fromJson(json['document'] as Map<String, dynamic>),
      policyId: json['policyId'] as String?,
      policy: json['policy'] == null
          ? null
          : PolicyDTO.fromJson(json['policy'] as Map<String, dynamic>),
      vehicleTypeId: json['vehicleTypeId'] as String?,
      vehicleType: json['vehicleType'] == null
          ? null
          : VehicleTypeDTO.fromJson(
              json['vehicleType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleDTOToJson(VehicleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'vin': instance.vin,
      'placas': instance.placas,
      'drillRigId': instance.drillRigId,
      'inciso': instance.inciso,
      'economicNumber': instance.economicNumber,
      'modelId': instance.modelId,
      'model': instance.model?.toJson(),
      'documentId': instance.documentId,
      'document': instance.document?.toJson(),
      'policyId': instance.policyId,
      'policy': instance.policy?.toJson(),
      'vehicleTypeId': instance.vehicleTypeId,
      'vehicleType': instance.vehicleType?.toJson(),
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

VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) => VehicleType(
      id: json['id'] as String?,
      active: json['active'] as bool?,
      isActive: json['isActive'] as int?,
      excludeFromLog: json['excludeFromLog'] as bool?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      inUse: json['inUse'] as bool?,
    );

Map<String, dynamic> _$VehicleTypeToJson(VehicleType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'isActive': instance.isActive,
      'excludeFromLog': instance.excludeFromLog,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'inUse': instance.inUse,
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
      maintenances: (json['maintenances'] as List<dynamic>?)
              ?.map((e) => MaintenanceDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      parts: (json['parts'] as List<dynamic>?)
              ?.map((e) => PartDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VendorDTOToJson(VendorDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'maintenances': instance.maintenances?.map((e) => e.toJson()).toList(),
      'parts': instance.parts?.map((e) => e.toJson()).toList(),
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
