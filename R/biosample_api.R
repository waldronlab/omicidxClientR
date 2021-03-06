# OmicIDX
#
#     The OmicIDX API documentation is available in three forms:  - [RapiDoc](/docs) - [OpenAPI/Swagger Interactive](/swaggerdoc) - [ReDoc (more readable in some ways)](/redoc)  
#
# The version of the OpenAPI document: 0.99.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Biosample operations
#' @description omicidxClientR.Biosample
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ BiosampleByAccessionBiosampleSamplesAccessionGet } \emph{ Biosample By Accession }
#' 
#'
#' \itemize{
#' \item \emph{ @param } accession character
#' \item \emph{ @param } include.fields list( character )
#' \item \emph{ @param } exclude.fields list( character )
#' \item \emph{ @returnType } \link{AnyType} \cr
#'
#'
#' \item status code : 200 | Successful Response
#'
#' \item return type : AnyType 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 422 | Validation Error
#'
#' \item return type : HTTPValidationError 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ BiosamplesBiosampleSamplesGet } \emph{ Biosamples }
#' 
#'
#' \itemize{
#' \item \emph{ @param } q character
#' \item \emph{ @param } size integer
#' \item \emph{ @param } cursor character
#' \item \emph{ @param } facet.size integer
#' \item \emph{ @param } include.fields list( character )
#' \item \emph{ @param } exclude.fields list( character )
#' \item \emph{ @param } facets list( character )
#' \item \emph{ @returnType } \link{ResponseModel} \cr
#'
#'
#' \item status code : 200 | Successful Response
#'
#' \item return type : ResponseModel 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 422 | Validation Error
#'
#' \item return type : HTTPValidationError 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ MappingBiosampleFieldsEntityGet } \emph{ Mapping }
#' 
#'
#' \itemize{
#' \item \emph{ @param } entity character
#' \item \emph{ @returnType } \link{AnyType} \cr
#'
#'
#' \item status code : 200 | Successful Response
#'
#' \item return type : AnyType 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 422 | Validation Error
#'
#' \item return type : HTTPValidationError 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  BiosampleByAccessionBiosampleSamplesAccessionGet  ####################
#'
#' library(omicidxClientR)
#' var.accession <- 'accession_example' # character | An accession for lookup
#' var.include.fields <- {} # array[character] | Fields to include in results. The default is to all fields (*)
#' var.exclude.fields <- {} # array[character] | Fields to exclude from results. The default is to not exclude any fields. 
#'
#' #Biosample By Accession
#' api.instance <- BiosampleApi$new()
#'
#' result <- api.instance$BiosampleByAccessionBiosampleSamplesAccessionGet(var.accession, include.fields=var.include.fields, exclude.fields=var.exclude.fields)
#'
#'
#' ####################  BiosamplesBiosampleSamplesGet  ####################
#'
#' library(omicidxClientR)
#' var.q <- 'cancer' # character | The query, using [lucene query syntax](https://lucene.apache.org/core/3_6_0/queryparsersyntax.html)
#' var.size <- 10 # integer | 
#' var.cursor <- 'cursor_example' # character | The cursor is used to scroll through results. For a query with more results than `size`, the result will include `cursor` in the result json. Use that value here and re-issue the query. The next set or results will be returned. When no more results are available, the `cursor` will again be empty in the result json.
#' var.facet.size <- 10 # integer | The maximum number of records returned for each facet. This has no effect unless one or more facets are specified.
#' var.include.fields <- {} # array[character] | Fields to include in results. The default is to all fields (*)
#' var.exclude.fields <- {} # array[character] | Fields to exclude from results. The default is to not exclude any fields. 
#' var.facets <- {} # array[character] | A list of strings identifying fields for faceted search results. Simple term faceting is used here, meaning that fields that are short text and repeated across records will be binned and counted.
#'
#' #Biosamples
#' api.instance <- BiosampleApi$new()
#'
#' result <- api.instance$BiosamplesBiosampleSamplesGet(q=var.q, size=var.size, cursor=var.cursor, facet.size=var.facet.size, include.fields=var.include.fields, exclude.fields=var.exclude.fields, facets=var.facets)
#'
#'
#' ####################  MappingBiosampleFieldsEntityGet  ####################
#'
#' library(omicidxClientR)
#' var.entity <- 'entity_example' # character | 
#'
#' #Mapping
#' api.instance <- BiosampleApi$new()
#'
#' result <- api.instance$MappingBiosampleFieldsEntityGet(var.entity)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
BiosampleApi <- R6::R6Class(
  'BiosampleApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    BiosampleByAccessionBiosampleSamplesAccessionGet = function(accession, include.fields={}, exclude.fields={}, ...){
      apiResponse <- self$BiosampleByAccessionBiosampleSamplesAccessionGetWithHttpInfo(accession, include.fields, exclude.fields, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    BiosampleByAccessionBiosampleSamplesAccessionGetWithHttpInfo = function(accession, include.fields={}, exclude.fields={}, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`accession`)) {
        stop("Missing required parameter `accession`.")
      }

      queryParams['include_fields'] <- include.fields

      queryParams['exclude_fields'] <- exclude.fields

      body <- NULL
      urlPath <- "/biosample/samples/{accession}"
      if (!missing(`accession`)) {
        urlPath <- gsub(paste0("\\{", "accession", "\\}"), URLencode(as.character(`accession`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "AnyType", loadNamespace("omicidxClientR")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    BiosamplesBiosampleSamplesGet = function(q=NULL, size=10, cursor=NULL, facet.size=10, include.fields={}, exclude.fields={}, facets={}, ...){
      apiResponse <- self$BiosamplesBiosampleSamplesGetWithHttpInfo(q, size, cursor, facet.size, include.fields, exclude.fields, facets, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    BiosamplesBiosampleSamplesGetWithHttpInfo = function(q=NULL, size=10, cursor=NULL, facet.size=10, include.fields={}, exclude.fields={}, facets={}, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      queryParams['q'] <- q

      queryParams['size'] <- size

      queryParams['cursor'] <- cursor

      queryParams['facet_size'] <- facet.size

      queryParams['include_fields'] <- include.fields

      queryParams['exclude_fields'] <- exclude.fields

      queryParams['facets'] <- facets

      body <- NULL
      urlPath <- "/biosample/samples"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ResponseModel", loadNamespace("omicidxClientR")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    MappingBiosampleFieldsEntityGet = function(entity, ...){
      apiResponse <- self$MappingBiosampleFieldsEntityGetWithHttpInfo(entity, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    MappingBiosampleFieldsEntityGetWithHttpInfo = function(entity, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      body <- NULL
      urlPath <- "/biosample/fields/{entity}"
      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "AnyType", loadNamespace("omicidxClientR")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
