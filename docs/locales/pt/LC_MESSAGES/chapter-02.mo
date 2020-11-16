��    G      T              �     �  �   �  q   U  =   �       �        �     �  ;  �       &   )     P  4   ]  8  �    �	  V   �
  x   6  3  �  j   �  M  N     �     �  �   �  c   �               :     K    b  ,     T   �  b     >   d  8  �  �   �  �   ~       �   ;  �   �  �   J  �  :  '   �  .     �   H  U     �   Y  R     �   V  z   �     R  &   ^  3   �  C   �  �   �     �      �     �   d   �!  A   "  :   U"  �   �"  |   X#  +   �#     $  �   $  O   �$  �   .%  ~   �%  �   >&  F   �&  x  '     �(  �   �(  q   V)  =   �)     *  �   *     �*     �*  ;  �*     ,  &   *,     Q,  4   ^,  8  �,    �-  V   �.  x   7/  3  �/  j   �0  M  O1     �3     �3  �   �3  c   �4     5     5     ;5     L5    c5  ,   �7  T   �7  b   8  >   e8  8  �8  �   �9  �   :     ;  �   <;  �   �;  �   K<  �  ;=  '   �?  .   @  �   I@  U   A  �   ZA  R   B  �   WB  z   �B     SC  &   _C  3   �C  C   �C  �   �C     �D     �D    �D  d   �E  A   F  :   VF  �   �F  |   YG  +   �G     H  �   H  O   �H  �   /I  ~   �I  �   ?J  F   �J   (notice that index is optional) @action(‘paint’) def paint(): if ‘color’ in request.query return ‘Painting in %s’ % request.query.get(‘color’) return ‘You did not specify a color’ Also, the action decorator takes an optional ``method`` argument that can be an HTTP method or a list of methods: And these are possible filters (only \`\ ``:`` has a config): App Watchdog Apps can be created using the dashboard or directly from the filesystem. Here, we are going to do it manually, as the Dashboard is described in its own chapter. Creating your first app Dynamic Web Pages Filepaths passed to **``@app_watch_handler``** decorator must be relative to an app. Python files("*.py") in a list passed to the decorator are ignored since they are watched by default. Handler function’s parameter is a list of filepaths that were changed. All exceptions inside handlers are printed in terminal. From \_scaffold From py4web you can import ``request`` From scratch Here is the tree structure of the ``_scaffold`` app: Important: internally py4web uses the bottle `static_file <https://bottlepy.org/docs/dev/tutorial.html#static-files>`__ method for serving static files, which means it supports streaming, partial content, range requests, and if-modified-since. This is all handled automatically based on the http request headers. In your html, you can use any JS library that you want because py4web is agnostic to your choice of JS and CSS, but with some exceptions. The ``auth.html`` which handles registration/login/etc. uses a vue.js component. Hence if you want to use that, you should not remove it. It is possible to map patterns in the URL into arguments of the function. For example: Keep in mind that an app is a Python module; therefore it needs only a folder and a ``__init__.py`` file in that folder: Most of the times, you do not want to start writing code from scratch. You also want to follow some sane conventions outlined here, like not putting all your code into ``__init__.py``. PY4WEB provides a Scaffolding (_scaffold) app, where files are organized properly and many useful objects are pre-defined. Notice that ``static`` is a special path for py4web and only files under the ``static`` folder are served. Notice that for Windows, you must use backslashes (i.e. ’') instead of slashes. Also, an empty **init**.py file is not strictly needed since Python 3.3, but it will be useful later on. If you now restart py4web or press the “Reload Apps” in the Dashboard, py4web will find this module, import it, and recognize it as an app, simply because of its location. An app is not required to do anything. It could just be a container for static files or arbitrary code that other apps may want to import and access. Yet typically most apps are designed to expose static or dynamic web pages. Notice the following: On return values Py4web facilitates a development server’s setup that automatically reloads an app when its Python source files change. Any other files inside an app can be watched by setting a handler function using **``@app_watch_handler``** decorator. Restart py4web or press the Dashboard “Reload Apps” button, and this page will be accessible at Routes Some built-in fixtures are: Static web pages The ``request`` object The key ingredient here is the decorator ``@action.uses(...)``. The arguments of ``action.uses`` are called **fixtures**. You can specify multiple fixtures in one decorator or you can have multiple decorators. Fixtures are objects that modify the behavior of the action, that may need to be initialized per request, that may filter input and output of the action, and that may depend on each-other (they are similar in scope to Bottle plugins but they are declared per-action, and they have a dependency tree which will be explained later). The newly created file will be accessible at The page will now display the color name on a background of the corresponding color. The pattern matching the wildcard is passed to the function under the specified variable ``name``. The scaffold app contains an example of a more complex action: The simplest type of fixture is a template. You specify it by simply giving the name of the file to be used as template. That file must follow the yatl syntax and must be located in the ``templates`` folder of the app. The object returned by the action will be processed by the template and turned into a string. The syntax of the patterns is the same as the `Bottle routes <https://bottlepy.org/docs/dev/tutorial.html#request-routing>`__. A route wildcard can be defined as They may depend on each other. For example, the Session may need the DAL (database connection), and Auth may need both. Dependencies are handled automatically. This page will be visible at To create a dynamic page, you must create a function that returns the page content. For example edit the ``myapp/__init__.py`` as follows: To expose static web pages you simply need to create a ``static`` subfolder, and any file in there will be automatically published: Two examples of its usage are reported now. Do not worry if you don’t fully undestand them: the key point here is that even non-python code could be reloaded automatically if you explicit it with the **``@app_watch_handler``** decorator. Unlike other frameworks, we do not import or start the webserver within the ``myapp`` code. This is because py4web is already running, and it may be serving multiple apps. py4web imports our code and exposes functions decorated with ``@action()``. Also notice that py4web prepends ``/myapp`` (i.e. the name of the app) to the url path declared in the action. This is because there are multiple apps, and they may define conflicting routes. Prepending the name of the app removes the ambiguity. But there is one exception: if you call your app ``_default``, or if you create a symlink from ``_default`` to ``myapp``, then py4web will not prepend any prefix to the routes defined inside the app. Validate javascript syntax when edited: Watch SASS files and compile them when edited: When you start from scaffold, you may want to edit ``settings.py``, ``templates``, ``models.py`` and ``controllers.py`` but probably you don’t need to change anything in ``common.py``. You can easily define fixtures for other template languages. This is described later. You can use any template language to turn your data into a string. PY4WEB comes with yatl, a full chapter will be dedicated later and we will provide an example shortly. You can use multiple decorators to expose the same function under multiple routes. You will normally find the scaffold app under apps, but you can easily create a new clone of it manually or using the Dashboard. \``:re[:exp]``\` allows you to specify a custom regular expression in the config field. The matched value is not modified. \``\`\```\` \````python from py4web import request ``:float`` similar to :int but for decimal numbers. ``:int`` matches (signed) digits and converts the value to integer. ``:path`` matches all characters including the slash character in a non-greedy way, and may be used to match more than one path segment. ``<name:filter>`` or ``<name>`` or ``@action.uses(auth.user)`` indicates that this action expects a valid logged-in user retrievable by ``auth.get_user()``. If that is not the case, this action redirects to the login page (defined also in ``common.py`` and using the Vue.js auth.html component). ``db``, ``session``, ``T``, ``cache``, ``auth`` are Fixtures. They must be defined in ``common.py``. ``redirect`` and ``URL`` are similar to their web2py counterparts ``request``, ``response``, ``abort`` are defined by Bottle and returns a JSON object ``{"colors": ["red", "blue", "green"]}``. Notice we chose to name the function the same as the route. This is not required, but it is a convention that we will often follow. helpers (``A``, ``DIV``, ``SPAN``, ``IMG``, etc) must be imported from ``yatl.helpers`` . They work pretty much as in web2py http://localhost:8000/myapp/paint?color=red or py4web actions should return a string or a dictionary. If they return a dictionary you must tell py4web what to do with it. By default py4web will serialize it into json. For example edit ``__init__.py`` again and add the Auth object (which tells py4web that the app needs access to the user info) the DAL object (which tells py4web to obtain a database connection from the pool at every request, and commit on success or rollback on failure) the Session object (which tells py4web to parse the cookie and retrieve a session at every request, and to save it if changed) the Translator object (which tells py4web to process the accept-language header and determine optimal internationalization/pluralization rules) then modify the paint action to use the template and default to green. Project-Id-Version: py4web 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-11-02 22:29+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: pt
Language-Team: pt <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 (notice that index is optional) @action(‘paint’) def paint(): if ‘color’ in request.query return ‘Painting in %s’ % request.query.get(‘color’) return ‘You did not specify a color’ Also, the action decorator takes an optional ``method`` argument that can be an HTTP method or a list of methods: And these are possible filters (only \`\ ``:`` has a config): App Watchdog Apps can be created using the dashboard or directly from the filesystem. Here, we are going to do it manually, as the Dashboard is described in its own chapter. Creating your first app Dynamic Web Pages Filepaths passed to **``@app_watch_handler``** decorator must be relative to an app. Python files("*.py") in a list passed to the decorator are ignored since they are watched by default. Handler function’s parameter is a list of filepaths that were changed. All exceptions inside handlers are printed in terminal. From \_scaffold From py4web you can import ``request`` From scratch Here is the tree structure of the ``_scaffold`` app: Important: internally py4web uses the bottle `static_file <https://bottlepy.org/docs/dev/tutorial.html#static-files>`__ method for serving static files, which means it supports streaming, partial content, range requests, and if-modified-since. This is all handled automatically based on the http request headers. In your html, you can use any JS library that you want because py4web is agnostic to your choice of JS and CSS, but with some exceptions. The ``auth.html`` which handles registration/login/etc. uses a vue.js component. Hence if you want to use that, you should not remove it. It is possible to map patterns in the URL into arguments of the function. For example: Keep in mind that an app is a Python module; therefore it needs only a folder and a ``__init__.py`` file in that folder: Most of the times, you do not want to start writing code from scratch. You also want to follow some sane conventions outlined here, like not putting all your code into ``__init__.py``. PY4WEB provides a Scaffolding (_scaffold) app, where files are organized properly and many useful objects are pre-defined. Notice that ``static`` is a special path for py4web and only files under the ``static`` folder are served. Notice that for Windows, you must use backslashes (i.e. ’') instead of slashes. Also, an empty **init**.py file is not strictly needed since Python 3.3, but it will be useful later on. If you now restart py4web or press the “Reload Apps” in the Dashboard, py4web will find this module, import it, and recognize it as an app, simply because of its location. An app is not required to do anything. It could just be a container for static files or arbitrary code that other apps may want to import and access. Yet typically most apps are designed to expose static or dynamic web pages. Notice the following: On return values Py4web facilitates a development server’s setup that automatically reloads an app when its Python source files change. Any other files inside an app can be watched by setting a handler function using **``@app_watch_handler``** decorator. Restart py4web or press the Dashboard “Reload Apps” button, and this page will be accessible at Routes Some built-in fixtures are: Static web pages The ``request`` object The key ingredient here is the decorator ``@action.uses(...)``. The arguments of ``action.uses`` are called **fixtures**. You can specify multiple fixtures in one decorator or you can have multiple decorators. Fixtures are objects that modify the behavior of the action, that may need to be initialized per request, that may filter input and output of the action, and that may depend on each-other (they are similar in scope to Bottle plugins but they are declared per-action, and they have a dependency tree which will be explained later). The newly created file will be accessible at The page will now display the color name on a background of the corresponding color. The pattern matching the wildcard is passed to the function under the specified variable ``name``. The scaffold app contains an example of a more complex action: The simplest type of fixture is a template. You specify it by simply giving the name of the file to be used as template. That file must follow the yatl syntax and must be located in the ``templates`` folder of the app. The object returned by the action will be processed by the template and turned into a string. The syntax of the patterns is the same as the `Bottle routes <https://bottlepy.org/docs/dev/tutorial.html#request-routing>`__. A route wildcard can be defined as They may depend on each other. For example, the Session may need the DAL (database connection), and Auth may need both. Dependencies are handled automatically. This page will be visible at To create a dynamic page, you must create a function that returns the page content. For example edit the ``myapp/__init__.py`` as follows: To expose static web pages you simply need to create a ``static`` subfolder, and any file in there will be automatically published: Two examples of its usage are reported now. Do not worry if you don’t fully undestand them: the key point here is that even non-python code could be reloaded automatically if you explicit it with the **``@app_watch_handler``** decorator. Unlike other frameworks, we do not import or start the webserver within the ``myapp`` code. This is because py4web is already running, and it may be serving multiple apps. py4web imports our code and exposes functions decorated with ``@action()``. Also notice that py4web prepends ``/myapp`` (i.e. the name of the app) to the url path declared in the action. This is because there are multiple apps, and they may define conflicting routes. Prepending the name of the app removes the ambiguity. But there is one exception: if you call your app ``_default``, or if you create a symlink from ``_default`` to ``myapp``, then py4web will not prepend any prefix to the routes defined inside the app. Validate javascript syntax when edited: Watch SASS files and compile them when edited: When you start from scaffold, you may want to edit ``settings.py``, ``templates``, ``models.py`` and ``controllers.py`` but probably you don’t need to change anything in ``common.py``. You can easily define fixtures for other template languages. This is described later. You can use any template language to turn your data into a string. PY4WEB comes with yatl, a full chapter will be dedicated later and we will provide an example shortly. You can use multiple decorators to expose the same function under multiple routes. You will normally find the scaffold app under apps, but you can easily create a new clone of it manually or using the Dashboard. \``:re[:exp]``\` allows you to specify a custom regular expression in the config field. The matched value is not modified. \``\`\```\` \````python from py4web import request ``:float`` similar to :int but for decimal numbers. ``:int`` matches (signed) digits and converts the value to integer. ``:path`` matches all characters including the slash character in a non-greedy way, and may be used to match more than one path segment. ``<name:filter>`` or ``<name>`` or ``@action.uses(auth.user)`` indicates that this action expects a valid logged-in user retrievable by ``auth.get_user()``. If that is not the case, this action redirects to the login page (defined also in ``common.py`` and using the Vue.js auth.html component). ``db``, ``session``, ``T``, ``cache``, ``auth`` are Fixtures. They must be defined in ``common.py``. ``redirect`` and ``URL`` are similar to their web2py counterparts ``request``, ``response``, ``abort`` are defined by Bottle and returns a JSON object ``{"colors": ["red", "blue", "green"]}``. Notice we chose to name the function the same as the route. This is not required, but it is a convention that we will often follow. helpers (``A``, ``DIV``, ``SPAN``, ``IMG``, etc) must be imported from ``yatl.helpers`` . They work pretty much as in web2py http://localhost:8000/myapp/paint?color=red or py4web actions should return a string or a dictionary. If they return a dictionary you must tell py4web what to do with it. By default py4web will serialize it into json. For example edit ``__init__.py`` again and add the Auth object (which tells py4web that the app needs access to the user info) the DAL object (which tells py4web to obtain a database connection from the pool at every request, and commit on success or rollback on failure) the Session object (which tells py4web to parse the cookie and retrieve a session at every request, and to save it if changed) the Translator object (which tells py4web to process the accept-language header and determine optimal internationalization/pluralization rules) then modify the paint action to use the template and default to green. 