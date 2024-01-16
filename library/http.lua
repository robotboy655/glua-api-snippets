---@meta

http = {}

---[SHARED AND MENU] Launches an asynchronous **GET** request to a HTTP server.
---
--- HTTP requests returning a status code >= `400` are still considered a success and will call the Structures/HTTPRequest callback.
---
--- The Structures/HTTPRequest callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).
---
--- A rough overview of possible Structures/HTTPRequest messages:
--- * `invalid url` - Invalid/empty url ( no request was attempted )
--- * `invalid request` - Steam HTTP lib failed to create a HTTP request
--- * `error` - OnComplete callback's second argument, `bError`, is `true`
--- * `unsuccessful` - OnComplete's first argument, `pResult->m_bRequestSuccessful`, returned `false`
---
--- This cannot send or receive multiple headers with the same name.
--- HTTP-requests that respond with a large body may return an `unsuccessful` error. Try using the [Range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) header to download the file in chunks.
---
--- 	HTTP-requests to destinations on private networks (such as `192.168.0.1`) won't work.
---
--- 	To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp`.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/http.Fetch)
---@param url string The URL of the website to fetch.
---@param onSuccess? function Function to be called on success. Arguments are
--- * string body
--- * number size - equal to string.len(body).
--- * table headers
--- * number code - The HTTP success code.
---@param onFailure? function Function to be called on failure. Arguments are
--- * string error - The error message.
---@param headers? table KeyValue table for headers.
function http.Fetch(url, onSuccess, onFailure, headers) end

---[SHARED AND MENU] Sends an asynchronous **POST** request to a HTTP server.
---
--- HTTP requests returning a status code >= `400` are still considered a success and will call the Structures/HTTPRequest callback.
---
--- The Structures/HTTPRequest callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).
---
--- This cannot send or receive multiple headers with the same name.
--- HTTP-requests that respond with a large body may return an `unsuccessful` error. Try using the [Range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) header to download the file in chunks.
---
--- 	HTTP-requests to destinations on private networks (such as `192.168.0.1`) won't work.
---
--- 	To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp`.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/http.Post)
---@param url string The url to of the website to post.
---@param parameters table The post parameters (x-www-form-urlencoded) to be send to the server. **Keys and values must be strings**.
---@param onSuccess? function Function to be called on success. Arguments are
--- * string body
--- * string size - equal to string.len(body).
--- * table headers
--- * number code - The HTTP success code.
---@param onFailure? function Function to be called on failure. Arguments are
--- * string error - The error message.
---@param headers? table KeyValue table for headers.
function http.Post(url, parameters, onSuccess, onFailure, headers) end