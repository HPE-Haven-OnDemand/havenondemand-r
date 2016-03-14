# @class HODClient class to consume HPE Haven OnDemand API
#
# @version 1.0
# @author Topcoder

library(httr)

# Constructor
# @param apiKey Api Key of the user
# @param version Version of the api call should be made
HODClient <- function(apikey = NULL, version = HODClientConstants$DEFAULT_VERSION)
{

  ## Get the environment for this
  ## instance of the function.
  thisEnv <- environment()

  apikey <- apikey

  version <- version

  ## Create the list used to represent an
  ## object for this class
  me <- list(

    ## Define the environment where this list is defined so
    ## that I can refer to it later.
    thisEnv = thisEnv,

    ## Define the accessors for the data fields.
    getEnv = function()
    {
      return(get("thisEnv",thisEnv))
    },

    # apikey getter
    getAPIKey = function()
    {
      return(get("apikey",thisEnv))
    },

    # apikey setter
    setAPIKey = function(value)
    {
      return(assign("apikey",value,thisEnv))
    },


    # version getter
    getVersion = function()
    {
      return(get("version",thisEnv))
    },

    # version getter
    setVersion = function(value)
    {
      return(assign("version",value,thisEnv))
    },

    #
    # Get URL to call the end point
    #
    # @param hodApp method to call
    # @param version version no
    # @mode SYNC/ASYNC
    getUrlString = function(hodApp, version, mode) {
      callMode = tolower(c(mode))
      return (paste(HODClientConstants$HOD_URL, HODClientConstants$HOD_API_URL, "/", callMode, hodApp, "/", version, sep=""))
    },

    # Get URL to get job status
    getJobStatusURLString = function()
    {
      return (paste(HODClientConstants$HOD_URL, "/", HODClientConstants$JOB_STATUS, sep = ""))
    },

    # Get URL to get job result
    getJobResultURLString = function()
    {
      return (paste(HODClientConstants$HOD_URL, "/", HODClientConstants$JOB_RESULT, sep = ""))
    },

    # calls POST Request
    #
    # @param params params to be passed
    # @param hodApp end point to be called
    # @param mode sync/async
    # @return json response
    postRequest = function(params, hodApp, mode)
    {
      apikey = get("apikey",thisEnv)
      version = get("version",thisEnv)

      url = me$getUrlString(hodApp = hodApp, version = version, mode = mode)

      return(me$invokeHODApi(url, apikey, params))
    },

    # Send request to HOD API server
    # Call appropiate end point  method
    # All the calls are passed through this method
    # @param path Path for the API
    # @param apikey API Key of the user
    # @param params data to be passed
    invokeHODApi = function(path, apikey, params)
    {
      # add apikey to request body
      body = c(apikey = apikey, params)

      # post request
      response <- httr::POST(path, body = body)

      # error checking
      errorCode = httr::content(response, 'parsed')$error

      if (any(!is.null(errorCode), errorCode > 0)) stop (paste('Error detected. Reason: ', httr::content(response, 'parsed')$reason, 'Detail:', httr::content(response, 'parsed')$detail))

      return(response)
    },

    # Get status of the job submitted
    # @param jobId id of the job submitted
    getJobStatus = function(jobID)
    {

      jobStatusUrl = me$getJobStatusURLString()

      url = paste(jobStatusUrl, jobID, sep = "")

      # add apikey to request body
      apikey = get("apikey",thisEnv)

      return(me$invokeHODApi(url, apikey, list()))
    },

    # Get result of the job submitted
    # @param jobId id of the job submitted
    getJobResult = function(jobID)
    {
      jobResultUrl = me$getJobResultURLString()

      url = paste(jobResultUrl, jobID, sep = "")

      # add apikey to request body
      apikey = get("apikey",thisEnv)

      return(me$invokeHODApi(url, apikey, list()))
    }
  )

  ## Define the value of the list within the current environment.
  assign('this',me,envir=thisEnv)

  ## Set the name for the class
  class(me) <- append(class(me),"HODClient")
  return(me)
}
