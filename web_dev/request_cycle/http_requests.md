List of common Status Codes for HTTP
-------------------------------------
200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

------------------------------------------------------------------------------------------------------------------------------------------------

What is the difference between a GET and POST request for HTTP?

											GET													POST
BACK button/Reload | Harmless											Data will be re-submitted (the browser should alert the user)
bookmarked		|			Can be bookmarked							Cannot be bookmarked
Cached		|					Can be cached									Not cached
Encoding | type	application/x-www-form-urlencoded	Application/x-www-form-urlencoded or multipart/form-data. Use multipart encoding for binary data
History			Parameters remain in browser history		Parameters are not saved in browser history

Restrictions on data length	| Yes, when sending 	No restrictions
		data, the GET method adds the data to the URL; 
					and the length of a URL is limited 
				(maximum URL length is 2048 characters)

 Restrictions on data type	|	Only ASCII  				 No restrictions. Binary data is also allowed 
															charactersallowed
 Security |	GET is less secure compared to POST 
 because data sent is part of the URL
	Never use GET when sending passwords or other 		POST is a little safer than GET because the parameters are not stored in browser
	sensitive information!	 													history or in web server logs
Visibility  | Data is visible to everyone in the    Data is not displayed in the URL
							URL


GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource


------------------------------------------------------------------------------------------------------------------------------------------------
What is a cookie?
An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.

Cookies are mainly used for these three purposes:

Session management (user logins, shopping carts)
Personalization (user preferences)
Tracking (analyzing user behavior)
Cookies have also been used for general client-side storage. While this use could have been considered legitimate at a time when there was no other way to store data on the client side, it is no longer the case nowadays where web browsers are capable of using various storage APIs. Since cookies are sent along with every request, it can be an additional performance burden (especially for mobile web). New APIs to consider for local storage are the Web storage API (localStorage and sessionStorage) and IndexedDB.

------------------------------------------------------------------------------------------------------------------------------------------------




------------------------------------------------------------------------------------------------------------------------------------------------
