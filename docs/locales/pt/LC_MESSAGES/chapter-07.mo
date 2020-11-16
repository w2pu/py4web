��    ,      |              �  �   �     �     �      �  �   �  5   �     �  3   �  p     V  �     �  %   �  �     T   �  �   7  �  	  p   �
      �   "  Q   �  �      �   �  �   Y  s   2  �   �  E  E     �  .   �      �     �            3   %  !   Y  	   {  	   �      �     �  �   �     �  �  �     "     :  x  J  �   �     �     �      �  �   �  5   �     �  3   �  p     V  u     �  %   �  �   �  T   �  �     �  �  p   |     �   �   #  Q   �#  �   $  �   �$  �   ?%  s   &  �   �&  E  +'     q(  .   �(      �(     �(     �(     �(  3   )  !   ?)  	   a)  	   k)      u)     �)  �   �)     �*  �  �+     -      -   A code block starts with a line ending with a colon and ends with a line beginning with ``pass``. The keyword ``pass`` is not necessary when the end of the block is obvious from the context. Also note that: Basic syntax Consider now the following code: Here ``items`` is any iterable object such as a Python list, Python tuple, or Rows object, or any object that is implemented as an iterator. The elements displayed are first serialized and escaped. Here is an example that introduces the ``H1`` helper: Here is an example: In templates you can loop over any iterable object: It is also possible to use ``try...except`` statements in views with one caveat. Consider the following example: It produces exactly the same output as above. In this case, the function ``itemize2`` represents a piece of HTML that is going to replace the py4web tag where the function is called. Notice that there is no ‘=’ in front of the call to ``itemize2``, since the function does not return the text, but it writes it directly into the response. It produces: It will produce the following output: Note that ``pass`` is a Python keyword, not a py4web keyword. Some Python editors, such as Emacs, use the keyword ``pass`` to signify the division of blocks and use it to re-indent code automatically. Recall that in Python “else if” is written ``elif`` as in the following example: Since it is obvious that ``else`` closes the first ``if`` block, there is no need for a ``pass`` statement, and using one would be incorrect. However, you must explicitly close the ``else`` block with a ``pass``. Since the developer is embedding Python code into HTML, the document should be indented according to HTML rules, and not Python rules. Therefore, we allow unindented Python inside the ``[[ ... ]]`` tags. Since Python normally uses indentation to delimit blocks of code, we need a different way to delimit them; this is why the py4web template language makes use of the Python keyword ``pass``. The function ``itemize1`` returns a helper object that is inserted at the location where the function is called. The method ``response.write(obj, escape=True)`` takes two arguments, the object to be written and whether it has to be escaped (set to ``True`` by default). If ``obj`` has an ``.xml()`` method, it is called and the result written to the response body (the ``escape`` argument is ignored). Otherwise it uses the object’s ``__str__`` method to serialize it and, if the escape argument is ``True``, escapes it. All built-in helper objects (``H1`` in the example) are objects that know how to serialize themselves via the ``.xml()`` method. The py4web template language allows the developer to define and implement functions that can return any Python object or a text/html string. Here we consider two examples: The py4web template language does exactly the same. When it finds something like: The py4web template language supports all Python control structures. Here we provide some examples of each of them. They can be nested according to usual programming practice. There is one caveat: functions defined inside a view must terminate with a ``return`` statement, or the automatic indentation will fail. This example illustrates that all output generated before an exception occurs is rendered (including output that preceded the exception) inside the try block. “Hello” is written because it precedes the exception. This is all done transparently. You never need to (and never should) call the ``response.write`` method explicitly. Variables injected into the HTML in this way are escaped by default. The escaping is ignored if ``x`` is an ``XML`` object, even if escape is set to ``True``. When there is an error in a py4web view, the error report shows the generated view code, not the actual view as written by the developer. This helps the developer debug the code by highlighting the actual code that is executed (which is something that can be debugged with an HTML editor or the DOM inspector of the browser). YATL Template Language You can create a loop using the while keyword: You can use conditional clauses: ``def...return`` ``for...in`` ``if...elif...else`` ``response.write`` writes to the ``response.body``. ``try...except...else...finally`` ``while`` generates it translates it into a program: produces the following output: py4web uses Python for its models, controllers, and views, although it uses a slightly modified Python syntax in the views to allow more readable code without imposing any restrictions on proper Python usage. py4web uses ``[[ ... ]]`` to escape Python code embedded in HTML. The advantage of using square brackets instead of angle brackets is that it’s transparent to all common HTML editors. This allows the developer to use those editors to create py4web views. upon evaluation, the ``H1`` object and its components are recursively serialized, escaped and written to the response body. The tags generated by ``H1`` and inner HTML are not escaped. This mechanism guarantees that all text — and only text — displayed on the web page is always escaped, thus preventing XSS vulnerabilities. At the same time, the code is simple and easy to debug. which is translated to: which produces: Project-Id-Version: py4web 
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
 A code block starts with a line ending with a colon and ends with a line beginning with ``pass``. The keyword ``pass`` is not necessary when the end of the block is obvious from the context. Also note that: Basic syntax Consider now the following code: Here ``items`` is any iterable object such as a Python list, Python tuple, or Rows object, or any object that is implemented as an iterator. The elements displayed are first serialized and escaped. Here is an example that introduces the ``H1`` helper: Here is an example: In templates you can loop over any iterable object: It is also possible to use ``try...except`` statements in views with one caveat. Consider the following example: It produces exactly the same output as above. In this case, the function ``itemize2`` represents a piece of HTML that is going to replace the py4web tag where the function is called. Notice that there is no ‘=’ in front of the call to ``itemize2``, since the function does not return the text, but it writes it directly into the response. It produces: It will produce the following output: Note that ``pass`` is a Python keyword, not a py4web keyword. Some Python editors, such as Emacs, use the keyword ``pass`` to signify the division of blocks and use it to re-indent code automatically. Recall that in Python “else if” is written ``elif`` as in the following example: Since it is obvious that ``else`` closes the first ``if`` block, there is no need for a ``pass`` statement, and using one would be incorrect. However, you must explicitly close the ``else`` block with a ``pass``. Since the developer is embedding Python code into HTML, the document should be indented according to HTML rules, and not Python rules. Therefore, we allow unindented Python inside the ``[[ ... ]]`` tags. Since Python normally uses indentation to delimit blocks of code, we need a different way to delimit them; this is why the py4web template language makes use of the Python keyword ``pass``. The function ``itemize1`` returns a helper object that is inserted at the location where the function is called. The method ``response.write(obj, escape=True)`` takes two arguments, the object to be written and whether it has to be escaped (set to ``True`` by default). If ``obj`` has an ``.xml()`` method, it is called and the result written to the response body (the ``escape`` argument is ignored). Otherwise it uses the object’s ``__str__`` method to serialize it and, if the escape argument is ``True``, escapes it. All built-in helper objects (``H1`` in the example) are objects that know how to serialize themselves via the ``.xml()`` method. The py4web template language allows the developer to define and implement functions that can return any Python object or a text/html string. Here we consider two examples: The py4web template language does exactly the same. When it finds something like: The py4web template language supports all Python control structures. Here we provide some examples of each of them. They can be nested according to usual programming practice. There is one caveat: functions defined inside a view must terminate with a ``return`` statement, or the automatic indentation will fail. This example illustrates that all output generated before an exception occurs is rendered (including output that preceded the exception) inside the try block. “Hello” is written because it precedes the exception. This is all done transparently. You never need to (and never should) call the ``response.write`` method explicitly. Variables injected into the HTML in this way are escaped by default. The escaping is ignored if ``x`` is an ``XML`` object, even if escape is set to ``True``. When there is an error in a py4web view, the error report shows the generated view code, not the actual view as written by the developer. This helps the developer debug the code by highlighting the actual code that is executed (which is something that can be debugged with an HTML editor or the DOM inspector of the browser). YATL Template Language You can create a loop using the while keyword: You can use conditional clauses: ``def...return`` ``for...in`` ``if...elif...else`` ``response.write`` writes to the ``response.body``. ``try...except...else...finally`` ``while`` generates it translates it into a program: produces the following output: py4web uses Python for its models, controllers, and views, although it uses a slightly modified Python syntax in the views to allow more readable code without imposing any restrictions on proper Python usage. py4web uses ``[[ ... ]]`` to escape Python code embedded in HTML. The advantage of using square brackets instead of angle brackets is that it’s transparent to all common HTML editors. This allows the developer to use those editors to create py4web views. upon evaluation, the ``H1`` object and its components are recursively serialized, escaped and written to the response body. The tags generated by ``H1`` and inner HTML are not escaped. This mechanism guarantees that all text — and only text — displayed on the web page is always escaped, thus preventing XSS vulnerabilities. At the same time, the code is simple and easy to debug. which is translated to: which produces: 