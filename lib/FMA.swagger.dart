// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'FMA.enums.swagger.dart' as enums;
export 'FMA.enums.swagger.dart';

part 'FMA.swagger.chopper.dart';
part 'FMA.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class FMA extends ChopperService {
  static FMA create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$FMA(client);
    }

    final newClient = ChopperClient(
        services: [_$FMA()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$FMA(newClient);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  Future<chopper.Response> apiAccountLoginPost({required LoginDTO? body}) {
    return _apiAccountLoginPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  @Post(path: '/api/Account/login')
  Future<chopper.Response> _apiAccountLoginPost(
      {@Body() required LoginDTO? body});

  ///Endpoint para realizar el login del usuario de los usuarios
  Future<chopper.Response> apiAccountRefreshtokenPost(
      {required AuthResponseDTO? body}) {
    return _apiAccountRefreshtokenPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  @Post(path: '/api/Account/refreshtoken')
  Future<chopper.Response> _apiAccountRefreshtokenPost(
      {@Body() required AuthResponseDTO? body});

  ///
  Future<chopper.Response<bool>> apiAccountLogoutPost() {
    return _apiAccountLogoutPost();
  }

  ///
  @Post(path: '/api/Account/logout', optionalBody: true)
  Future<chopper.Response<bool>> _apiAccountLogoutPost();

  ///
  ///@param userEmail
  ///@param currentPassword
  ///@param newPassword
  ///@param confirmPassword
  Future<chopper.Response>
      apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {required String? userEmail,
          required String? currentPassword,
          required String? newPassword,
          required String? confirmPassword}) {
    return _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
        userEmail: userEmail,
        currentPassword: currentPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword);
  }

  ///
  ///@param userEmail
  ///@param currentPassword
  ///@param newPassword
  ///@param confirmPassword
  @Post(
      path:
          '/api/Account/changepassword/{userEmail},{currentPassword},{newPassword},{confirmPassword}',
      optionalBody: true)
  Future<chopper.Response>
      _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {@Path('userEmail') required String? userEmail,
          @Path('currentPassword') required String? currentPassword,
          @Path('newPassword') required String? newPassword,
          @Path('confirmPassword') required String? confirmPassword});

  ///
  ///@param email
  Future<chopper.Response> apiAccountForgotpasswordPost({String? email}) {
    return _apiAccountForgotpasswordPost(email: email);
  }

  ///
  ///@param email
  @Post(path: '/api/Account/forgotpassword', optionalBody: true)
  Future<chopper.Response> _apiAccountForgotpasswordPost(
      {@Query('email') String? email});

  ///
  Future<chopper.Response<bool>> apiAccountResetpasswordPost(
      {required ResetPasswordModel? body}) {
    return _apiAccountResetpasswordPost(body: body);
  }

  ///
  @Post(path: '/api/Account/resetpassword')
  Future<chopper.Response<bool>> _apiAccountResetpasswordPost(
      {@Body() required ResetPasswordModel? body});

  ///
  Future<chopper.Response<List<BrandDTO>>> apiBrandGet() {
    generatedMapping.putIfAbsent(BrandDTO, () => BrandDTO.fromJsonFactory);

    return _apiBrandGet();
  }

  ///
  @Get(path: '/api/Brand')
  Future<chopper.Response<List<BrandDTO>>> _apiBrandGet();

  ///
  Future<chopper.Response<String>> apiBrandPost({required BrandDTO? body}) {
    return _apiBrandPost(body: body);
  }

  ///
  @Post(path: '/api/Brand')
  Future<chopper.Response<String>> _apiBrandPost(
      {@Body() required BrandDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<BrandDTOPagedResult>> apiBrandSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        BrandDTOPagedResult, () => BrandDTOPagedResult.fromJsonFactory);

    return _apiBrandSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Brand/Search')
  Future<chopper.Response<BrandDTOPagedResult>> _apiBrandSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<BrandDTO>> apiBrandIdGet({required String? id}) {
    generatedMapping.putIfAbsent(BrandDTO, () => BrandDTO.fromJsonFactory);

    return _apiBrandIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Brand/{id}')
  Future<chopper.Response<BrandDTO>> _apiBrandIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiBrandIdPut(
      {required String? id, required BrandDTO? body}) {
    return _apiBrandIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Brand/{id}')
  Future<chopper.Response<bool>> _apiBrandIdPut(
      {@Path('id') required String? id, @Body() required BrandDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiBrandIdDelete({required String? id}) {
    return _apiBrandIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Brand/{id}')
  Future<chopper.Response<bool>> _apiBrandIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<CompanyDTO>>> apiCompanyGet() {
    generatedMapping.putIfAbsent(CompanyDTO, () => CompanyDTO.fromJsonFactory);

    return _apiCompanyGet();
  }

  ///
  @Get(path: '/api/Company')
  Future<chopper.Response<List<CompanyDTO>>> _apiCompanyGet();

  ///
  Future<chopper.Response<String>> apiCompanyPost({required CompanyDTO? body}) {
    return _apiCompanyPost(body: body);
  }

  ///
  @Post(path: '/api/Company')
  Future<chopper.Response<String>> _apiCompanyPost(
      {@Body() required CompanyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<CompanyDTOPagedResult>> apiCompanySearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        CompanyDTOPagedResult, () => CompanyDTOPagedResult.fromJsonFactory);

    return _apiCompanySearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Company/Search')
  Future<chopper.Response<CompanyDTOPagedResult>> _apiCompanySearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<CompanyDTO>> apiCompanyIdGet({required String? id}) {
    generatedMapping.putIfAbsent(CompanyDTO, () => CompanyDTO.fromJsonFactory);

    return _apiCompanyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Company/{id}')
  Future<chopper.Response<CompanyDTO>> _apiCompanyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCompanyIdPut(
      {required String? id, required CompanyDTO? body}) {
    return _apiCompanyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Company/{id}')
  Future<chopper.Response<bool>> _apiCompanyIdPut(
      {@Path('id') required String? id, @Body() required CompanyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCompanyIdDelete({required String? id}) {
    return _apiCompanyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Company/{id}')
  Future<chopper.Response<bool>> _apiCompanyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<CostCenterDTO>>> apiCostCenterGet() {
    generatedMapping.putIfAbsent(
        CostCenterDTO, () => CostCenterDTO.fromJsonFactory);

    return _apiCostCenterGet();
  }

  ///
  @Get(path: '/api/CostCenter')
  Future<chopper.Response<List<CostCenterDTO>>> _apiCostCenterGet();

  ///
  Future<chopper.Response<String>> apiCostCenterPost(
      {required CostCenterDTO? body}) {
    return _apiCostCenterPost(body: body);
  }

  ///
  @Post(path: '/api/CostCenter')
  Future<chopper.Response<String>> _apiCostCenterPost(
      {@Body() required CostCenterDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<CostCenterDTOPagedResult>> apiCostCenterSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(CostCenterDTOPagedResult,
        () => CostCenterDTOPagedResult.fromJsonFactory);

    return _apiCostCenterSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/CostCenter/Search')
  Future<chopper.Response<CostCenterDTOPagedResult>> _apiCostCenterSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<CostCenterDTO>> apiCostCenterIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        CostCenterDTO, () => CostCenterDTO.fromJsonFactory);

    return _apiCostCenterIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/CostCenter/{id}')
  Future<chopper.Response<CostCenterDTO>> _apiCostCenterIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCostCenterIdPut(
      {required String? id, required CostCenterDTO? body}) {
    return _apiCostCenterIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/CostCenter/{id}')
  Future<chopper.Response<bool>> _apiCostCenterIdPut(
      {@Path('id') required String? id, @Body() required CostCenterDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCostCenterIdDelete({required String? id}) {
    return _apiCostCenterIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/CostCenter/{id}')
  Future<chopper.Response<bool>> _apiCostCenterIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<DocumentDTO>>> apiDocumentGet() {
    generatedMapping.putIfAbsent(
        DocumentDTO, () => DocumentDTO.fromJsonFactory);

    return _apiDocumentGet();
  }

  ///
  @Get(path: '/api/Document')
  Future<chopper.Response<List<DocumentDTO>>> _apiDocumentGet();

  ///
  Future<chopper.Response<String>> apiDocumentPost(
      {required DocumentDTO? body}) {
    return _apiDocumentPost(body: body);
  }

  ///
  @Post(path: '/api/Document')
  Future<chopper.Response<String>> _apiDocumentPost(
      {@Body() required DocumentDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<DocumentDTOPagedResult>> apiDocumentSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        DocumentDTOPagedResult, () => DocumentDTOPagedResult.fromJsonFactory);

    return _apiDocumentSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Document/Search')
  Future<chopper.Response<DocumentDTOPagedResult>> _apiDocumentSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<DocumentDTO>> apiDocumentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        DocumentDTO, () => DocumentDTO.fromJsonFactory);

    return _apiDocumentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Document/{id}')
  Future<chopper.Response<DocumentDTO>> _apiDocumentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDocumentIdPut(
      {required String? id, required DocumentDTO? body}) {
    return _apiDocumentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Document/{id}')
  Future<chopper.Response<bool>> _apiDocumentIdPut(
      {@Path('id') required String? id, @Body() required DocumentDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDocumentIdDelete({required String? id}) {
    return _apiDocumentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Document/{id}')
  Future<chopper.Response<bool>> _apiDocumentIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<EngineDTO>>> apiEngineGet() {
    generatedMapping.putIfAbsent(EngineDTO, () => EngineDTO.fromJsonFactory);

    return _apiEngineGet();
  }

  ///
  @Get(path: '/api/Engine')
  Future<chopper.Response<List<EngineDTO>>> _apiEngineGet();

  ///
  Future<chopper.Response<String>> apiEnginePost({required EngineDTO? body}) {
    return _apiEnginePost(body: body);
  }

  ///
  @Post(path: '/api/Engine')
  Future<chopper.Response<String>> _apiEnginePost(
      {@Body() required EngineDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<EngineDTOPagedResult>> apiEngineSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        EngineDTOPagedResult, () => EngineDTOPagedResult.fromJsonFactory);

    return _apiEngineSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Engine/Search')
  Future<chopper.Response<EngineDTOPagedResult>> _apiEngineSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<EngineDTO>> apiEngineIdGet({required String? id}) {
    generatedMapping.putIfAbsent(EngineDTO, () => EngineDTO.fromJsonFactory);

    return _apiEngineIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Engine/{id}')
  Future<chopper.Response<EngineDTO>> _apiEngineIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiEngineIdPut(
      {required String? id, required EngineDTO? body}) {
    return _apiEngineIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Engine/{id}')
  Future<chopper.Response<bool>> _apiEngineIdPut(
      {@Path('id') required String? id, @Body() required EngineDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiEngineIdDelete({required String? id}) {
    return _apiEngineIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Engine/{id}')
  Future<chopper.Response<bool>> _apiEngineIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelLoadDTO>>> apiFuelLoadGet() {
    generatedMapping.putIfAbsent(
        FuelLoadDTO, () => FuelLoadDTO.fromJsonFactory);

    return _apiFuelLoadGet();
  }

  ///
  @Get(path: '/api/FuelLoad')
  Future<chopper.Response<List<FuelLoadDTO>>> _apiFuelLoadGet();

  ///
  Future<chopper.Response<String>> apiFuelLoadPost(
      {required FuelLoadDTO? body}) {
    return _apiFuelLoadPost(body: body);
  }

  ///
  @Post(path: '/api/FuelLoad')
  Future<chopper.Response<String>> _apiFuelLoadPost(
      {@Body() required FuelLoadDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<FuelLoadDTOPagedResult>> apiFuelLoadSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        FuelLoadDTOPagedResult, () => FuelLoadDTOPagedResult.fromJsonFactory);

    return _apiFuelLoadSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/FuelLoad/Search')
  Future<chopper.Response<FuelLoadDTOPagedResult>> _apiFuelLoadSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelLoadDTO>> apiFuelLoadIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelLoadDTO, () => FuelLoadDTO.fromJsonFactory);

    return _apiFuelLoadIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelLoad/{id}')
  Future<chopper.Response<FuelLoadDTO>> _apiFuelLoadIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelLoadIdPut(
      {required String? id, required FuelLoadDTO? body}) {
    return _apiFuelLoadIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelLoad/{id}')
  Future<chopper.Response<bool>> _apiFuelLoadIdPut(
      {@Path('id') required String? id, @Body() required FuelLoadDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelLoadIdDelete({required String? id}) {
    return _apiFuelLoadIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelLoad/{id}')
  Future<chopper.Response<bool>> _apiFuelLoadIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelTypeDTO>>> apiFuelTypeGet() {
    generatedMapping.putIfAbsent(
        FuelTypeDTO, () => FuelTypeDTO.fromJsonFactory);

    return _apiFuelTypeGet();
  }

  ///
  @Get(path: '/api/FuelType')
  Future<chopper.Response<List<FuelTypeDTO>>> _apiFuelTypeGet();

  ///
  Future<chopper.Response<String>> apiFuelTypePost(
      {required FuelTypeDTO? body}) {
    return _apiFuelTypePost(body: body);
  }

  ///
  @Post(path: '/api/FuelType')
  Future<chopper.Response<String>> _apiFuelTypePost(
      {@Body() required FuelTypeDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<FuelTypeDTOPagedResult>> apiFuelTypeSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        FuelTypeDTOPagedResult, () => FuelTypeDTOPagedResult.fromJsonFactory);

    return _apiFuelTypeSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/FuelType/Search')
  Future<chopper.Response<FuelTypeDTOPagedResult>> _apiFuelTypeSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelTypeDTO>> apiFuelTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelTypeDTO, () => FuelTypeDTO.fromJsonFactory);

    return _apiFuelTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelType/{id}')
  Future<chopper.Response<FuelTypeDTO>> _apiFuelTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelTypeIdPut(
      {required String? id, required FuelTypeDTO? body}) {
    return _apiFuelTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelType/{id}')
  Future<chopper.Response<bool>> _apiFuelTypeIdPut(
      {@Path('id') required String? id, @Body() required FuelTypeDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelTypeIdDelete({required String? id}) {
    return _apiFuelTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelType/{id}')
  Future<chopper.Response<bool>> _apiFuelTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelVendorDTO>>> apiFuelVendorGet() {
    generatedMapping.putIfAbsent(
        FuelVendorDTO, () => FuelVendorDTO.fromJsonFactory);

    return _apiFuelVendorGet();
  }

  ///
  @Get(path: '/api/FuelVendor')
  Future<chopper.Response<List<FuelVendorDTO>>> _apiFuelVendorGet();

  ///
  Future<chopper.Response<String>> apiFuelVendorPost(
      {required FuelVendorDTO? body}) {
    return _apiFuelVendorPost(body: body);
  }

  ///
  @Post(path: '/api/FuelVendor')
  Future<chopper.Response<String>> _apiFuelVendorPost(
      {@Body() required FuelVendorDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<FuelVendorDTOPagedResult>> apiFuelVendorSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(FuelVendorDTOPagedResult,
        () => FuelVendorDTOPagedResult.fromJsonFactory);

    return _apiFuelVendorSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/FuelVendor/Search')
  Future<chopper.Response<FuelVendorDTOPagedResult>> _apiFuelVendorSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelVendorDTO>> apiFuelVendorIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelVendorDTO, () => FuelVendorDTO.fromJsonFactory);

    return _apiFuelVendorIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelVendor/{id}')
  Future<chopper.Response<FuelVendorDTO>> _apiFuelVendorIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelVendorIdPut(
      {required String? id, required FuelVendorDTO? body}) {
    return _apiFuelVendorIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelVendor/{id}')
  Future<chopper.Response<bool>> _apiFuelVendorIdPut(
      {@Path('id') required String? id, @Body() required FuelVendorDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelVendorIdDelete({required String? id}) {
    return _apiFuelVendorIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelVendor/{id}')
  Future<chopper.Response<bool>> _apiFuelVendorIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ImageDTO>>> apiImageGet() {
    generatedMapping.putIfAbsent(ImageDTO, () => ImageDTO.fromJsonFactory);

    return _apiImageGet();
  }

  ///
  @Get(path: '/api/Image')
  Future<chopper.Response<List<ImageDTO>>> _apiImageGet();

  ///
  Future<chopper.Response<String>> apiImagePost({required ImageDTO? body}) {
    return _apiImagePost(body: body);
  }

  ///
  @Post(path: '/api/Image')
  Future<chopper.Response<String>> _apiImagePost(
      {@Body() required ImageDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ImageDTOPagedResult>> apiImageSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ImageDTOPagedResult, () => ImageDTOPagedResult.fromJsonFactory);

    return _apiImageSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Image/Search')
  Future<chopper.Response<ImageDTOPagedResult>> _apiImageSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ImageDTO>> apiImageIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ImageDTO, () => ImageDTO.fromJsonFactory);

    return _apiImageIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Image/{id}')
  Future<chopper.Response<ImageDTO>> _apiImageIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiImageIdPut(
      {required String? id, required ImageDTO? body}) {
    return _apiImageIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Image/{id}')
  Future<chopper.Response<bool>> _apiImageIdPut(
      {@Path('id') required String? id, @Body() required ImageDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiImageIdDelete({required String? id}) {
    return _apiImageIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Image/{id}')
  Future<chopper.Response<bool>> _apiImageIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<IncidentDTO>>> apiIncidentGet() {
    generatedMapping.putIfAbsent(
        IncidentDTO, () => IncidentDTO.fromJsonFactory);

    return _apiIncidentGet();
  }

  ///
  @Get(path: '/api/Incident')
  Future<chopper.Response<List<IncidentDTO>>> _apiIncidentGet();

  ///
  Future<chopper.Response<String>> apiIncidentPost(
      {required IncidentDTO? body}) {
    return _apiIncidentPost(body: body);
  }

  ///
  @Post(path: '/api/Incident')
  Future<chopper.Response<String>> _apiIncidentPost(
      {@Body() required IncidentDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<IncidentDTOPagedResult>> apiIncidentSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        IncidentDTOPagedResult, () => IncidentDTOPagedResult.fromJsonFactory);

    return _apiIncidentSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Incident/Search')
  Future<chopper.Response<IncidentDTOPagedResult>> _apiIncidentSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<IncidentDTO>> apiIncidentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        IncidentDTO, () => IncidentDTO.fromJsonFactory);

    return _apiIncidentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Incident/{id}')
  Future<chopper.Response<IncidentDTO>> _apiIncidentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncidentIdPut(
      {required String? id, required IncidentDTO? body}) {
    return _apiIncidentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Incident/{id}')
  Future<chopper.Response<bool>> _apiIncidentIdPut(
      {@Path('id') required String? id, @Body() required IncidentDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncidentIdDelete({required String? id}) {
    return _apiIncidentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Incident/{id}')
  Future<chopper.Response<bool>> _apiIncidentIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<IncisoDTO>>> apiIncisoGet() {
    generatedMapping.putIfAbsent(IncisoDTO, () => IncisoDTO.fromJsonFactory);

    return _apiIncisoGet();
  }

  ///
  @Get(path: '/api/Inciso')
  Future<chopper.Response<List<IncisoDTO>>> _apiIncisoGet();

  ///
  Future<chopper.Response<String>> apiIncisoPost({required IncisoDTO? body}) {
    return _apiIncisoPost(body: body);
  }

  ///
  @Post(path: '/api/Inciso')
  Future<chopper.Response<String>> _apiIncisoPost(
      {@Body() required IncisoDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<IncisoDTOPagedResult>> apiIncisoSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        IncisoDTOPagedResult, () => IncisoDTOPagedResult.fromJsonFactory);

    return _apiIncisoSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Inciso/Search')
  Future<chopper.Response<IncisoDTOPagedResult>> _apiIncisoSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<IncisoDTO>> apiIncisoIdGet({required String? id}) {
    generatedMapping.putIfAbsent(IncisoDTO, () => IncisoDTO.fromJsonFactory);

    return _apiIncisoIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Inciso/{id}')
  Future<chopper.Response<IncisoDTO>> _apiIncisoIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncisoIdPut(
      {required String? id, required IncisoDTO? body}) {
    return _apiIncisoIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Inciso/{id}')
  Future<chopper.Response<bool>> _apiIncisoIdPut(
      {@Path('id') required String? id, @Body() required IncisoDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncisoIdDelete({required String? id}) {
    return _apiIncisoIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Inciso/{id}')
  Future<chopper.Response<bool>> _apiIncisoIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<InsuranceCompanyDTO>>> apiInsuranceCompanyGet() {
    generatedMapping.putIfAbsent(
        InsuranceCompanyDTO, () => InsuranceCompanyDTO.fromJsonFactory);

    return _apiInsuranceCompanyGet();
  }

  ///
  @Get(path: '/api/InsuranceCompany')
  Future<chopper.Response<List<InsuranceCompanyDTO>>> _apiInsuranceCompanyGet();

  ///
  Future<chopper.Response<String>> apiInsuranceCompanyPost(
      {required InsuranceCompanyDTO? body}) {
    return _apiInsuranceCompanyPost(body: body);
  }

  ///
  @Post(path: '/api/InsuranceCompany')
  Future<chopper.Response<String>> _apiInsuranceCompanyPost(
      {@Body() required InsuranceCompanyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<InsuranceCompanyDTOPagedResult>>
      apiInsuranceCompanySearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(InsuranceCompanyDTOPagedResult,
        () => InsuranceCompanyDTOPagedResult.fromJsonFactory);

    return _apiInsuranceCompanySearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/InsuranceCompany/Search')
  Future<chopper.Response<InsuranceCompanyDTOPagedResult>>
      _apiInsuranceCompanySearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<InsuranceCompanyDTO>> apiInsuranceCompanyIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        InsuranceCompanyDTO, () => InsuranceCompanyDTO.fromJsonFactory);

    return _apiInsuranceCompanyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/InsuranceCompany/{id}')
  Future<chopper.Response<InsuranceCompanyDTO>> _apiInsuranceCompanyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiInsuranceCompanyIdPut(
      {required String? id, required InsuranceCompanyDTO? body}) {
    return _apiInsuranceCompanyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/InsuranceCompany/{id}')
  Future<chopper.Response<bool>> _apiInsuranceCompanyIdPut(
      {@Path('id') required String? id,
      @Body() required InsuranceCompanyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiInsuranceCompanyIdDelete(
      {required String? id}) {
    return _apiInsuranceCompanyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/InsuranceCompany/{id}')
  Future<chopper.Response<bool>> _apiInsuranceCompanyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenanceDTO>>> apiMaintenanceGet() {
    generatedMapping.putIfAbsent(
        MaintenanceDTO, () => MaintenanceDTO.fromJsonFactory);

    return _apiMaintenanceGet();
  }

  ///
  @Get(path: '/api/Maintenance')
  Future<chopper.Response<List<MaintenanceDTO>>> _apiMaintenanceGet();

  ///
  Future<chopper.Response<String>> apiMaintenancePost(
      {required MaintenanceDTO? body}) {
    return _apiMaintenancePost(body: body);
  }

  ///
  @Post(path: '/api/Maintenance')
  Future<chopper.Response<String>> _apiMaintenancePost(
      {@Body() required MaintenanceDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<MaintenanceDTOPagedResult>> apiMaintenanceSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenanceDTOPagedResult,
        () => MaintenanceDTOPagedResult.fromJsonFactory);

    return _apiMaintenanceSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Maintenance/Search')
  Future<chopper.Response<MaintenanceDTOPagedResult>> _apiMaintenanceSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenanceDTO>> apiMaintenanceIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenanceDTO, () => MaintenanceDTO.fromJsonFactory);

    return _apiMaintenanceIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Maintenance/{id}')
  Future<chopper.Response<MaintenanceDTO>> _apiMaintenanceIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceIdPut(
      {required String? id, required MaintenanceDTO? body}) {
    return _apiMaintenanceIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Maintenance/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceIdPut(
      {@Path('id') required String? id, @Body() required MaintenanceDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceIdDelete({required String? id}) {
    return _apiMaintenanceIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Maintenance/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenanceGroupDTO>>> apiMaintenanceGroupGet() {
    generatedMapping.putIfAbsent(
        MaintenanceGroupDTO, () => MaintenanceGroupDTO.fromJsonFactory);

    return _apiMaintenanceGroupGet();
  }

  ///
  @Get(path: '/api/MaintenanceGroup')
  Future<chopper.Response<List<MaintenanceGroupDTO>>> _apiMaintenanceGroupGet();

  ///
  Future<chopper.Response<String>> apiMaintenanceGroupPost(
      {required MaintenanceGroupDTO? body}) {
    return _apiMaintenanceGroupPost(body: body);
  }

  ///
  @Post(path: '/api/MaintenanceGroup')
  Future<chopper.Response<String>> _apiMaintenanceGroupPost(
      {@Body() required MaintenanceGroupDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<MaintenanceGroupDTOPagedResult>>
      apiMaintenanceGroupSearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenanceGroupDTOPagedResult,
        () => MaintenanceGroupDTOPagedResult.fromJsonFactory);

    return _apiMaintenanceGroupSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/MaintenanceGroup/Search')
  Future<chopper.Response<MaintenanceGroupDTOPagedResult>>
      _apiMaintenanceGroupSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenanceGroupDTO>> apiMaintenanceGroupIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenanceGroupDTO, () => MaintenanceGroupDTO.fromJsonFactory);

    return _apiMaintenanceGroupIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/MaintenanceGroup/{id}')
  Future<chopper.Response<MaintenanceGroupDTO>> _apiMaintenanceGroupIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceGroupIdPut(
      {required String? id, required MaintenanceGroupDTO? body}) {
    return _apiMaintenanceGroupIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/MaintenanceGroup/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceGroupIdPut(
      {@Path('id') required String? id,
      @Body() required MaintenanceGroupDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceGroupIdDelete(
      {required String? id}) {
    return _apiMaintenanceGroupIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/MaintenanceGroup/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceGroupIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenancePartDTO>>> apiMaintenancePartGet() {
    generatedMapping.putIfAbsent(
        MaintenancePartDTO, () => MaintenancePartDTO.fromJsonFactory);

    return _apiMaintenancePartGet();
  }

  ///
  @Get(path: '/api/MaintenancePart')
  Future<chopper.Response<List<MaintenancePartDTO>>> _apiMaintenancePartGet();

  ///
  Future<chopper.Response<String>> apiMaintenancePartPost(
      {required MaintenancePartDTO? body}) {
    return _apiMaintenancePartPost(body: body);
  }

  ///
  @Post(path: '/api/MaintenancePart')
  Future<chopper.Response<String>> _apiMaintenancePartPost(
      {@Body() required MaintenancePartDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<MaintenancePartDTOPagedResult>>
      apiMaintenancePartSearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenancePartDTOPagedResult,
        () => MaintenancePartDTOPagedResult.fromJsonFactory);

    return _apiMaintenancePartSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/MaintenancePart/Search')
  Future<chopper.Response<MaintenancePartDTOPagedResult>>
      _apiMaintenancePartSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenancePartDTO>> apiMaintenancePartIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenancePartDTO, () => MaintenancePartDTO.fromJsonFactory);

    return _apiMaintenancePartIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/MaintenancePart/{id}')
  Future<chopper.Response<MaintenancePartDTO>> _apiMaintenancePartIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenancePartIdPut(
      {required String? id, required MaintenancePartDTO? body}) {
    return _apiMaintenancePartIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/MaintenancePart/{id}')
  Future<chopper.Response<bool>> _apiMaintenancePartIdPut(
      {@Path('id') required String? id,
      @Body() required MaintenancePartDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenancePartIdDelete(
      {required String? id}) {
    return _apiMaintenancePartIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/MaintenancePart/{id}')
  Future<chopper.Response<bool>> _apiMaintenancePartIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenanceTypeDTO>>> apiMaintenanceTypeGet() {
    generatedMapping.putIfAbsent(
        MaintenanceTypeDTO, () => MaintenanceTypeDTO.fromJsonFactory);

    return _apiMaintenanceTypeGet();
  }

  ///
  @Get(path: '/api/MaintenanceType')
  Future<chopper.Response<List<MaintenanceTypeDTO>>> _apiMaintenanceTypeGet();

  ///
  Future<chopper.Response<String>> apiMaintenanceTypePost(
      {required MaintenanceTypeDTO? body}) {
    return _apiMaintenanceTypePost(body: body);
  }

  ///
  @Post(path: '/api/MaintenanceType')
  Future<chopper.Response<String>> _apiMaintenanceTypePost(
      {@Body() required MaintenanceTypeDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<MaintenanceTypeDTOPagedResult>>
      apiMaintenanceTypeSearchGet(
          {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenanceTypeDTOPagedResult,
        () => MaintenanceTypeDTOPagedResult.fromJsonFactory);

    return _apiMaintenanceTypeSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/MaintenanceType/Search')
  Future<chopper.Response<MaintenanceTypeDTOPagedResult>>
      _apiMaintenanceTypeSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenanceTypeDTO>> apiMaintenanceTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenanceTypeDTO, () => MaintenanceTypeDTO.fromJsonFactory);

    return _apiMaintenanceTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/MaintenanceType/{id}')
  Future<chopper.Response<MaintenanceTypeDTO>> _apiMaintenanceTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceTypeIdPut(
      {required String? id, required MaintenanceTypeDTO? body}) {
    return _apiMaintenanceTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/MaintenanceType/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceTypeIdPut(
      {@Path('id') required String? id,
      @Body() required MaintenanceTypeDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceTypeIdDelete(
      {required String? id}) {
    return _apiMaintenanceTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/MaintenanceType/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ModelDTO>>> apiModelGet() {
    generatedMapping.putIfAbsent(ModelDTO, () => ModelDTO.fromJsonFactory);

    return _apiModelGet();
  }

  ///
  @Get(path: '/api/Model')
  Future<chopper.Response<List<ModelDTO>>> _apiModelGet();

  ///
  Future<chopper.Response<String>> apiModelPost({required ModelDTO? body}) {
    return _apiModelPost(body: body);
  }

  ///
  @Post(path: '/api/Model')
  Future<chopper.Response<String>> _apiModelPost(
      {@Body() required ModelDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ModelDTOPagedResult>> apiModelSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ModelDTOPagedResult, () => ModelDTOPagedResult.fromJsonFactory);

    return _apiModelSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Model/Search')
  Future<chopper.Response<ModelDTOPagedResult>> _apiModelSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ModelDTO>> apiModelIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ModelDTO, () => ModelDTO.fromJsonFactory);

    return _apiModelIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Model/{id}')
  Future<chopper.Response<ModelDTO>> _apiModelIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiModelIdPut(
      {required String? id, required ModelDTO? body}) {
    return _apiModelIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Model/{id}')
  Future<chopper.Response<bool>> _apiModelIdPut(
      {@Path('id') required String? id, @Body() required ModelDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiModelIdDelete({required String? id}) {
    return _apiModelIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Model/{id}')
  Future<chopper.Response<bool>> _apiModelIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PartDTO>>> apiPartGet() {
    generatedMapping.putIfAbsent(PartDTO, () => PartDTO.fromJsonFactory);

    return _apiPartGet();
  }

  ///
  @Get(path: '/api/Part')
  Future<chopper.Response<List<PartDTO>>> _apiPartGet();

  ///
  Future<chopper.Response<String>> apiPartPost({required PartDTO? body}) {
    return _apiPartPost(body: body);
  }

  ///
  @Post(path: '/api/Part')
  Future<chopper.Response<String>> _apiPartPost(
      {@Body() required PartDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<PartDTOPagedResult>> apiPartSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        PartDTOPagedResult, () => PartDTOPagedResult.fromJsonFactory);

    return _apiPartSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Part/Search')
  Future<chopper.Response<PartDTOPagedResult>> _apiPartSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PartDTO>> apiPartIdGet({required String? id}) {
    generatedMapping.putIfAbsent(PartDTO, () => PartDTO.fromJsonFactory);

    return _apiPartIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Part/{id}')
  Future<chopper.Response<PartDTO>> _apiPartIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPartIdPut(
      {required String? id, required PartDTO? body}) {
    return _apiPartIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Part/{id}')
  Future<chopper.Response<bool>> _apiPartIdPut(
      {@Path('id') required String? id, @Body() required PartDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPartIdDelete({required String? id}) {
    return _apiPartIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Part/{id}')
  Future<chopper.Response<bool>> _apiPartIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PolicyDTO>>> apiPolicyGet() {
    generatedMapping.putIfAbsent(PolicyDTO, () => PolicyDTO.fromJsonFactory);

    return _apiPolicyGet();
  }

  ///
  @Get(path: '/api/Policy')
  Future<chopper.Response<List<PolicyDTO>>> _apiPolicyGet();

  ///
  Future<chopper.Response<String>> apiPolicyPost({required PolicyDTO? body}) {
    return _apiPolicyPost(body: body);
  }

  ///
  @Post(path: '/api/Policy')
  Future<chopper.Response<String>> _apiPolicyPost(
      {@Body() required PolicyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<PolicyDTOPagedResult>> apiPolicySearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        PolicyDTOPagedResult, () => PolicyDTOPagedResult.fromJsonFactory);

    return _apiPolicySearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Policy/Search')
  Future<chopper.Response<PolicyDTOPagedResult>> _apiPolicySearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PolicyDTO>> apiPolicyIdGet({required String? id}) {
    generatedMapping.putIfAbsent(PolicyDTO, () => PolicyDTO.fromJsonFactory);

    return _apiPolicyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Policy/{id}')
  Future<chopper.Response<PolicyDTO>> _apiPolicyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyIdPut(
      {required String? id, required PolicyDTO? body}) {
    return _apiPolicyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Policy/{id}')
  Future<chopper.Response<bool>> _apiPolicyIdPut(
      {@Path('id') required String? id, @Body() required PolicyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyIdDelete({required String? id}) {
    return _apiPolicyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Policy/{id}')
  Future<chopper.Response<bool>> _apiPolicyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PolicyPacketDTO>>> apiPolicyPacketGet() {
    generatedMapping.putIfAbsent(
        PolicyPacketDTO, () => PolicyPacketDTO.fromJsonFactory);

    return _apiPolicyPacketGet();
  }

  ///
  @Get(path: '/api/PolicyPacket')
  Future<chopper.Response<List<PolicyPacketDTO>>> _apiPolicyPacketGet();

  ///
  Future<chopper.Response<String>> apiPolicyPacketPost(
      {required PolicyPacketDTO? body}) {
    return _apiPolicyPacketPost(body: body);
  }

  ///
  @Post(path: '/api/PolicyPacket')
  Future<chopper.Response<String>> _apiPolicyPacketPost(
      {@Body() required PolicyPacketDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<PolicyPacketDTOPagedResult>> apiPolicyPacketSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(PolicyPacketDTOPagedResult,
        () => PolicyPacketDTOPagedResult.fromJsonFactory);

    return _apiPolicyPacketSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/PolicyPacket/Search')
  Future<chopper.Response<PolicyPacketDTOPagedResult>>
      _apiPolicyPacketSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PolicyPacketDTO>> apiPolicyPacketIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        PolicyPacketDTO, () => PolicyPacketDTO.fromJsonFactory);

    return _apiPolicyPacketIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/PolicyPacket/{id}')
  Future<chopper.Response<PolicyPacketDTO>> _apiPolicyPacketIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyPacketIdPut(
      {required String? id, required PolicyPacketDTO? body}) {
    return _apiPolicyPacketIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/PolicyPacket/{id}')
  Future<chopper.Response<bool>> _apiPolicyPacketIdPut(
      {@Path('id') required String? id,
      @Body() required PolicyPacketDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyPacketIdDelete(
      {required String? id}) {
    return _apiPolicyPacketIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/PolicyPacket/{id}')
  Future<chopper.Response<bool>> _apiPolicyPacketIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PolicyStatusDTO>>> apiPolicyStatusGet() {
    generatedMapping.putIfAbsent(
        PolicyStatusDTO, () => PolicyStatusDTO.fromJsonFactory);

    return _apiPolicyStatusGet();
  }

  ///
  @Get(path: '/api/PolicyStatus')
  Future<chopper.Response<List<PolicyStatusDTO>>> _apiPolicyStatusGet();

  ///
  Future<chopper.Response<String>> apiPolicyStatusPost(
      {required PolicyStatusDTO? body}) {
    return _apiPolicyStatusPost(body: body);
  }

  ///
  @Post(path: '/api/PolicyStatus')
  Future<chopper.Response<String>> _apiPolicyStatusPost(
      {@Body() required PolicyStatusDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<PolicyStatusDTOPagedResult>> apiPolicyStatusSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(PolicyStatusDTOPagedResult,
        () => PolicyStatusDTOPagedResult.fromJsonFactory);

    return _apiPolicyStatusSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/PolicyStatus/Search')
  Future<chopper.Response<PolicyStatusDTOPagedResult>>
      _apiPolicyStatusSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PolicyStatusDTO>> apiPolicyStatusIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        PolicyStatusDTO, () => PolicyStatusDTO.fromJsonFactory);

    return _apiPolicyStatusIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/PolicyStatus/{id}')
  Future<chopper.Response<PolicyStatusDTO>> _apiPolicyStatusIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyStatusIdPut(
      {required String? id, required PolicyStatusDTO? body}) {
    return _apiPolicyStatusIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/PolicyStatus/{id}')
  Future<chopper.Response<bool>> _apiPolicyStatusIdPut(
      {@Path('id') required String? id,
      @Body() required PolicyStatusDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyStatusIdDelete(
      {required String? id}) {
    return _apiPolicyStatusIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/PolicyStatus/{id}')
  Future<chopper.Response<bool>> _apiPolicyStatusIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ProjectDTO>>> apiProjectGet() {
    generatedMapping.putIfAbsent(ProjectDTO, () => ProjectDTO.fromJsonFactory);

    return _apiProjectGet();
  }

  ///
  @Get(path: '/api/Project')
  Future<chopper.Response<List<ProjectDTO>>> _apiProjectGet();

  ///
  Future<chopper.Response<String>> apiProjectPost({required ProjectDTO? body}) {
    return _apiProjectPost(body: body);
  }

  ///
  @Post(path: '/api/Project')
  Future<chopper.Response<String>> _apiProjectPost(
      {@Body() required ProjectDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ProjectDTOPagedResult>> apiProjectSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ProjectDTOPagedResult, () => ProjectDTOPagedResult.fromJsonFactory);

    return _apiProjectSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Project/Search')
  Future<chopper.Response<ProjectDTOPagedResult>> _apiProjectSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ProjectDTO>> apiProjectIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ProjectDTO, () => ProjectDTO.fromJsonFactory);

    return _apiProjectIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Project/{id}')
  Future<chopper.Response<ProjectDTO>> _apiProjectIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiProjectIdPut(
      {required String? id, required ProjectDTO? body}) {
    return _apiProjectIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Project/{id}')
  Future<chopper.Response<bool>> _apiProjectIdPut(
      {@Path('id') required String? id, @Body() required ProjectDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiProjectIdDelete({required String? id}) {
    return _apiProjectIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Project/{id}')
  Future<chopper.Response<bool>> _apiProjectIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<RoleDTO>>> apiRoleGet() {
    generatedMapping.putIfAbsent(RoleDTO, () => RoleDTO.fromJsonFactory);

    return _apiRoleGet();
  }

  ///
  @Get(path: '/api/Role')
  Future<chopper.Response<List<RoleDTO>>> _apiRoleGet();

  ///
  Future<chopper.Response<String>> apiRolePost({required RoleDTO? body}) {
    return _apiRolePost(body: body);
  }

  ///
  @Post(path: '/api/Role')
  Future<chopper.Response<String>> _apiRolePost(
      {@Body() required RoleDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<RoleDTOPagedResult>> apiRoleSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        RoleDTOPagedResult, () => RoleDTOPagedResult.fromJsonFactory);

    return _apiRoleSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Role/Search')
  Future<chopper.Response<RoleDTOPagedResult>> _apiRoleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<RoleDTO>> apiRoleIdGet({required String? id}) {
    generatedMapping.putIfAbsent(RoleDTO, () => RoleDTO.fromJsonFactory);

    return _apiRoleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Role/{id}')
  Future<chopper.Response<RoleDTO>> _apiRoleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRoleIdPut(
      {required String? id, required RoleDTO? body}) {
    return _apiRoleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Role/{id}')
  Future<chopper.Response<bool>> _apiRoleIdPut(
      {@Path('id') required String? id, @Body() required RoleDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRoleIdDelete({required String? id}) {
    return _apiRoleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Role/{id}')
  Future<chopper.Response<bool>> _apiRoleIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ServiceDTO>>> apiServiceGet() {
    generatedMapping.putIfAbsent(ServiceDTO, () => ServiceDTO.fromJsonFactory);

    return _apiServiceGet();
  }

  ///
  @Get(path: '/api/Service')
  Future<chopper.Response<List<ServiceDTO>>> _apiServiceGet();

  ///
  Future<chopper.Response<String>> apiServicePost({required ServiceDTO? body}) {
    return _apiServicePost(body: body);
  }

  ///
  @Post(path: '/api/Service')
  Future<chopper.Response<String>> _apiServicePost(
      {@Body() required ServiceDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<ServiceDTOPagedResult>> apiServiceSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ServiceDTOPagedResult, () => ServiceDTOPagedResult.fromJsonFactory);

    return _apiServiceSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Service/Search')
  Future<chopper.Response<ServiceDTOPagedResult>> _apiServiceSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ServiceDTO>> apiServiceIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ServiceDTO, () => ServiceDTO.fromJsonFactory);

    return _apiServiceIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Service/{id}')
  Future<chopper.Response<ServiceDTO>> _apiServiceIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiServiceIdPut(
      {required String? id, required ServiceDTO? body}) {
    return _apiServiceIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Service/{id}')
  Future<chopper.Response<bool>> _apiServiceIdPut(
      {@Path('id') required String? id, @Body() required ServiceDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiServiceIdDelete({required String? id}) {
    return _apiServiceIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Service/{id}')
  Future<chopper.Response<bool>> _apiServiceIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<AppUserDTO>>> apiUserGet() {
    generatedMapping.putIfAbsent(AppUserDTO, () => AppUserDTO.fromJsonFactory);

    return _apiUserGet();
  }

  ///
  @Get(path: '/api/User')
  Future<chopper.Response<List<AppUserDTO>>> _apiUserGet();

  ///Endpoint para el registro de los usuarios
  Future<chopper.Response<String>> apiUserPost({required UserPostDTO? body}) {
    return _apiUserPost(body: body);
  }

  ///Endpoint para el registro de los usuarios
  @Post(path: '/api/User')
  Future<chopper.Response<String>> _apiUserPost(
      {@Body() required UserPostDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<AppUserDTOPagedResult>> apiUserSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        AppUserDTOPagedResult, () => AppUserDTOPagedResult.fromJsonFactory);

    return _apiUserSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/User/Search')
  Future<chopper.Response<AppUserDTOPagedResult>> _apiUserSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<AppUserDTO>> apiUserIdGet({required String? id}) {
    generatedMapping.putIfAbsent(AppUserDTO, () => AppUserDTO.fromJsonFactory);

    return _apiUserIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/User/{id}')
  Future<chopper.Response<AppUserDTO>> _apiUserIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserIdPut(
      {required String? id, required ApiUserIdPut$RequestBody? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserIdPut(
      {@Path('id') required String? id,
      @Body() required ApiUserIdPut$RequestBody? body});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserEditUserAppIdPut(
      {required String? id, required UserPutDTO? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserEditUserAppIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/EditUserApp/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserEditUserAppIdPut(
      {@Path('id') required String? id, @Body() required UserPutDTO? body});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserUploadImageIdPost(
      {required String? id,
      required ApiUserUploadImageIdPost$RequestBody? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserUploadImageIdPost(id: id, body: body);
  }

  ///
  ///@param id
  @Post(path: '/api/User/UploadImage/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserUploadImageIdPost(
      {@Path('id') required String? id,
      @Body() required ApiUserUploadImageIdPost$RequestBody? body});

  ///
  Future<chopper.Response<List<UserVehicleDTO>>> apiUserVehicleGet() {
    generatedMapping.putIfAbsent(
        UserVehicleDTO, () => UserVehicleDTO.fromJsonFactory);

    return _apiUserVehicleGet();
  }

  ///
  @Get(path: '/api/UserVehicle')
  Future<chopper.Response<List<UserVehicleDTO>>> _apiUserVehicleGet();

  ///
  Future<chopper.Response<String>> apiUserVehiclePost(
      {required UserVehicleDTO? body}) {
    return _apiUserVehiclePost(body: body);
  }

  ///
  @Post(path: '/api/UserVehicle')
  Future<chopper.Response<String>> _apiUserVehiclePost(
      {@Body() required UserVehicleDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<UserVehicleDTOPagedResult>> apiUserVehicleSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(UserVehicleDTOPagedResult,
        () => UserVehicleDTOPagedResult.fromJsonFactory);

    return _apiUserVehicleSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/UserVehicle/Search')
  Future<chopper.Response<UserVehicleDTOPagedResult>> _apiUserVehicleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<UserVehicleDTO>> apiUserVehicleIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        UserVehicleDTO, () => UserVehicleDTO.fromJsonFactory);

    return _apiUserVehicleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/UserVehicle/{id}')
  Future<chopper.Response<UserVehicleDTO>> _apiUserVehicleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiUserVehicleIdPut(
      {required String? id, required UserVehicleDTO? body}) {
    return _apiUserVehicleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/UserVehicle/{id}')
  Future<chopper.Response<bool>> _apiUserVehicleIdPut(
      {@Path('id') required String? id, @Body() required UserVehicleDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiUserVehicleIdDelete({required String? id}) {
    return _apiUserVehicleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/UserVehicle/{id}')
  Future<chopper.Response<bool>> _apiUserVehicleIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<VehicleDTO>>> apiVehicleGet() {
    generatedMapping.putIfAbsent(VehicleDTO, () => VehicleDTO.fromJsonFactory);

    return _apiVehicleGet();
  }

  ///
  @Get(path: '/api/Vehicle')
  Future<chopper.Response<List<VehicleDTO>>> _apiVehicleGet();

  ///
  Future<chopper.Response<String>> apiVehiclePost({required VehicleDTO? body}) {
    return _apiVehiclePost(body: body);
  }

  ///
  @Post(path: '/api/Vehicle')
  Future<chopper.Response<String>> _apiVehiclePost(
      {@Body() required VehicleDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<VehicleDTOPagedResult>> apiVehicleSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        VehicleDTOPagedResult, () => VehicleDTOPagedResult.fromJsonFactory);

    return _apiVehicleSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Vehicle/Search')
  Future<chopper.Response<VehicleDTOPagedResult>> _apiVehicleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<VehicleDTO>> apiVehicleIdGet({required String? id}) {
    generatedMapping.putIfAbsent(VehicleDTO, () => VehicleDTO.fromJsonFactory);

    return _apiVehicleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Vehicle/{id}')
  Future<chopper.Response<VehicleDTO>> _apiVehicleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleIdPut(
      {required String? id, required VehicleDTO? body}) {
    return _apiVehicleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Vehicle/{id}')
  Future<chopper.Response<bool>> _apiVehicleIdPut(
      {@Path('id') required String? id, @Body() required VehicleDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleIdDelete({required String? id}) {
    return _apiVehicleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Vehicle/{id}')
  Future<chopper.Response<bool>> _apiVehicleIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<VehicleTypeDTO>>> apiVehicleTypeGet() {
    generatedMapping.putIfAbsent(
        VehicleTypeDTO, () => VehicleTypeDTO.fromJsonFactory);

    return _apiVehicleTypeGet();
  }

  ///
  @Get(path: '/api/VehicleType')
  Future<chopper.Response<List<VehicleTypeDTO>>> _apiVehicleTypeGet();

  ///
  Future<chopper.Response<String>> apiVehicleTypePost(
      {required VehicleTypeDTO? body}) {
    return _apiVehicleTypePost(body: body);
  }

  ///
  @Post(path: '/api/VehicleType')
  Future<chopper.Response<String>> _apiVehicleTypePost(
      {@Body() required VehicleTypeDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<VehicleTypeDTOPagedResult>> apiVehicleTypeSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(VehicleTypeDTOPagedResult,
        () => VehicleTypeDTOPagedResult.fromJsonFactory);

    return _apiVehicleTypeSearchGet(
        page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/VehicleType/Search')
  Future<chopper.Response<VehicleTypeDTOPagedResult>> _apiVehicleTypeSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<VehicleTypeDTO>> apiVehicleTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        VehicleTypeDTO, () => VehicleTypeDTO.fromJsonFactory);

    return _apiVehicleTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/VehicleType/{id}')
  Future<chopper.Response<VehicleTypeDTO>> _apiVehicleTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleTypeIdPut(
      {required String? id, required VehicleTypeDTO? body}) {
    return _apiVehicleTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/VehicleType/{id}')
  Future<chopper.Response<bool>> _apiVehicleTypeIdPut(
      {@Path('id') required String? id, @Body() required VehicleTypeDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleTypeIdDelete({required String? id}) {
    return _apiVehicleTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/VehicleType/{id}')
  Future<chopper.Response<bool>> _apiVehicleTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<VendorDTO>>> apiVendorGet() {
    generatedMapping.putIfAbsent(VendorDTO, () => VendorDTO.fromJsonFactory);

    return _apiVendorGet();
  }

  ///
  @Get(path: '/api/Vendor')
  Future<chopper.Response<List<VendorDTO>>> _apiVendorGet();

  ///
  Future<chopper.Response<String>> apiVendorPost({required VendorDTO? body}) {
    return _apiVendorPost(body: body);
  }

  ///
  @Post(path: '/api/Vendor')
  Future<chopper.Response<String>> _apiVendorPost(
      {@Body() required VendorDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  Future<chopper.Response<VendorDTOPagedResult>> apiVendorSearchGet(
      {required int? page, String? search, required int? pageSize}) {
    generatedMapping.putIfAbsent(
        VendorDTOPagedResult, () => VendorDTOPagedResult.fromJsonFactory);

    return _apiVendorSearchGet(page: page, search: search, pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param PageSize
  @Get(path: '/api/Vendor/Search')
  Future<chopper.Response<VendorDTOPagedResult>> _apiVendorSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<VendorDTO>> apiVendorIdGet({required String? id}) {
    generatedMapping.putIfAbsent(VendorDTO, () => VendorDTO.fromJsonFactory);

    return _apiVendorIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Vendor/{id}')
  Future<chopper.Response<VendorDTO>> _apiVendorIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVendorIdPut(
      {required String? id, required VendorDTO? body}) {
    return _apiVendorIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Vendor/{id}')
  Future<chopper.Response<bool>> _apiVendorIdPut(
      {@Path('id') required String? id, @Body() required VendorDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVendorIdDelete({required String? id}) {
    return _apiVendorIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Vendor/{id}')
  Future<chopper.Response<bool>> _apiVendorIdDelete(
      {@Path('id') required String? id});
}

@JsonSerializable(explicitToJson: true)
class AppUserDTO {
  AppUserDTO({
    this.id,
    this.email,
    this.name,
    this.image,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.gender,
    this.url,
    this.countryCode,
    this.phone,
    this.country,
    this.city,
    this.address,
    this.rating,
    this.birthDate,
    this.active,
    this.costPerAppointment,
    this.department,
  });

  factory AppUserDTO.fromJson(Map<String, dynamic> json) =>
      _$AppUserDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  @JsonKey(name: 'department', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? department;
  static const fromJsonFactory = _$AppUserDTOFromJson;
  static const toJsonFactory = _$AppUserDTOToJson;
  Map<String, dynamic> toJson() => _$AppUserDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      const DeepCollectionEquality().hash(department) ^
      runtimeType.hashCode;
}

extension $AppUserDTOExtension on AppUserDTO {
  AppUserDTO copyWith(
      {String? id,
      String? email,
      String? name,
      String? image,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? url,
      String? countryCode,
      String? phone,
      String? country,
      String? city,
      String? address,
      double? rating,
      DateTime? birthDate,
      bool? active,
      double? costPerAppointment,
      List<SelectDTO>? department}) {
    return AppUserDTO(
        id: id ?? this.id,
        email: email ?? this.email,
        name: name ?? this.name,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        rating: rating ?? this.rating,
        birthDate: birthDate ?? this.birthDate,
        active: active ?? this.active,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment,
        department: department ?? this.department);
  }
}

@JsonSerializable(explicitToJson: true)
class AppUserDTOPagedResult {
  AppUserDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory AppUserDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$AppUserDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <AppUserDTO>[])
  final List<AppUserDTO>? items;
  static const fromJsonFactory = _$AppUserDTOPagedResultFromJson;
  static const toJsonFactory = _$AppUserDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$AppUserDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $AppUserDTOPagedResultExtension on AppUserDTOPagedResult {
  AppUserDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<AppUserDTO>? items}) {
    return AppUserDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class AppUsuario {
  AppUsuario({
    this.id,
    this.userName,
    this.normalizedUserName,
    this.normalizedEmail,
    this.emailConfirmed,
    this.passwordHash,
    this.securityStamp,
    this.concurrencyStamp,
    this.phoneNumber,
    this.phoneNumberConfirmed,
    this.twoFactorEnabled,
    this.lockoutEnd,
    this.lockoutEnabled,
    this.accessFailedCount,
    this.firstName,
    this.lastName,
    this.name,
    this.email,
    this.url,
    this.titleAbbreviation,
    this.image,
    this.gender,
    this.active,
    this.parentId,
    this.projectId,
    this.parent,
    this.subordinates,
    this.userRoles,
  });

  factory AppUsuario.fromJson(Map<String, dynamic> json) =>
      _$AppUsuarioFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'normalizedUserName')
  final String? normalizedUserName;
  @JsonKey(name: 'normalizedEmail')
  final String? normalizedEmail;
  @JsonKey(name: 'emailConfirmed')
  final bool? emailConfirmed;
  @JsonKey(name: 'passwordHash')
  final String? passwordHash;
  @JsonKey(name: 'securityStamp')
  final String? securityStamp;
  @JsonKey(name: 'concurrencyStamp')
  final String? concurrencyStamp;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'phoneNumberConfirmed')
  final bool? phoneNumberConfirmed;
  @JsonKey(name: 'twoFactorEnabled')
  final bool? twoFactorEnabled;
  @JsonKey(name: 'lockoutEnd')
  final DateTime? lockoutEnd;
  @JsonKey(name: 'lockoutEnabled')
  final bool? lockoutEnabled;
  @JsonKey(name: 'accessFailedCount')
  final int? accessFailedCount;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'parentId')
  final String? parentId;
  @JsonKey(name: 'projectId')
  final String? projectId;
  @JsonKey(name: 'parent')
  final AppUsuario? parent;
  @JsonKey(name: 'subordinates', defaultValue: <AppUsuario>[])
  final List<AppUsuario>? subordinates;
  @JsonKey(name: 'userRoles', defaultValue: <UserRole>[])
  final List<UserRole>? userRoles;
  static const fromJsonFactory = _$AppUsuarioFromJson;
  static const toJsonFactory = _$AppUsuarioToJson;
  Map<String, dynamic> toJson() => _$AppUsuarioToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUsuario &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.normalizedUserName, normalizedUserName) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedUserName, normalizedUserName)) &&
            (identical(other.normalizedEmail, normalizedEmail) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedEmail, normalizedEmail)) &&
            (identical(other.emailConfirmed, emailConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.emailConfirmed, emailConfirmed)) &&
            (identical(other.passwordHash, passwordHash) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHash, passwordHash)) &&
            (identical(other.securityStamp, securityStamp) ||
                const DeepCollectionEquality()
                    .equals(other.securityStamp, securityStamp)) &&
            (identical(other.concurrencyStamp, concurrencyStamp) ||
                const DeepCollectionEquality()
                    .equals(other.concurrencyStamp, concurrencyStamp)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.phoneNumberConfirmed, phoneNumberConfirmed) ||
                const DeepCollectionEquality().equals(
                    other.phoneNumberConfirmed, phoneNumberConfirmed)) &&
            (identical(other.twoFactorEnabled, twoFactorEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.twoFactorEnabled, twoFactorEnabled)) &&
            (identical(other.lockoutEnd, lockoutEnd) ||
                const DeepCollectionEquality()
                    .equals(other.lockoutEnd, lockoutEnd)) &&
            (identical(other.lockoutEnabled, lockoutEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.lockoutEnabled, lockoutEnabled)) &&
            (identical(other.accessFailedCount, accessFailedCount) ||
                const DeepCollectionEquality()
                    .equals(other.accessFailedCount, accessFailedCount)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)) &&
            (identical(other.parent, parent) || const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.subordinates, subordinates) || const DeepCollectionEquality().equals(other.subordinates, subordinates)) &&
            (identical(other.userRoles, userRoles) || const DeepCollectionEquality().equals(other.userRoles, userRoles)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(normalizedUserName) ^
      const DeepCollectionEquality().hash(normalizedEmail) ^
      const DeepCollectionEquality().hash(emailConfirmed) ^
      const DeepCollectionEquality().hash(passwordHash) ^
      const DeepCollectionEquality().hash(securityStamp) ^
      const DeepCollectionEquality().hash(concurrencyStamp) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneNumberConfirmed) ^
      const DeepCollectionEquality().hash(twoFactorEnabled) ^
      const DeepCollectionEquality().hash(lockoutEnd) ^
      const DeepCollectionEquality().hash(lockoutEnabled) ^
      const DeepCollectionEquality().hash(accessFailedCount) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(projectId) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(subordinates) ^
      const DeepCollectionEquality().hash(userRoles) ^
      runtimeType.hashCode;
}

extension $AppUsuarioExtension on AppUsuario {
  AppUsuario copyWith(
      {String? id,
      String? userName,
      String? normalizedUserName,
      String? normalizedEmail,
      bool? emailConfirmed,
      String? passwordHash,
      String? securityStamp,
      String? concurrencyStamp,
      String? phoneNumber,
      bool? phoneNumberConfirmed,
      bool? twoFactorEnabled,
      DateTime? lockoutEnd,
      bool? lockoutEnabled,
      int? accessFailedCount,
      String? firstName,
      String? lastName,
      String? name,
      String? email,
      String? url,
      String? titleAbbreviation,
      String? image,
      enums.GenderEnum? gender,
      bool? active,
      String? parentId,
      String? projectId,
      AppUsuario? parent,
      List<AppUsuario>? subordinates,
      List<UserRole>? userRoles}) {
    return AppUsuario(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        normalizedUserName: normalizedUserName ?? this.normalizedUserName,
        normalizedEmail: normalizedEmail ?? this.normalizedEmail,
        emailConfirmed: emailConfirmed ?? this.emailConfirmed,
        passwordHash: passwordHash ?? this.passwordHash,
        securityStamp: securityStamp ?? this.securityStamp,
        concurrencyStamp: concurrencyStamp ?? this.concurrencyStamp,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        phoneNumberConfirmed: phoneNumberConfirmed ?? this.phoneNumberConfirmed,
        twoFactorEnabled: twoFactorEnabled ?? this.twoFactorEnabled,
        lockoutEnd: lockoutEnd ?? this.lockoutEnd,
        lockoutEnabled: lockoutEnabled ?? this.lockoutEnabled,
        accessFailedCount: accessFailedCount ?? this.accessFailedCount,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        name: name ?? this.name,
        email: email ?? this.email,
        url: url ?? this.url,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        image: image ?? this.image,
        gender: gender ?? this.gender,
        active: active ?? this.active,
        parentId: parentId ?? this.parentId,
        projectId: projectId ?? this.projectId,
        parent: parent ?? this.parent,
        subordinates: subordinates ?? this.subordinates,
        userRoles: userRoles ?? this.userRoles);
  }
}

@JsonSerializable(explicitToJson: true)
class AuthResponseDTO {
  AuthResponseDTO({
    this.userId,
    this.token,
    this.refreshToken,
    this.name,
    this.image,
    this.firstName,
    this.lastName,
    this.url,
    this.phone,
    this.active,
    this.roles,
  });

  factory AuthResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDTOFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'roles', defaultValue: <String>[])
  final List<String>? roles;
  static const fromJsonFactory = _$AuthResponseDTOFromJson;
  static const toJsonFactory = _$AuthResponseDTOToJson;
  Map<String, dynamic> toJson() => _$AuthResponseDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthResponseDTO &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $AuthResponseDTOExtension on AuthResponseDTO {
  AuthResponseDTO copyWith(
      {String? userId,
      String? token,
      String? refreshToken,
      String? name,
      String? image,
      String? firstName,
      String? lastName,
      String? url,
      String? phone,
      bool? active,
      List<String>? roles}) {
    return AuthResponseDTO(
        userId: userId ?? this.userId,
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
        name: name ?? this.name,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        phone: phone ?? this.phone,
        active: active ?? this.active,
        roles: roles ?? this.roles);
  }
}

@JsonSerializable(explicitToJson: true)
class Brand {
  Brand({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$BrandFromJson;
  static const toJsonFactory = _$BrandToJson;
  Map<String, dynamic> toJson() => _$BrandToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Brand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $BrandExtension on Brand {
  Brand copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description}) {
    return Brand(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class BrandDTO {
  BrandDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory BrandDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$BrandDTOFromJson;
  static const toJsonFactory = _$BrandDTOToJson;
  Map<String, dynamic> toJson() => _$BrandDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $BrandDTOExtension on BrandDTO {
  BrandDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return BrandDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class BrandDTOPagedResult {
  BrandDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory BrandDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$BrandDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <BrandDTO>[])
  final List<BrandDTO>? items;
  static const fromJsonFactory = _$BrandDTOPagedResultFromJson;
  static const toJsonFactory = _$BrandDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$BrandDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $BrandDTOPagedResultExtension on BrandDTOPagedResult {
  BrandDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<BrandDTO>? items}) {
    return BrandDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class CompanyDTO {
  CompanyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.vehicles,
  });

  factory CompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$CompanyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vehicles', defaultValue: <VehicleDTO>[])
  final List<VehicleDTO>? vehicles;
  static const fromJsonFactory = _$CompanyDTOFromJson;
  static const toJsonFactory = _$CompanyDTOToJson;
  Map<String, dynamic> toJson() => _$CompanyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $CompanyDTOExtension on CompanyDTO {
  CompanyDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<VehicleDTO>? vehicles}) {
    return CompanyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        vehicles: vehicles ?? this.vehicles);
  }
}

@JsonSerializable(explicitToJson: true)
class CompanyDTOPagedResult {
  CompanyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory CompanyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$CompanyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <CompanyDTO>[])
  final List<CompanyDTO>? items;
  static const fromJsonFactory = _$CompanyDTOPagedResultFromJson;
  static const toJsonFactory = _$CompanyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$CompanyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CompanyDTOPagedResultExtension on CompanyDTOPagedResult {
  CompanyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<CompanyDTO>? items}) {
    return CompanyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class CostCenterDTO {
  CostCenterDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
  });

  factory CostCenterDTO.fromJson(Map<String, dynamic> json) =>
      _$CostCenterDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  static const fromJsonFactory = _$CostCenterDTOFromJson;
  static const toJsonFactory = _$CostCenterDTOToJson;
  Map<String, dynamic> toJson() => _$CostCenterDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CostCenterDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      runtimeType.hashCode;
}

extension $CostCenterDTOExtension on CostCenterDTO {
  CostCenterDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId}) {
    return CostCenterDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId);
  }
}

@JsonSerializable(explicitToJson: true)
class CostCenterDTOPagedResult {
  CostCenterDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory CostCenterDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$CostCenterDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <CostCenterDTO>[])
  final List<CostCenterDTO>? items;
  static const fromJsonFactory = _$CostCenterDTOPagedResultFromJson;
  static const toJsonFactory = _$CostCenterDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$CostCenterDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CostCenterDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CostCenterDTOPagedResultExtension on CostCenterDTOPagedResult {
  CostCenterDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<CostCenterDTO>? items}) {
    return CostCenterDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class Document {
  Document({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.path,
    this.fileName,
  });

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'fileName')
  final String? fileName;
  static const fromJsonFactory = _$DocumentFromJson;
  static const toJsonFactory = _$DocumentToJson;
  Map<String, dynamic> toJson() => _$DocumentToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Document &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(fileName) ^
      runtimeType.hashCode;
}

extension $DocumentExtension on Document {
  Document copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? path,
      String? fileName}) {
    return Document(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        path: path ?? this.path,
        fileName: fileName ?? this.fileName);
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentDTO {
  DocumentDTO({
    this.id,
    this.path,
    this.fileName,
  });

  factory DocumentDTO.fromJson(Map<String, dynamic> json) =>
      _$DocumentDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'fileName')
  final String? fileName;
  static const fromJsonFactory = _$DocumentDTOFromJson;
  static const toJsonFactory = _$DocumentDTOToJson;
  Map<String, dynamic> toJson() => _$DocumentDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(fileName) ^
      runtimeType.hashCode;
}

extension $DocumentDTOExtension on DocumentDTO {
  DocumentDTO copyWith({String? id, String? path, String? fileName}) {
    return DocumentDTO(
        id: id ?? this.id,
        path: path ?? this.path,
        fileName: fileName ?? this.fileName);
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentDTOPagedResult {
  DocumentDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory DocumentDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$DocumentDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <DocumentDTO>[])
  final List<DocumentDTO>? items;
  static const fromJsonFactory = _$DocumentDTOPagedResultFromJson;
  static const toJsonFactory = _$DocumentDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$DocumentDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $DocumentDTOPagedResultExtension on DocumentDTOPagedResult {
  DocumentDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<DocumentDTO>? items}) {
    return DocumentDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class EditUserResponse {
  EditUserResponse({
    this.saved,
    this.image,
  });

  factory EditUserResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUserResponseFromJson(json);

  @JsonKey(name: 'saved')
  final bool? saved;
  @JsonKey(name: 'image')
  final String? image;
  static const fromJsonFactory = _$EditUserResponseFromJson;
  static const toJsonFactory = _$EditUserResponseToJson;
  Map<String, dynamic> toJson() => _$EditUserResponseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditUserResponse &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(image) ^
      runtimeType.hashCode;
}

extension $EditUserResponseExtension on EditUserResponse {
  EditUserResponse copyWith({bool? saved, String? image}) {
    return EditUserResponse(
        saved: saved ?? this.saved, image: image ?? this.image);
  }
}

@JsonSerializable(explicitToJson: true)
class EngineDTO {
  EngineDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.modelId,
    this.model,
  });

  factory EngineDTO.fromJson(Map<String, dynamic> json) =>
      _$EngineDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'model')
  final ModelDTO? model;
  static const fromJsonFactory = _$EngineDTOFromJson;
  static const toJsonFactory = _$EngineDTOToJson;
  Map<String, dynamic> toJson() => _$EngineDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EngineDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(model) ^
      runtimeType.hashCode;
}

extension $EngineDTOExtension on EngineDTO {
  EngineDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? modelId,
      ModelDTO? model}) {
    return EngineDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        modelId: modelId ?? this.modelId,
        model: model ?? this.model);
  }
}

@JsonSerializable(explicitToJson: true)
class EngineDTOPagedResult {
  EngineDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory EngineDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$EngineDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <EngineDTO>[])
  final List<EngineDTO>? items;
  static const fromJsonFactory = _$EngineDTOPagedResultFromJson;
  static const toJsonFactory = _$EngineDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$EngineDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EngineDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $EngineDTOPagedResultExtension on EngineDTOPagedResult {
  EngineDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<EngineDTO>? items}) {
    return EngineDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelLoad {
  FuelLoad({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.amount,
    this.reference,
    this.full,
    this.liters,
    this.unitCost,
    this.vehicleId,
    this.documentId,
    this.chargeDate,
    this.chargeHour,
    this.vehicle,
    this.document,
  });

  factory FuelLoad.fromJson(Map<String, dynamic> json) =>
      _$FuelLoadFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'full')
  final bool? full;
  @JsonKey(name: 'liters')
  final double? liters;
  @JsonKey(name: 'unitCost')
  final double? unitCost;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'chargeDate')
  final DateTime? chargeDate;
  @JsonKey(name: 'chargeHour')
  final TimeSpan? chargeHour;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'document')
  final Document? document;
  static const fromJsonFactory = _$FuelLoadFromJson;
  static const toJsonFactory = _$FuelLoadToJson;
  Map<String, dynamic> toJson() => _$FuelLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelLoad &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.full, full) ||
                const DeepCollectionEquality().equals(other.full, full)) &&
            (identical(other.liters, liters) ||
                const DeepCollectionEquality().equals(other.liters, liters)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.chargeDate, chargeDate) ||
                const DeepCollectionEquality()
                    .equals(other.chargeDate, chargeDate)) &&
            (identical(other.chargeHour, chargeHour) ||
                const DeepCollectionEquality()
                    .equals(other.chargeHour, chargeHour)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(full) ^
      const DeepCollectionEquality().hash(liters) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(chargeDate) ^
      const DeepCollectionEquality().hash(chargeHour) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(document) ^
      runtimeType.hashCode;
}

extension $FuelLoadExtension on FuelLoad {
  FuelLoad copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      double? amount,
      String? reference,
      bool? full,
      double? liters,
      double? unitCost,
      String? vehicleId,
      String? documentId,
      DateTime? chargeDate,
      TimeSpan? chargeHour,
      Vehicle? vehicle,
      Document? document}) {
    return FuelLoad(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        amount: amount ?? this.amount,
        reference: reference ?? this.reference,
        full: full ?? this.full,
        liters: liters ?? this.liters,
        unitCost: unitCost ?? this.unitCost,
        vehicleId: vehicleId ?? this.vehicleId,
        documentId: documentId ?? this.documentId,
        chargeDate: chargeDate ?? this.chargeDate,
        chargeHour: chargeHour ?? this.chargeHour,
        vehicle: vehicle ?? this.vehicle,
        document: document ?? this.document);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelLoadDTO {
  FuelLoadDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.chargeDate,
    this.chargeHour,
    this.liters,
    this.unitCost,
    this.amount,
    this.reference,
    this.full,
    this.documentId,
    this.vehicleId,
    this.vehicle,
    this.document,
  });

  factory FuelLoadDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelLoadDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'chargeDate')
  final DateTime? chargeDate;
  @JsonKey(name: 'chargeHour')
  final TimeSpan? chargeHour;
  @JsonKey(name: 'liters')
  final int? liters;
  @JsonKey(name: 'unitCost')
  final double? unitCost;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'full')
  final bool? full;
  @JsonKey(name: 'documentId')
  final int? documentId;
  @JsonKey(name: 'vehicleId')
  final int? vehicleId;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'document')
  final DocumentDTO? document;
  static const fromJsonFactory = _$FuelLoadDTOFromJson;
  static const toJsonFactory = _$FuelLoadDTOToJson;
  Map<String, dynamic> toJson() => _$FuelLoadDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelLoadDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.chargeDate, chargeDate) ||
                const DeepCollectionEquality()
                    .equals(other.chargeDate, chargeDate)) &&
            (identical(other.chargeHour, chargeHour) ||
                const DeepCollectionEquality()
                    .equals(other.chargeHour, chargeHour)) &&
            (identical(other.liters, liters) ||
                const DeepCollectionEquality().equals(other.liters, liters)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.full, full) ||
                const DeepCollectionEquality().equals(other.full, full)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(chargeDate) ^
      const DeepCollectionEquality().hash(chargeHour) ^
      const DeepCollectionEquality().hash(liters) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(full) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(document) ^
      runtimeType.hashCode;
}

extension $FuelLoadDTOExtension on FuelLoadDTO {
  FuelLoadDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      DateTime? chargeDate,
      TimeSpan? chargeHour,
      int? liters,
      double? unitCost,
      double? amount,
      String? reference,
      bool? full,
      int? documentId,
      int? vehicleId,
      Vehicle? vehicle,
      DocumentDTO? document}) {
    return FuelLoadDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        chargeDate: chargeDate ?? this.chargeDate,
        chargeHour: chargeHour ?? this.chargeHour,
        liters: liters ?? this.liters,
        unitCost: unitCost ?? this.unitCost,
        amount: amount ?? this.amount,
        reference: reference ?? this.reference,
        full: full ?? this.full,
        documentId: documentId ?? this.documentId,
        vehicleId: vehicleId ?? this.vehicleId,
        vehicle: vehicle ?? this.vehicle,
        document: document ?? this.document);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelLoadDTOPagedResult {
  FuelLoadDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelLoadDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelLoadDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelLoadDTO>[])
  final List<FuelLoadDTO>? items;
  static const fromJsonFactory = _$FuelLoadDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelLoadDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelLoadDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelLoadDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelLoadDTOPagedResultExtension on FuelLoadDTOPagedResult {
  FuelLoadDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelLoadDTO>? items}) {
    return FuelLoadDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelTypeDTO {
  FuelTypeDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.fuelLoads,
  });

  factory FuelTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelTypeDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'fuelLoads', defaultValue: <FuelLoadDTO>[])
  final List<FuelLoadDTO>? fuelLoads;
  static const fromJsonFactory = _$FuelTypeDTOFromJson;
  static const toJsonFactory = _$FuelTypeDTOToJson;
  Map<String, dynamic> toJson() => _$FuelTypeDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelTypeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.fuelLoads, fuelLoads) ||
                const DeepCollectionEquality()
                    .equals(other.fuelLoads, fuelLoads)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(fuelLoads) ^
      runtimeType.hashCode;
}

extension $FuelTypeDTOExtension on FuelTypeDTO {
  FuelTypeDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<FuelLoadDTO>? fuelLoads}) {
    return FuelTypeDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        fuelLoads: fuelLoads ?? this.fuelLoads);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelTypeDTOPagedResult {
  FuelTypeDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelTypeDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelTypeDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelTypeDTO>[])
  final List<FuelTypeDTO>? items;
  static const fromJsonFactory = _$FuelTypeDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelTypeDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelTypeDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelTypeDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelTypeDTOPagedResultExtension on FuelTypeDTOPagedResult {
  FuelTypeDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelTypeDTO>? items}) {
    return FuelTypeDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelVendorDTO {
  FuelVendorDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
    this.fuelLoads,
  });

  factory FuelVendorDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelVendorDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  @JsonKey(name: 'fuelLoads', defaultValue: <FuelLoadDTO>[])
  final List<FuelLoadDTO>? fuelLoads;
  static const fromJsonFactory = _$FuelVendorDTOFromJson;
  static const toJsonFactory = _$FuelVendorDTOToJson;
  Map<String, dynamic> toJson() => _$FuelVendorDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelVendorDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)) &&
            (identical(other.fuelLoads, fuelLoads) ||
                const DeepCollectionEquality()
                    .equals(other.fuelLoads, fuelLoads)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      const DeepCollectionEquality().hash(fuelLoads) ^
      runtimeType.hashCode;
}

extension $FuelVendorDTOExtension on FuelVendorDTO {
  FuelVendorDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId,
      List<FuelLoadDTO>? fuelLoads}) {
    return FuelVendorDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId,
        fuelLoads: fuelLoads ?? this.fuelLoads);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelVendorDTOPagedResult {
  FuelVendorDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelVendorDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelVendorDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelVendorDTO>[])
  final List<FuelVendorDTO>? items;
  static const fromJsonFactory = _$FuelVendorDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelVendorDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelVendorDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelVendorDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelVendorDTOPagedResultExtension on FuelVendorDTOPagedResult {
  FuelVendorDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelVendorDTO>? items}) {
    return FuelVendorDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ImageDTO {
  ImageDTO({
    this.id,
    this.path,
    this.name,
    this.extension,
    this.vehicleId,
    this.vehicle,
  });

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'extension')
  final String? extension;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicle')
  final VehicleDTO? vehicle;
  static const fromJsonFactory = _$ImageDTOFromJson;
  static const toJsonFactory = _$ImageDTOToJson;
  Map<String, dynamic> toJson() => _$ImageDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.extension, extension) ||
                const DeepCollectionEquality()
                    .equals(other.extension, extension)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      runtimeType.hashCode;
}

extension $ImageDTOExtension on ImageDTO {
  ImageDTO copyWith(
      {String? id,
      String? path,
      String? name,
      String? extension,
      String? vehicleId,
      VehicleDTO? vehicle}) {
    return ImageDTO(
        id: id ?? this.id,
        path: path ?? this.path,
        name: name ?? this.name,
        extension: extension ?? this.extension,
        vehicleId: vehicleId ?? this.vehicleId,
        vehicle: vehicle ?? this.vehicle);
  }
}

@JsonSerializable(explicitToJson: true)
class ImageDTOPagedResult {
  ImageDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ImageDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ImageDTO>[])
  final List<ImageDTO>? items;
  static const fromJsonFactory = _$ImageDTOPagedResultFromJson;
  static const toJsonFactory = _$ImageDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ImageDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ImageDTOPagedResultExtension on ImageDTOPagedResult {
  ImageDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ImageDTO>? items}) {
    return ImageDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class IncidentDTO {
  IncidentDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.vehicleId,
    this.vehicle,
  });

  factory IncidentDTO.fromJson(Map<String, dynamic> json) =>
      _$IncidentDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicle')
  final VehicleDTO? vehicle;
  static const fromJsonFactory = _$IncidentDTOFromJson;
  static const toJsonFactory = _$IncidentDTOToJson;
  Map<String, dynamic> toJson() => _$IncidentDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncidentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      runtimeType.hashCode;
}

extension $IncidentDTOExtension on IncidentDTO {
  IncidentDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? vehicleId,
      VehicleDTO? vehicle}) {
    return IncidentDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        vehicleId: vehicleId ?? this.vehicleId,
        vehicle: vehicle ?? this.vehicle);
  }
}

@JsonSerializable(explicitToJson: true)
class IncidentDTOPagedResult {
  IncidentDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory IncidentDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$IncidentDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <IncidentDTO>[])
  final List<IncidentDTO>? items;
  static const fromJsonFactory = _$IncidentDTOPagedResultFromJson;
  static const toJsonFactory = _$IncidentDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$IncidentDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncidentDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $IncidentDTOPagedResultExtension on IncidentDTOPagedResult {
  IncidentDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<IncidentDTO>? items}) {
    return IncidentDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class IncisoDTO {
  IncisoDTO({
    this.id,
    this.name,
    this.vehicleId,
    this.vehicle,
    this.policyId,
    this.policy,
  });

  factory IncisoDTO.fromJson(Map<String, dynamic> json) =>
      _$IncisoDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicle')
  final VehicleDTO? vehicle;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'policy')
  final PolicyDTO? policy;
  static const fromJsonFactory = _$IncisoDTOFromJson;
  static const toJsonFactory = _$IncisoDTOToJson;
  Map<String, dynamic> toJson() => _$IncisoDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncisoDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.policy, policy) ||
                const DeepCollectionEquality().equals(other.policy, policy)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(policy) ^
      runtimeType.hashCode;
}

extension $IncisoDTOExtension on IncisoDTO {
  IncisoDTO copyWith(
      {String? id,
      String? name,
      String? vehicleId,
      VehicleDTO? vehicle,
      String? policyId,
      PolicyDTO? policy}) {
    return IncisoDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        vehicleId: vehicleId ?? this.vehicleId,
        vehicle: vehicle ?? this.vehicle,
        policyId: policyId ?? this.policyId,
        policy: policy ?? this.policy);
  }
}

@JsonSerializable(explicitToJson: true)
class IncisoDTOPagedResult {
  IncisoDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory IncisoDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$IncisoDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <IncisoDTO>[])
  final List<IncisoDTO>? items;
  static const fromJsonFactory = _$IncisoDTOPagedResultFromJson;
  static const toJsonFactory = _$IncisoDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$IncisoDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncisoDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $IncisoDTOPagedResultExtension on IncisoDTOPagedResult {
  IncisoDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<IncisoDTO>? items}) {
    return IncisoDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class InsuranceCompany {
  InsuranceCompany({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
    this.policies,
  });

  factory InsuranceCompany.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'policies', defaultValue: <Policy>[])
  final List<Policy>? policies;
  static const fromJsonFactory = _$InsuranceCompanyFromJson;
  static const toJsonFactory = _$InsuranceCompanyToJson;
  Map<String, dynamic> toJson() => _$InsuranceCompanyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsuranceCompany &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(policies) ^
      runtimeType.hashCode;
}

extension $InsuranceCompanyExtension on InsuranceCompany {
  InsuranceCompany copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description,
      List<Policy>? policies}) {
    return InsuranceCompany(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        policies: policies ?? this.policies);
  }
}

@JsonSerializable(explicitToJson: true)
class InsuranceCompanyDTO {
  InsuranceCompanyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.policies,
  });

  factory InsuranceCompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'policies', defaultValue: <PolicyDTO>[])
  final List<PolicyDTO>? policies;
  static const fromJsonFactory = _$InsuranceCompanyDTOFromJson;
  static const toJsonFactory = _$InsuranceCompanyDTOToJson;
  Map<String, dynamic> toJson() => _$InsuranceCompanyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsuranceCompanyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(policies) ^
      runtimeType.hashCode;
}

extension $InsuranceCompanyDTOExtension on InsuranceCompanyDTO {
  InsuranceCompanyDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<PolicyDTO>? policies}) {
    return InsuranceCompanyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        policies: policies ?? this.policies);
  }
}

@JsonSerializable(explicitToJson: true)
class InsuranceCompanyDTOPagedResult {
  InsuranceCompanyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory InsuranceCompanyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <InsuranceCompanyDTO>[])
  final List<InsuranceCompanyDTO>? items;
  static const fromJsonFactory = _$InsuranceCompanyDTOPagedResultFromJson;
  static const toJsonFactory = _$InsuranceCompanyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$InsuranceCompanyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsuranceCompanyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $InsuranceCompanyDTOPagedResultExtension
    on InsuranceCompanyDTOPagedResult {
  InsuranceCompanyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<InsuranceCompanyDTO>? items}) {
    return InsuranceCompanyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDTO {
  LoginDTO({
    required this.email,
    required this.password,
  });

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$LoginDTOFromJson;
  static const toJsonFactory = _$LoginDTOToJson;
  Map<String, dynamic> toJson() => _$LoginDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginDTO &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginDTOExtension on LoginDTO {
  LoginDTO copyWith({String? email, String? password}) {
    return LoginDTO(
        email: email ?? this.email, password: password ?? this.password);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceDTO {
  MaintenanceDTO({
    this.id,
    this.name,
    this.startDate,
    this.finishDate,
    this.startHour,
    this.finishHour,
    this.comments,
    this.odometer,
    this.maintenanceTypeId,
    this.maintenanceGroupId,
    this.vendorId,
    this.vehicleId,
    this.documentId,
    this.vendor,
    this.document,
    this.maintenanceGroup,
    this.maintenanceType,
    this.vehicle,
    this.maintenanceParts,
  });

  factory MaintenanceDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'finishDate')
  final DateTime? finishDate;
  @JsonKey(name: 'startHour')
  final TimeSpan? startHour;
  @JsonKey(name: 'finishHour')
  final TimeSpan? finishHour;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'odometer')
  final String? odometer;
  @JsonKey(name: 'maintenanceTypeId')
  final String? maintenanceTypeId;
  @JsonKey(name: 'maintenanceGroupId')
  final String? maintenanceGroupId;
  @JsonKey(name: 'vendorId')
  final String? vendorId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'vendor')
  final VendorDTO? vendor;
  @JsonKey(name: 'document')
  final DocumentDTO? document;
  @JsonKey(name: 'maintenanceGroup')
  final MaintenanceGroupDTO? maintenanceGroup;
  @JsonKey(name: 'maintenanceType')
  final MaintenanceTypeDTO? maintenanceType;
  @JsonKey(name: 'vehicle')
  final VehicleDTO? vehicle;
  @JsonKey(name: 'maintenanceParts', defaultValue: <MaintenancePartDTO>[])
  final List<MaintenancePartDTO>? maintenanceParts;
  static const fromJsonFactory = _$MaintenanceDTOFromJson;
  static const toJsonFactory = _$MaintenanceDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenanceDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.finishDate, finishDate) ||
                const DeepCollectionEquality()
                    .equals(other.finishDate, finishDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.finishHour, finishHour) ||
                const DeepCollectionEquality()
                    .equals(other.finishHour, finishHour)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.odometer, odometer) ||
                const DeepCollectionEquality()
                    .equals(other.odometer, odometer)) &&
            (identical(other.maintenanceTypeId, maintenanceTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceTypeId, maintenanceTypeId)) &&
            (identical(other.maintenanceGroupId, maintenanceGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceGroupId, maintenanceGroupId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.vendor, vendor) ||
                const DeepCollectionEquality().equals(other.vendor, vendor)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.maintenanceGroup, maintenanceGroup) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceGroup, maintenanceGroup)) &&
            (identical(other.maintenanceType, maintenanceType) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceType, maintenanceType)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.maintenanceParts, maintenanceParts) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceParts, maintenanceParts)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(finishDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(finishHour) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(odometer) ^
      const DeepCollectionEquality().hash(maintenanceTypeId) ^
      const DeepCollectionEquality().hash(maintenanceGroupId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(vendor) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(maintenanceGroup) ^
      const DeepCollectionEquality().hash(maintenanceType) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(maintenanceParts) ^
      runtimeType.hashCode;
}

extension $MaintenanceDTOExtension on MaintenanceDTO {
  MaintenanceDTO copyWith(
      {String? id,
      String? name,
      DateTime? startDate,
      DateTime? finishDate,
      TimeSpan? startHour,
      TimeSpan? finishHour,
      String? comments,
      String? odometer,
      String? maintenanceTypeId,
      String? maintenanceGroupId,
      String? vendorId,
      String? vehicleId,
      String? documentId,
      VendorDTO? vendor,
      DocumentDTO? document,
      MaintenanceGroupDTO? maintenanceGroup,
      MaintenanceTypeDTO? maintenanceType,
      VehicleDTO? vehicle,
      List<MaintenancePartDTO>? maintenanceParts}) {
    return MaintenanceDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        finishDate: finishDate ?? this.finishDate,
        startHour: startHour ?? this.startHour,
        finishHour: finishHour ?? this.finishHour,
        comments: comments ?? this.comments,
        odometer: odometer ?? this.odometer,
        maintenanceTypeId: maintenanceTypeId ?? this.maintenanceTypeId,
        maintenanceGroupId: maintenanceGroupId ?? this.maintenanceGroupId,
        vendorId: vendorId ?? this.vendorId,
        vehicleId: vehicleId ?? this.vehicleId,
        documentId: documentId ?? this.documentId,
        vendor: vendor ?? this.vendor,
        document: document ?? this.document,
        maintenanceGroup: maintenanceGroup ?? this.maintenanceGroup,
        maintenanceType: maintenanceType ?? this.maintenanceType,
        vehicle: vehicle ?? this.vehicle,
        maintenanceParts: maintenanceParts ?? this.maintenanceParts);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceDTOPagedResult {
  MaintenanceDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenanceDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenanceDTO>[])
  final List<MaintenanceDTO>? items;
  static const fromJsonFactory = _$MaintenanceDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenanceDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenanceDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenanceDTOPagedResultExtension on MaintenanceDTOPagedResult {
  MaintenanceDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenanceDTO>? items}) {
    return MaintenanceDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceGroupDTO {
  MaintenanceGroupDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.maintenances,
  });

  factory MaintenanceGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceGroupDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'maintenances', defaultValue: <MaintenanceDTO>[])
  final List<MaintenanceDTO>? maintenances;
  static const fromJsonFactory = _$MaintenanceGroupDTOFromJson;
  static const toJsonFactory = _$MaintenanceGroupDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenanceGroupDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceGroupDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.maintenances, maintenances) ||
                const DeepCollectionEquality()
                    .equals(other.maintenances, maintenances)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(maintenances) ^
      runtimeType.hashCode;
}

extension $MaintenanceGroupDTOExtension on MaintenanceGroupDTO {
  MaintenanceGroupDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<MaintenanceDTO>? maintenances}) {
    return MaintenanceGroupDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        maintenances: maintenances ?? this.maintenances);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceGroupDTOPagedResult {
  MaintenanceGroupDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenanceGroupDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceGroupDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenanceGroupDTO>[])
  final List<MaintenanceGroupDTO>? items;
  static const fromJsonFactory = _$MaintenanceGroupDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenanceGroupDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenanceGroupDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceGroupDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenanceGroupDTOPagedResultExtension
    on MaintenanceGroupDTOPagedResult {
  MaintenanceGroupDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenanceGroupDTO>? items}) {
    return MaintenanceGroupDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenancePartDTO {
  MaintenancePartDTO({
    this.id,
    this.maintenanceId,
    this.partId,
    this.maintenance,
    this.$part,
  });

  factory MaintenancePartDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePartDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'maintenanceId')
  final String? maintenanceId;
  @JsonKey(name: 'partId')
  final String? partId;
  @JsonKey(name: 'maintenance')
  final MaintenanceDTO? maintenance;
  @JsonKey(name: 'part')
  final PartDTO? $part;
  static const fromJsonFactory = _$MaintenancePartDTOFromJson;
  static const toJsonFactory = _$MaintenancePartDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenancePartDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenancePartDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.maintenanceId, maintenanceId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceId, maintenanceId)) &&
            (identical(other.partId, partId) ||
                const DeepCollectionEquality().equals(other.partId, partId)) &&
            (identical(other.maintenance, maintenance) ||
                const DeepCollectionEquality()
                    .equals(other.maintenance, maintenance)) &&
            (identical(other.$part, $part) ||
                const DeepCollectionEquality().equals(other.$part, $part)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(maintenanceId) ^
      const DeepCollectionEquality().hash(partId) ^
      const DeepCollectionEquality().hash(maintenance) ^
      const DeepCollectionEquality().hash($part) ^
      runtimeType.hashCode;
}

extension $MaintenancePartDTOExtension on MaintenancePartDTO {
  MaintenancePartDTO copyWith(
      {String? id,
      String? maintenanceId,
      String? partId,
      MaintenanceDTO? maintenance,
      PartDTO? $part}) {
    return MaintenancePartDTO(
        id: id ?? this.id,
        maintenanceId: maintenanceId ?? this.maintenanceId,
        partId: partId ?? this.partId,
        maintenance: maintenance ?? this.maintenance,
        $part: $part ?? this.$part);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenancePartDTOPagedResult {
  MaintenancePartDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenancePartDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePartDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenancePartDTO>[])
  final List<MaintenancePartDTO>? items;
  static const fromJsonFactory = _$MaintenancePartDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenancePartDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenancePartDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenancePartDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenancePartDTOPagedResultExtension
    on MaintenancePartDTOPagedResult {
  MaintenancePartDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenancePartDTO>? items}) {
    return MaintenancePartDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceTypeDTO {
  MaintenanceTypeDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory MaintenanceTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceTypeDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$MaintenanceTypeDTOFromJson;
  static const toJsonFactory = _$MaintenanceTypeDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenanceTypeDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceTypeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $MaintenanceTypeDTOExtension on MaintenanceTypeDTO {
  MaintenanceTypeDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return MaintenanceTypeDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceTypeDTOPagedResult {
  MaintenanceTypeDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenanceTypeDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceTypeDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenanceTypeDTO>[])
  final List<MaintenanceTypeDTO>? items;
  static const fromJsonFactory = _$MaintenanceTypeDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenanceTypeDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenanceTypeDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceTypeDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenanceTypeDTOPagedResultExtension
    on MaintenanceTypeDTOPagedResult {
  MaintenanceTypeDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenanceTypeDTO>? items}) {
    return MaintenanceTypeDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class Model {
  Model({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
    this.brandId,
    this.brand,
  });

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'brand')
  final Brand? brand;
  static const fromJsonFactory = _$ModelFromJson;
  static const toJsonFactory = _$ModelToJson;
  Map<String, dynamic> toJson() => _$ModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Model &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(brand) ^
      runtimeType.hashCode;
}

extension $ModelExtension on Model {
  Model copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description,
      String? brandId,
      Brand? brand}) {
    return Model(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        brandId: brandId ?? this.brandId,
        brand: brand ?? this.brand);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelDTO {
  ModelDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.brandId,
    this.brand,
  });

  factory ModelDTO.fromJson(Map<String, dynamic> json) =>
      _$ModelDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'brandId')
  final int? brandId;
  @JsonKey(name: 'brand')
  final BrandDTO? brand;
  static const fromJsonFactory = _$ModelDTOFromJson;
  static const toJsonFactory = _$ModelDTOToJson;
  Map<String, dynamic> toJson() => _$ModelDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(brand) ^
      runtimeType.hashCode;
}

extension $ModelDTOExtension on ModelDTO {
  ModelDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? brandId,
      BrandDTO? brand}) {
    return ModelDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        brandId: brandId ?? this.brandId,
        brand: brand ?? this.brand);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelDTOPagedResult {
  ModelDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ModelDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ModelDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ModelDTO>[])
  final List<ModelDTO>? items;
  static const fromJsonFactory = _$ModelDTOPagedResultFromJson;
  static const toJsonFactory = _$ModelDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ModelDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ModelDTOPagedResultExtension on ModelDTOPagedResult {
  ModelDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ModelDTO>? items}) {
    return ModelDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PartDTO {
  PartDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
    this.vendorId,
    this.vendor,
    this.maintenanceParts,
  });

  factory PartDTO.fromJson(Map<String, dynamic> json) =>
      _$PartDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  @JsonKey(name: 'vendorId')
  final String? vendorId;
  @JsonKey(name: 'vendor')
  final VendorDTO? vendor;
  @JsonKey(name: 'maintenanceParts', defaultValue: <MaintenancePartDTO>[])
  final List<MaintenancePartDTO>? maintenanceParts;
  static const fromJsonFactory = _$PartDTOFromJson;
  static const toJsonFactory = _$PartDTOToJson;
  Map<String, dynamic> toJson() => _$PartDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PartDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)) &&
            (identical(other.vendor, vendor) ||
                const DeepCollectionEquality().equals(other.vendor, vendor)) &&
            (identical(other.maintenanceParts, maintenanceParts) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceParts, maintenanceParts)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      const DeepCollectionEquality().hash(vendor) ^
      const DeepCollectionEquality().hash(maintenanceParts) ^
      runtimeType.hashCode;
}

extension $PartDTOExtension on PartDTO {
  PartDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId,
      String? vendorId,
      VendorDTO? vendor,
      List<MaintenancePartDTO>? maintenanceParts}) {
    return PartDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId,
        vendorId: vendorId ?? this.vendorId,
        vendor: vendor ?? this.vendor,
        maintenanceParts: maintenanceParts ?? this.maintenanceParts);
  }
}

@JsonSerializable(explicitToJson: true)
class PartDTOPagedResult {
  PartDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PartDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PartDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PartDTO>[])
  final List<PartDTO>? items;
  static const fromJsonFactory = _$PartDTOPagedResultFromJson;
  static const toJsonFactory = _$PartDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PartDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PartDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PartDTOPagedResultExtension on PartDTOPagedResult {
  PartDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PartDTO>? items}) {
    return PartDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class Policy {
  Policy({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
    this.startDate,
    this.endDate,
    this.quantityVehicles,
    this.vehicles,
    this.policyStatusId,
    this.policyStatus,
    this.policyPacketId,
    this.policyPacket,
    this.insuranceCompanyId,
    this.insuranceCompany,
  });

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'quantityVehicles')
  final int? quantityVehicles;
  @JsonKey(name: 'vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? vehicles;
  @JsonKey(name: 'policyStatusId')
  final String? policyStatusId;
  @JsonKey(name: 'policyStatus')
  final PolicyStatus? policyStatus;
  @JsonKey(name: 'policyPacketId')
  final String? policyPacketId;
  @JsonKey(name: 'policyPacket')
  final PolicyPacket? policyPacket;
  @JsonKey(name: 'insuranceCompanyId')
  final String? insuranceCompanyId;
  @JsonKey(name: 'insuranceCompany')
  final InsuranceCompany? insuranceCompany;
  static const fromJsonFactory = _$PolicyFromJson;
  static const toJsonFactory = _$PolicyToJson;
  Map<String, dynamic> toJson() => _$PolicyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Policy &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.quantityVehicles, quantityVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.quantityVehicles, quantityVehicles)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.policyStatusId, policyStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.policyStatusId, policyStatusId)) &&
            (identical(other.policyStatus, policyStatus) ||
                const DeepCollectionEquality()
                    .equals(other.policyStatus, policyStatus)) &&
            (identical(other.policyPacketId, policyPacketId) ||
                const DeepCollectionEquality()
                    .equals(other.policyPacketId, policyPacketId)) &&
            (identical(other.policyPacket, policyPacket) ||
                const DeepCollectionEquality()
                    .equals(other.policyPacket, policyPacket)) &&
            (identical(other.insuranceCompanyId, insuranceCompanyId) ||
                const DeepCollectionEquality()
                    .equals(other.insuranceCompanyId, insuranceCompanyId)) &&
            (identical(other.insuranceCompany, insuranceCompany) ||
                const DeepCollectionEquality()
                    .equals(other.insuranceCompany, insuranceCompany)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(quantityVehicles) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(policyStatusId) ^
      const DeepCollectionEquality().hash(policyStatus) ^
      const DeepCollectionEquality().hash(policyPacketId) ^
      const DeepCollectionEquality().hash(policyPacket) ^
      const DeepCollectionEquality().hash(insuranceCompanyId) ^
      const DeepCollectionEquality().hash(insuranceCompany) ^
      runtimeType.hashCode;
}

extension $PolicyExtension on Policy {
  Policy copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      int? quantityVehicles,
      List<Vehicle>? vehicles,
      String? policyStatusId,
      PolicyStatus? policyStatus,
      String? policyPacketId,
      PolicyPacket? policyPacket,
      String? insuranceCompanyId,
      InsuranceCompany? insuranceCompany}) {
    return Policy(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        quantityVehicles: quantityVehicles ?? this.quantityVehicles,
        vehicles: vehicles ?? this.vehicles,
        policyStatusId: policyStatusId ?? this.policyStatusId,
        policyStatus: policyStatus ?? this.policyStatus,
        policyPacketId: policyPacketId ?? this.policyPacketId,
        policyPacket: policyPacket ?? this.policyPacket,
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
        insuranceCompany: insuranceCompany ?? this.insuranceCompany);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyDTO {
  PolicyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.startDate,
    this.endDate,
    this.quantityVehicles,
    this.vehicles,
    this.policyStatusId,
    this.policyStatus,
    this.policyPacketId,
    this.policyPacket,
    this.insuranceCompanyId,
    this.insuranceCompany,
  });

  factory PolicyDTO.fromJson(Map<String, dynamic> json) =>
      _$PolicyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'quantityVehicles')
  final int? quantityVehicles;
  @JsonKey(name: 'vehicles', defaultValue: <VehicleDTO>[])
  final List<VehicleDTO>? vehicles;
  @JsonKey(name: 'policyStatusId')
  final String? policyStatusId;
  @JsonKey(name: 'policyStatus')
  final PolicyStatusDTO? policyStatus;
  @JsonKey(name: 'policyPacketId')
  final String? policyPacketId;
  @JsonKey(name: 'policyPacket')
  final PolicyPacketDTO? policyPacket;
  @JsonKey(name: 'insuranceCompanyId')
  final String? insuranceCompanyId;
  @JsonKey(name: 'insuranceCompany')
  final InsuranceCompanyDTO? insuranceCompany;
  static const fromJsonFactory = _$PolicyDTOFromJson;
  static const toJsonFactory = _$PolicyDTOToJson;
  Map<String, dynamic> toJson() => _$PolicyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.quantityVehicles, quantityVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.quantityVehicles, quantityVehicles)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.policyStatusId, policyStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.policyStatusId, policyStatusId)) &&
            (identical(other.policyStatus, policyStatus) ||
                const DeepCollectionEquality()
                    .equals(other.policyStatus, policyStatus)) &&
            (identical(other.policyPacketId, policyPacketId) ||
                const DeepCollectionEquality()
                    .equals(other.policyPacketId, policyPacketId)) &&
            (identical(other.policyPacket, policyPacket) ||
                const DeepCollectionEquality()
                    .equals(other.policyPacket, policyPacket)) &&
            (identical(other.insuranceCompanyId, insuranceCompanyId) ||
                const DeepCollectionEquality()
                    .equals(other.insuranceCompanyId, insuranceCompanyId)) &&
            (identical(other.insuranceCompany, insuranceCompany) ||
                const DeepCollectionEquality()
                    .equals(other.insuranceCompany, insuranceCompany)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(quantityVehicles) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(policyStatusId) ^
      const DeepCollectionEquality().hash(policyStatus) ^
      const DeepCollectionEquality().hash(policyPacketId) ^
      const DeepCollectionEquality().hash(policyPacket) ^
      const DeepCollectionEquality().hash(insuranceCompanyId) ^
      const DeepCollectionEquality().hash(insuranceCompany) ^
      runtimeType.hashCode;
}

extension $PolicyDTOExtension on PolicyDTO {
  PolicyDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      int? quantityVehicles,
      List<VehicleDTO>? vehicles,
      String? policyStatusId,
      PolicyStatusDTO? policyStatus,
      String? policyPacketId,
      PolicyPacketDTO? policyPacket,
      String? insuranceCompanyId,
      InsuranceCompanyDTO? insuranceCompany}) {
    return PolicyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        quantityVehicles: quantityVehicles ?? this.quantityVehicles,
        vehicles: vehicles ?? this.vehicles,
        policyStatusId: policyStatusId ?? this.policyStatusId,
        policyStatus: policyStatus ?? this.policyStatus,
        policyPacketId: policyPacketId ?? this.policyPacketId,
        policyPacket: policyPacket ?? this.policyPacket,
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId,
        insuranceCompany: insuranceCompany ?? this.insuranceCompany);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyDTOPagedResult {
  PolicyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PolicyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PolicyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PolicyDTO>[])
  final List<PolicyDTO>? items;
  static const fromJsonFactory = _$PolicyDTOPagedResultFromJson;
  static const toJsonFactory = _$PolicyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PolicyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PolicyDTOPagedResultExtension on PolicyDTOPagedResult {
  PolicyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PolicyDTO>? items}) {
    return PolicyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyPacket {
  PolicyPacket({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
    this.policies,
  });

  factory PolicyPacket.fromJson(Map<String, dynamic> json) =>
      _$PolicyPacketFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'policies', defaultValue: <Policy>[])
  final List<Policy>? policies;
  static const fromJsonFactory = _$PolicyPacketFromJson;
  static const toJsonFactory = _$PolicyPacketToJson;
  Map<String, dynamic> toJson() => _$PolicyPacketToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyPacket &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(policies) ^
      runtimeType.hashCode;
}

extension $PolicyPacketExtension on PolicyPacket {
  PolicyPacket copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description,
      List<Policy>? policies}) {
    return PolicyPacket(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        policies: policies ?? this.policies);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyPacketDTO {
  PolicyPacketDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.policies,
  });

  factory PolicyPacketDTO.fromJson(Map<String, dynamic> json) =>
      _$PolicyPacketDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'policies', defaultValue: <PolicyDTO>[])
  final List<PolicyDTO>? policies;
  static const fromJsonFactory = _$PolicyPacketDTOFromJson;
  static const toJsonFactory = _$PolicyPacketDTOToJson;
  Map<String, dynamic> toJson() => _$PolicyPacketDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyPacketDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(policies) ^
      runtimeType.hashCode;
}

extension $PolicyPacketDTOExtension on PolicyPacketDTO {
  PolicyPacketDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<PolicyDTO>? policies}) {
    return PolicyPacketDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        policies: policies ?? this.policies);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyPacketDTOPagedResult {
  PolicyPacketDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PolicyPacketDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PolicyPacketDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PolicyPacketDTO>[])
  final List<PolicyPacketDTO>? items;
  static const fromJsonFactory = _$PolicyPacketDTOPagedResultFromJson;
  static const toJsonFactory = _$PolicyPacketDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PolicyPacketDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyPacketDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PolicyPacketDTOPagedResultExtension on PolicyPacketDTOPagedResult {
  PolicyPacketDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PolicyPacketDTO>? items}) {
    return PolicyPacketDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyStatus {
  PolicyStatus({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
    this.policies,
  });

  factory PolicyStatus.fromJson(Map<String, dynamic> json) =>
      _$PolicyStatusFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'policies', defaultValue: <Policy>[])
  final List<Policy>? policies;
  static const fromJsonFactory = _$PolicyStatusFromJson;
  static const toJsonFactory = _$PolicyStatusToJson;
  Map<String, dynamic> toJson() => _$PolicyStatusToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyStatus &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(policies) ^
      runtimeType.hashCode;
}

extension $PolicyStatusExtension on PolicyStatus {
  PolicyStatus copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description,
      List<Policy>? policies}) {
    return PolicyStatus(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        policies: policies ?? this.policies);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyStatusDTO {
  PolicyStatusDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.policies,
  });

  factory PolicyStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$PolicyStatusDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'policies', defaultValue: <PolicyDTO>[])
  final List<PolicyDTO>? policies;
  static const fromJsonFactory = _$PolicyStatusDTOFromJson;
  static const toJsonFactory = _$PolicyStatusDTOToJson;
  Map<String, dynamic> toJson() => _$PolicyStatusDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyStatusDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(policies) ^
      runtimeType.hashCode;
}

extension $PolicyStatusDTOExtension on PolicyStatusDTO {
  PolicyStatusDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<PolicyDTO>? policies}) {
    return PolicyStatusDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        policies: policies ?? this.policies);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyStatusDTOPagedResult {
  PolicyStatusDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PolicyStatusDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PolicyStatusDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PolicyStatusDTO>[])
  final List<PolicyStatusDTO>? items;
  static const fromJsonFactory = _$PolicyStatusDTOPagedResultFromJson;
  static const toJsonFactory = _$PolicyStatusDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PolicyStatusDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyStatusDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PolicyStatusDTOPagedResultExtension on PolicyStatusDTOPagedResult {
  PolicyStatusDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PolicyStatusDTO>? items}) {
    return PolicyStatusDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;
  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality()
                    .equals(other.instance, instance)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance}) {
    return ProblemDetails(
        type: type ?? this.type,
        title: title ?? this.title,
        status: status ?? this.status,
        detail: detail ?? this.detail,
        instance: instance ?? this.instance);
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectDTO {
  ProjectDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
    this.packetId,
    this.packet,
    this.documentId,
    this.document,
    this.maintenanceId,
    this.maintenance,
  });

  factory ProjectDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  @JsonKey(name: 'packetId')
  final String? packetId;
  @JsonKey(name: 'packet')
  final PolicyDTO? packet;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'document')
  final DocumentDTO? document;
  @JsonKey(name: 'maintenanceId')
  final String? maintenanceId;
  @JsonKey(name: 'maintenance')
  final MaintenanceDTO? maintenance;
  static const fromJsonFactory = _$ProjectDTOFromJson;
  static const toJsonFactory = _$ProjectDTOToJson;
  Map<String, dynamic> toJson() => _$ProjectDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)) &&
            (identical(other.packetId, packetId) ||
                const DeepCollectionEquality()
                    .equals(other.packetId, packetId)) &&
            (identical(other.packet, packet) ||
                const DeepCollectionEquality().equals(other.packet, packet)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.maintenanceId, maintenanceId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceId, maintenanceId)) &&
            (identical(other.maintenance, maintenance) ||
                const DeepCollectionEquality()
                    .equals(other.maintenance, maintenance)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      const DeepCollectionEquality().hash(packetId) ^
      const DeepCollectionEquality().hash(packet) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(maintenanceId) ^
      const DeepCollectionEquality().hash(maintenance) ^
      runtimeType.hashCode;
}

extension $ProjectDTOExtension on ProjectDTO {
  ProjectDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId,
      String? packetId,
      PolicyDTO? packet,
      String? documentId,
      DocumentDTO? document,
      String? maintenanceId,
      MaintenanceDTO? maintenance}) {
    return ProjectDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId,
        packetId: packetId ?? this.packetId,
        packet: packet ?? this.packet,
        documentId: documentId ?? this.documentId,
        document: document ?? this.document,
        maintenanceId: maintenanceId ?? this.maintenanceId,
        maintenance: maintenance ?? this.maintenance);
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectDTOPagedResult {
  ProjectDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ProjectDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ProjectDTO>[])
  final List<ProjectDTO>? items;
  static const fromJsonFactory = _$ProjectDTOPagedResultFromJson;
  static const toJsonFactory = _$ProjectDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ProjectDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ProjectDTOPagedResultExtension on ProjectDTOPagedResult {
  ProjectDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ProjectDTO>? items}) {
    return ProjectDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ResetPasswordModel {
  ResetPasswordModel({
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.token,
  });

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordModelFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirmPassword')
  final String confirmPassword;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$ResetPasswordModelFromJson;
  static const toJsonFactory = _$ResetPasswordModelToJson;
  Map<String, dynamic> toJson() => _$ResetPasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordModel &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $ResetPasswordModelExtension on ResetPasswordModel {
  ResetPasswordModel copyWith(
      {String? password,
      String? confirmPassword,
      String? email,
      String? token}) {
    return ResetPasswordModel(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        email: email ?? this.email,
        token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class Role {
  Role({
    this.id,
    this.name,
    this.normalizedName,
    this.concurrencyStamp,
    this.active,
    this.createBy,
    this.updateBy,
    this.createDate,
    this.dtUpdateDate,
    this.userRoles,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'normalizedName')
  final String? normalizedName;
  @JsonKey(name: 'concurrencyStamp')
  final String? concurrencyStamp;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'createBy')
  final String? createBy;
  @JsonKey(name: 'updateBy')
  final String? updateBy;
  @JsonKey(name: 'createDate')
  final DateTime? createDate;
  @JsonKey(name: 'dtUpdateDate')
  final DateTime? dtUpdateDate;
  @JsonKey(name: 'userRoles', defaultValue: <UserRole>[])
  final List<UserRole>? userRoles;
  static const fromJsonFactory = _$RoleFromJson;
  static const toJsonFactory = _$RoleToJson;
  Map<String, dynamic> toJson() => _$RoleToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Role &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.normalizedName, normalizedName) ||
                const DeepCollectionEquality()
                    .equals(other.normalizedName, normalizedName)) &&
            (identical(other.concurrencyStamp, concurrencyStamp) ||
                const DeepCollectionEquality()
                    .equals(other.concurrencyStamp, concurrencyStamp)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.createBy, createBy) ||
                const DeepCollectionEquality()
                    .equals(other.createBy, createBy)) &&
            (identical(other.updateBy, updateBy) ||
                const DeepCollectionEquality()
                    .equals(other.updateBy, updateBy)) &&
            (identical(other.createDate, createDate) ||
                const DeepCollectionEquality()
                    .equals(other.createDate, createDate)) &&
            (identical(other.dtUpdateDate, dtUpdateDate) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdateDate, dtUpdateDate)) &&
            (identical(other.userRoles, userRoles) ||
                const DeepCollectionEquality()
                    .equals(other.userRoles, userRoles)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(normalizedName) ^
      const DeepCollectionEquality().hash(concurrencyStamp) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(createBy) ^
      const DeepCollectionEquality().hash(updateBy) ^
      const DeepCollectionEquality().hash(createDate) ^
      const DeepCollectionEquality().hash(dtUpdateDate) ^
      const DeepCollectionEquality().hash(userRoles) ^
      runtimeType.hashCode;
}

extension $RoleExtension on Role {
  Role copyWith(
      {String? id,
      String? name,
      String? normalizedName,
      String? concurrencyStamp,
      bool? active,
      String? createBy,
      String? updateBy,
      DateTime? createDate,
      DateTime? dtUpdateDate,
      List<UserRole>? userRoles}) {
    return Role(
        id: id ?? this.id,
        name: name ?? this.name,
        normalizedName: normalizedName ?? this.normalizedName,
        concurrencyStamp: concurrencyStamp ?? this.concurrencyStamp,
        active: active ?? this.active,
        createBy: createBy ?? this.createBy,
        updateBy: updateBy ?? this.updateBy,
        createDate: createDate ?? this.createDate,
        dtUpdateDate: dtUpdateDate ?? this.dtUpdateDate,
        userRoles: userRoles ?? this.userRoles);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDTO {
  RoleDTO({
    this.id,
    this.name,
    this.active,
  });

  factory RoleDTO.fromJson(Map<String, dynamic> json) =>
      _$RoleDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$RoleDTOFromJson;
  static const toJsonFactory = _$RoleDTOToJson;
  Map<String, dynamic> toJson() => _$RoleDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $RoleDTOExtension on RoleDTO {
  RoleDTO copyWith({String? id, String? name, bool? active}) {
    return RoleDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDTOPagedResult {
  RoleDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory RoleDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$RoleDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <RoleDTO>[])
  final List<RoleDTO>? items;
  static const fromJsonFactory = _$RoleDTOPagedResultFromJson;
  static const toJsonFactory = _$RoleDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$RoleDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $RoleDTOPagedResultExtension on RoleDTOPagedResult {
  RoleDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<RoleDTO>? items}) {
    return RoleDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class SelectDTO {
  SelectDTO({
    this.key,
    this.value,
  });

  factory SelectDTO.fromJson(Map<String, dynamic> json) =>
      _$SelectDTOFromJson(json);

  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory = _$SelectDTOFromJson;
  static const toJsonFactory = _$SelectDTOToJson;
  Map<String, dynamic> toJson() => _$SelectDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectDTO &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $SelectDTOExtension on SelectDTO {
  SelectDTO copyWith({String? key, String? value}) {
    return SelectDTO(key: key ?? this.key, value: value ?? this.value);
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceDTO {
  ServiceDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.vehicles,
  });

  factory ServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$ServiceDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vehicles', defaultValue: <VehicleDTO>[])
  final List<VehicleDTO>? vehicles;
  static const fromJsonFactory = _$ServiceDTOFromJson;
  static const toJsonFactory = _$ServiceDTOToJson;
  Map<String, dynamic> toJson() => _$ServiceDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $ServiceDTOExtension on ServiceDTO {
  ServiceDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<VehicleDTO>? vehicles}) {
    return ServiceDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        vehicles: vehicles ?? this.vehicles);
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceDTOPagedResult {
  ServiceDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ServiceDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ServiceDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ServiceDTO>[])
  final List<ServiceDTO>? items;
  static const fromJsonFactory = _$ServiceDTOPagedResultFromJson;
  static const toJsonFactory = _$ServiceDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ServiceDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ServiceDTOPagedResultExtension on ServiceDTOPagedResult {
  ServiceDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ServiceDTO>? items}) {
    return ServiceDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class TimeSpan {
  TimeSpan({
    this.ticks,
    this.days,
    this.hours,
    this.milliseconds,
    this.microseconds,
    this.nanoseconds,
    this.minutes,
    this.seconds,
    this.totalDays,
    this.totalHours,
    this.totalMilliseconds,
    this.totalMicroseconds,
    this.totalNanoseconds,
    this.totalMinutes,
    this.totalSeconds,
  });

  factory TimeSpan.fromJson(Map<String, dynamic> json) =>
      _$TimeSpanFromJson(json);

  @JsonKey(name: 'ticks')
  final num? ticks;
  @JsonKey(name: 'days')
  final int? days;
  @JsonKey(name: 'hours')
  final int? hours;
  @JsonKey(name: 'milliseconds')
  final int? milliseconds;
  @JsonKey(name: 'microseconds')
  final int? microseconds;
  @JsonKey(name: 'nanoseconds')
  final int? nanoseconds;
  @JsonKey(name: 'minutes')
  final int? minutes;
  @JsonKey(name: 'seconds')
  final int? seconds;
  @JsonKey(name: 'totalDays')
  final double? totalDays;
  @JsonKey(name: 'totalHours')
  final double? totalHours;
  @JsonKey(name: 'totalMilliseconds')
  final double? totalMilliseconds;
  @JsonKey(name: 'totalMicroseconds')
  final double? totalMicroseconds;
  @JsonKey(name: 'totalNanoseconds')
  final double? totalNanoseconds;
  @JsonKey(name: 'totalMinutes')
  final double? totalMinutes;
  @JsonKey(name: 'totalSeconds')
  final double? totalSeconds;
  static const fromJsonFactory = _$TimeSpanFromJson;
  static const toJsonFactory = _$TimeSpanToJson;
  Map<String, dynamic> toJson() => _$TimeSpanToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeSpan &&
            (identical(other.ticks, ticks) ||
                const DeepCollectionEquality().equals(other.ticks, ticks)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)) &&
            (identical(other.hours, hours) ||
                const DeepCollectionEquality().equals(other.hours, hours)) &&
            (identical(other.milliseconds, milliseconds) ||
                const DeepCollectionEquality()
                    .equals(other.milliseconds, milliseconds)) &&
            (identical(other.microseconds, microseconds) ||
                const DeepCollectionEquality()
                    .equals(other.microseconds, microseconds)) &&
            (identical(other.nanoseconds, nanoseconds) ||
                const DeepCollectionEquality()
                    .equals(other.nanoseconds, nanoseconds)) &&
            (identical(other.minutes, minutes) ||
                const DeepCollectionEquality()
                    .equals(other.minutes, minutes)) &&
            (identical(other.seconds, seconds) ||
                const DeepCollectionEquality()
                    .equals(other.seconds, seconds)) &&
            (identical(other.totalDays, totalDays) ||
                const DeepCollectionEquality()
                    .equals(other.totalDays, totalDays)) &&
            (identical(other.totalHours, totalHours) ||
                const DeepCollectionEquality()
                    .equals(other.totalHours, totalHours)) &&
            (identical(other.totalMilliseconds, totalMilliseconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalMilliseconds, totalMilliseconds)) &&
            (identical(other.totalMicroseconds, totalMicroseconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalMicroseconds, totalMicroseconds)) &&
            (identical(other.totalNanoseconds, totalNanoseconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalNanoseconds, totalNanoseconds)) &&
            (identical(other.totalMinutes, totalMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.totalMinutes, totalMinutes)) &&
            (identical(other.totalSeconds, totalSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalSeconds, totalSeconds)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticks) ^
      const DeepCollectionEquality().hash(days) ^
      const DeepCollectionEquality().hash(hours) ^
      const DeepCollectionEquality().hash(milliseconds) ^
      const DeepCollectionEquality().hash(microseconds) ^
      const DeepCollectionEquality().hash(nanoseconds) ^
      const DeepCollectionEquality().hash(minutes) ^
      const DeepCollectionEquality().hash(seconds) ^
      const DeepCollectionEquality().hash(totalDays) ^
      const DeepCollectionEquality().hash(totalHours) ^
      const DeepCollectionEquality().hash(totalMilliseconds) ^
      const DeepCollectionEquality().hash(totalMicroseconds) ^
      const DeepCollectionEquality().hash(totalNanoseconds) ^
      const DeepCollectionEquality().hash(totalMinutes) ^
      const DeepCollectionEquality().hash(totalSeconds) ^
      runtimeType.hashCode;
}

extension $TimeSpanExtension on TimeSpan {
  TimeSpan copyWith(
      {num? ticks,
      int? days,
      int? hours,
      int? milliseconds,
      int? microseconds,
      int? nanoseconds,
      int? minutes,
      int? seconds,
      double? totalDays,
      double? totalHours,
      double? totalMilliseconds,
      double? totalMicroseconds,
      double? totalNanoseconds,
      double? totalMinutes,
      double? totalSeconds}) {
    return TimeSpan(
        ticks: ticks ?? this.ticks,
        days: days ?? this.days,
        hours: hours ?? this.hours,
        milliseconds: milliseconds ?? this.milliseconds,
        microseconds: microseconds ?? this.microseconds,
        nanoseconds: nanoseconds ?? this.nanoseconds,
        minutes: minutes ?? this.minutes,
        seconds: seconds ?? this.seconds,
        totalDays: totalDays ?? this.totalDays,
        totalHours: totalHours ?? this.totalHours,
        totalMilliseconds: totalMilliseconds ?? this.totalMilliseconds,
        totalMicroseconds: totalMicroseconds ?? this.totalMicroseconds,
        totalNanoseconds: totalNanoseconds ?? this.totalNanoseconds,
        totalMinutes: totalMinutes ?? this.totalMinutes,
        totalSeconds: totalSeconds ?? this.totalSeconds);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPostDTO {
  UserPostDTO({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
    this.roleName,
  });

  factory UserPostDTO.fromJson(Map<String, dynamic> json) =>
      _$UserPostDTOFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'roleName')
  final String? roleName;
  static const fromJsonFactory = _$UserPostDTOFromJson;
  static const toJsonFactory = _$UserPostDTOToJson;
  Map<String, dynamic> toJson() => _$UserPostDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPostDTO &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.roleName, roleName) ||
                const DeepCollectionEquality()
                    .equals(other.roleName, roleName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(roleName) ^
      runtimeType.hashCode;
}

extension $UserPostDTOExtension on UserPostDTO {
  UserPostDTO copyWith(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? roleName}) {
    return UserPostDTO(
        email: email ?? this.email,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        roleName: roleName ?? this.roleName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPutDTO {
  UserPutDTO({
    this.imageFile,
    this.name,
    required this.firstName,
    required this.lastName,
    this.url,
    this.countryCode,
    this.titleAbbreviation,
    this.gender,
    required this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.costPerAppointment,
  });

  factory UserPutDTO.fromJson(Map<String, dynamic> json) =>
      _$UserPutDTOFromJson(json);

  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  static const fromJsonFactory = _$UserPutDTOFromJson;
  static const toJsonFactory = _$UserPutDTOToJson;
  Map<String, dynamic> toJson() => _$UserPutDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPutDTO &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      runtimeType.hashCode;
}

extension $UserPutDTOExtension on UserPutDTO {
  UserPutDTO copyWith(
      {String? imageFile,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      double? costPerAppointment}) {
    return UserPutDTO(
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment);
  }
}

@JsonSerializable(explicitToJson: true)
class UserRole {
  UserRole({
    this.userId,
    this.roleId,
    this.user,
    this.role,
  });

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'roleId')
  final String? roleId;
  @JsonKey(name: 'user')
  final AppUsuario? user;
  @JsonKey(name: 'role')
  final Role? role;
  static const fromJsonFactory = _$UserRoleFromJson;
  static const toJsonFactory = _$UserRoleToJson;
  Map<String, dynamic> toJson() => _$UserRoleToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRole &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $UserRoleExtension on UserRole {
  UserRole copyWith(
      {String? userId, String? roleId, AppUsuario? user, Role? role}) {
    return UserRole(
        userId: userId ?? this.userId,
        roleId: roleId ?? this.roleId,
        user: user ?? this.user,
        role: role ?? this.role);
  }
}

@JsonSerializable(explicitToJson: true)
class UserVehicleDTO {
  UserVehicleDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
    this.userId,
    this.user,
    this.vehicleId,
    this.vehicle,
  });

  factory UserVehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$UserVehicleDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final String? externalId;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'user')
  final AppUsuario? user;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  static const fromJsonFactory = _$UserVehicleDTOFromJson;
  static const toJsonFactory = _$UserVehicleDTOToJson;
  Map<String, dynamic> toJson() => _$UserVehicleDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserVehicleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      runtimeType.hashCode;
}

extension $UserVehicleDTOExtension on UserVehicleDTO {
  UserVehicleDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? externalId,
      String? userId,
      AppUsuario? user,
      String? vehicleId,
      Vehicle? vehicle}) {
    return UserVehicleDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId,
        userId: userId ?? this.userId,
        user: user ?? this.user,
        vehicleId: vehicleId ?? this.vehicleId,
        vehicle: vehicle ?? this.vehicle);
  }
}

@JsonSerializable(explicitToJson: true)
class UserVehicleDTOPagedResult {
  UserVehicleDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory UserVehicleDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$UserVehicleDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <UserVehicleDTO>[])
  final List<UserVehicleDTO>? items;
  static const fromJsonFactory = _$UserVehicleDTOPagedResultFromJson;
  static const toJsonFactory = _$UserVehicleDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$UserVehicleDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserVehicleDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $UserVehicleDTOPagedResultExtension on UserVehicleDTOPagedResult {
  UserVehicleDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<UserVehicleDTO>? items}) {
    return UserVehicleDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class Vehicle {
  Vehicle({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.drillRigId,
    this.vin,
    this.placas,
    this.inciso,
    this.economicNumber,
    this.modelId,
    this.model,
    this.documentId,
    this.document,
    this.policyId,
    this.policy,
    this.vehicleTypeId,
    this.vehicleType,
    this.fuelLoads,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  @JsonKey(name: 'vin')
  final String? vin;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'inciso')
  final String? inciso;
  @JsonKey(name: 'economicNumber')
  final String? economicNumber;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'model')
  final Model? model;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'document')
  final Document? document;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'policy')
  final Policy? policy;
  @JsonKey(name: 'vehicleTypeId')
  final String? vehicleTypeId;
  @JsonKey(name: 'vehicleType')
  final VehicleType? vehicleType;
  @JsonKey(name: 'fuelLoads', defaultValue: <FuelLoad>[])
  final List<FuelLoad>? fuelLoads;
  static const fromJsonFactory = _$VehicleFromJson;
  static const toJsonFactory = _$VehicleToJson;
  Map<String, dynamic> toJson() => _$VehicleToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Vehicle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)) &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.inciso, inciso) ||
                const DeepCollectionEquality().equals(other.inciso, inciso)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.policy, policy) ||
                const DeepCollectionEquality().equals(other.policy, policy)) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTypeId, vehicleTypeId)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.fuelLoads, fuelLoads) ||
                const DeepCollectionEquality()
                    .equals(other.fuelLoads, fuelLoads)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(inciso) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(policy) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(fuelLoads) ^
      runtimeType.hashCode;
}

extension $VehicleExtension on Vehicle {
  Vehicle copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      int? drillRigId,
      String? vin,
      String? placas,
      String? inciso,
      String? economicNumber,
      String? modelId,
      Model? model,
      String? documentId,
      Document? document,
      String? policyId,
      Policy? policy,
      String? vehicleTypeId,
      VehicleType? vehicleType,
      List<FuelLoad>? fuelLoads}) {
    return Vehicle(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        drillRigId: drillRigId ?? this.drillRigId,
        vin: vin ?? this.vin,
        placas: placas ?? this.placas,
        inciso: inciso ?? this.inciso,
        economicNumber: economicNumber ?? this.economicNumber,
        modelId: modelId ?? this.modelId,
        model: model ?? this.model,
        documentId: documentId ?? this.documentId,
        document: document ?? this.document,
        policyId: policyId ?? this.policyId,
        policy: policy ?? this.policy,
        vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
        vehicleType: vehicleType ?? this.vehicleType,
        fuelLoads: fuelLoads ?? this.fuelLoads);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleDTO {
  VehicleDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.vin,
    this.placas,
    this.drillRigId,
    this.inciso,
    this.economicNumber,
    this.modelId,
    this.model,
    this.documentId,
    this.document,
    this.policyId,
    this.policy,
    this.vehicleTypeId,
    this.vehicleType,
  });

  factory VehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vin')
  final String? vin;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  @JsonKey(name: 'inciso')
  final String? inciso;
  @JsonKey(name: 'economicNumber')
  final int? economicNumber;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'model')
  final ModelDTO? model;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'document')
  final DocumentDTO? document;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'policy')
  final PolicyDTO? policy;
  @JsonKey(name: 'vehicleTypeId')
  final String? vehicleTypeId;
  @JsonKey(name: 'vehicleType')
  final VehicleTypeDTO? vehicleType;
  static const fromJsonFactory = _$VehicleDTOFromJson;
  static const toJsonFactory = _$VehicleDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)) &&
            (identical(other.inciso, inciso) ||
                const DeepCollectionEquality().equals(other.inciso, inciso)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.policy, policy) ||
                const DeepCollectionEquality().equals(other.policy, policy)) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTypeId, vehicleTypeId)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      const DeepCollectionEquality().hash(inciso) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(policy) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      runtimeType.hashCode;
}

extension $VehicleDTOExtension on VehicleDTO {
  VehicleDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? vin,
      String? placas,
      int? drillRigId,
      String? inciso,
      int? economicNumber,
      String? modelId,
      ModelDTO? model,
      String? documentId,
      DocumentDTO? document,
      String? policyId,
      PolicyDTO? policy,
      String? vehicleTypeId,
      VehicleTypeDTO? vehicleType}) {
    return VehicleDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        vin: vin ?? this.vin,
        placas: placas ?? this.placas,
        drillRigId: drillRigId ?? this.drillRigId,
        inciso: inciso ?? this.inciso,
        economicNumber: economicNumber ?? this.economicNumber,
        modelId: modelId ?? this.modelId,
        model: model ?? this.model,
        documentId: documentId ?? this.documentId,
        document: document ?? this.document,
        policyId: policyId ?? this.policyId,
        policy: policy ?? this.policy,
        vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
        vehicleType: vehicleType ?? this.vehicleType);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleDTOPagedResult {
  VehicleDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VehicleDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VehicleDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VehicleDTO>[])
  final List<VehicleDTO>? items;
  static const fromJsonFactory = _$VehicleDTOPagedResultFromJson;
  static const toJsonFactory = _$VehicleDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VehicleDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VehicleDTOPagedResultExtension on VehicleDTOPagedResult {
  VehicleDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VehicleDTO>? items}) {
    return VehicleDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleType {
  VehicleType({
    this.id,
    this.active,
    this.isActive,
    this.excludeFromLog,
    this.name,
    this.code,
    this.description,
    this.inUse,
  });

  factory VehicleType.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'isActive')
  final int? isActive;
  @JsonKey(name: 'excludeFromLog')
  final bool? excludeFromLog;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'inUse')
  final bool? inUse;
  static const fromJsonFactory = _$VehicleTypeFromJson;
  static const toJsonFactory = _$VehicleTypeToJson;
  Map<String, dynamic> toJson() => _$VehicleTypeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleType &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.excludeFromLog, excludeFromLog) ||
                const DeepCollectionEquality()
                    .equals(other.excludeFromLog, excludeFromLog)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.inUse, inUse) ||
                const DeepCollectionEquality().equals(other.inUse, inUse)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(excludeFromLog) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inUse) ^
      runtimeType.hashCode;
}

extension $VehicleTypeExtension on VehicleType {
  VehicleType copyWith(
      {String? id,
      bool? active,
      int? isActive,
      bool? excludeFromLog,
      String? name,
      String? code,
      String? description,
      bool? inUse}) {
    return VehicleType(
        id: id ?? this.id,
        active: active ?? this.active,
        isActive: isActive ?? this.isActive,
        excludeFromLog: excludeFromLog ?? this.excludeFromLog,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        inUse: inUse ?? this.inUse);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTypeDTO {
  VehicleTypeDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.inUse,
  });

  factory VehicleTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'inUse')
  final bool? inUse;
  static const fromJsonFactory = _$VehicleTypeDTOFromJson;
  static const toJsonFactory = _$VehicleTypeDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleTypeDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTypeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.inUse, inUse) ||
                const DeepCollectionEquality().equals(other.inUse, inUse)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inUse) ^
      runtimeType.hashCode;
}

extension $VehicleTypeDTOExtension on VehicleTypeDTO {
  VehicleTypeDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      bool? inUse}) {
    return VehicleTypeDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        inUse: inUse ?? this.inUse);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTypeDTOPagedResult {
  VehicleTypeDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VehicleTypeDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VehicleTypeDTO>[])
  final List<VehicleTypeDTO>? items;
  static const fromJsonFactory = _$VehicleTypeDTOPagedResultFromJson;
  static const toJsonFactory = _$VehicleTypeDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VehicleTypeDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTypeDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VehicleTypeDTOPagedResultExtension on VehicleTypeDTOPagedResult {
  VehicleTypeDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VehicleTypeDTO>? items}) {
    return VehicleTypeDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorDTO {
  VendorDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.maintenances,
    this.parts,
  });

  factory VendorDTO.fromJson(Map<String, dynamic> json) =>
      _$VendorDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'maintenances', defaultValue: <MaintenanceDTO>[])
  final List<MaintenanceDTO>? maintenances;
  @JsonKey(name: 'parts', defaultValue: <PartDTO>[])
  final List<PartDTO>? parts;
  static const fromJsonFactory = _$VendorDTOFromJson;
  static const toJsonFactory = _$VendorDTOToJson;
  Map<String, dynamic> toJson() => _$VendorDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.maintenances, maintenances) ||
                const DeepCollectionEquality()
                    .equals(other.maintenances, maintenances)) &&
            (identical(other.parts, parts) ||
                const DeepCollectionEquality().equals(other.parts, parts)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(maintenances) ^
      const DeepCollectionEquality().hash(parts) ^
      runtimeType.hashCode;
}

extension $VendorDTOExtension on VendorDTO {
  VendorDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      List<MaintenanceDTO>? maintenances,
      List<PartDTO>? parts}) {
    return VendorDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        maintenances: maintenances ?? this.maintenances,
        parts: parts ?? this.parts);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorDTOPagedResult {
  VendorDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VendorDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VendorDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VendorDTO>[])
  final List<VendorDTO>? items;
  static const fromJsonFactory = _$VendorDTOPagedResultFromJson;
  static const toJsonFactory = _$VendorDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VendorDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VendorDTOPagedResultExtension on VendorDTOPagedResult {
  VendorDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VendorDTO>? items}) {
    return VendorDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

String? genderEnumToJson(enums.GenderEnum? genderEnum) {
  return enums.$GenderEnumMap[genderEnum];
}

enums.GenderEnum genderEnumFromJson(
  Object? genderEnum, [
  enums.GenderEnum? defaultValue,
]) {
  if (genderEnum is String) {
    return enums.$GenderEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == genderEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.GenderEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GenderEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GenderEnum.swaggerGeneratedUnknown;
}

List<String> genderEnumListToJson(List<enums.GenderEnum>? genderEnum) {
  if (genderEnum == null) {
    return [];
  }

  return genderEnum.map((e) => enums.$GenderEnumMap[e]!).toList();
}

List<enums.GenderEnum> genderEnumListFromJson(
  List? genderEnum, [
  List<enums.GenderEnum>? defaultValue,
]) {
  if (genderEnum == null) {
    return defaultValue ?? [];
  }

  return genderEnum.map((e) => genderEnumFromJson(e.toString())).toList();
}

@JsonSerializable(explicitToJson: true)
class ApiUserIdPut$RequestBody {
  ApiUserIdPut$RequestBody({
    this.imageFile,
    this.name,
    required this.firstName,
    required this.lastName,
    this.url,
    this.countryCode,
    this.titleAbbreviation,
    this.gender,
    required this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.costPerAppointment,
  });

  factory ApiUserIdPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$ApiUserIdPut$RequestBodyFromJson(json);

  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'Url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  static const fromJsonFactory = _$ApiUserIdPut$RequestBodyFromJson;
  static const toJsonFactory = _$ApiUserIdPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$ApiUserIdPut$RequestBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiUserIdPut$RequestBody &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      runtimeType.hashCode;
}

extension $ApiUserIdPut$RequestBodyExtension on ApiUserIdPut$RequestBody {
  ApiUserIdPut$RequestBody copyWith(
      {String? imageFile,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      double? costPerAppointment}) {
    return ApiUserIdPut$RequestBody(
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiUserUploadImageIdPost$RequestBody {
  ApiUserUploadImageIdPost$RequestBody({
    this.image,
  });

  factory ApiUserUploadImageIdPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiUserUploadImageIdPost$RequestBodyFromJson(json);

  @JsonKey(name: 'image')
  final String? image;
  static const fromJsonFactory = _$ApiUserUploadImageIdPost$RequestBodyFromJson;
  static const toJsonFactory = _$ApiUserUploadImageIdPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiUserUploadImageIdPost$RequestBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiUserUploadImageIdPost$RequestBody &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^ runtimeType.hashCode;
}

extension $ApiUserUploadImageIdPost$RequestBodyExtension
    on ApiUserUploadImageIdPost$RequestBody {
  ApiUserUploadImageIdPost$RequestBody copyWith({String? image}) {
    return ApiUserUploadImageIdPost$RequestBody(image: image ?? this.image);
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
