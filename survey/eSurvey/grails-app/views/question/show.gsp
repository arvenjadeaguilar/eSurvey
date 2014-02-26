
<div class="page-header">
	<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>	
</div>
<alert level="{{message.level}}" text="{{message.text}}"/>
<dl class="dl-horizontal">
	
	<dt>Name</dt>
	<dd data-ng-bind="item.name"></dd>
	
	<dt>Option</dt>
	<dd data-ng-bind="item.option"></dd>
	
	<dt>Survey</dt>
	<dd data-ng-bind="item.survey"></dd>
	
</dl>
<div class="form-actions">
	<a class="btn" data-ng-href="#/edit/{{item.id}}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
	<button type="button" class="btn btn-danger pull-right" data-ng-click="delete(item)"><i class="glyphicon glyphicon-trash"></i> Delete</button>
</div>
