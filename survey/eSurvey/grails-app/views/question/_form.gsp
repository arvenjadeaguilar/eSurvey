
	<div class="form-group" data-ng-class="{error: errors.name}">
		<label class="col-sm-2 control-label" for="name">Name
			<span class="text-error" ng-show="form.name.$error.required">*</span>
		</label>		
		
		<div class="col-sm-10">
							
				<input class="form-control" type="text" id="item.name" name="item.name" placeholder="Name"  data-ng-model="item.name"  />								 
			
		<span class="help-block" data-ng-show="errors.item.name">{{errors.item.name}}</span>
		</div>
									
	</div>
	
	
	
	<div class="form-group" data-ng-class="{error: errors.survey}">
		<label class="col-sm-2 control-label" for="survey">Survey
			<span class="text-error" ng-show="form.survey.$error.required">*</span>
		</label>		
		
		<div class="col-sm-10">
						
				<select class="form-control" id="item.survey" placeholder="Survey" ng-model="item.survey" ng-options="o as o.name for o in surveyList" key="id"></select>
				
			
		<span class="help-block" data-ng-show="errors.item.survey">{{errors.item.survey}}</span>
		</div>
									
	</div>
	
	<div class="form-group" data-ng-class="{error: errors.type}">
		<label class="col-sm-2 control-label" for="type">Type
			<span class="text-error" ng-show="form.type.$error.required">*</span>
		</label>		
		
		<div class="col-sm-10">
							
				<select class="form-control" type="number" id="item.type" name="item.type" placeholder="Type" ng-required="true" data-ng-model="item.type" step="0.01" min="0" max="100" >								 
					<option value="0">0-Text box</option>
					<option value="1">1-True / False</option>
					<Option value="2">2-Options</Option>
				</select>
		<span class="help-block" data-ng-show="errors.item.type">{{errors.item.type}}</span>
		</div>
									
	</div>
	
	<div data-ng-show="item.type==2" class="form-group" data-ng-class="{error: errors.option}">
		<label class="col-sm-2 control-label" for="option">Option
			<span class="text-error" ng-show="form.option.$error.required">*</span>
		</label>		
		
		<div class="col-sm-10">
				
		<table class="table table-striped table-bordered">
			<thead>			
					
				<th>Name</th>
				
				
				<th class="span1">
					<a href="" class="btn" list-append list="item.option" item="{}"><i class="glyphicon glyphicon-plus-sign"></i></a>
				</th>
			</thead>
			<tbody>
				<tr ng-repeat="childOption in item.option">
					
					<td>
		<div class="col-sm-10">
							
				<input class="form-control" type="text" id="childOption.name" name="childOption.name" placeholder="Name"  data-ng-model="childOption.name"  />								 
			
		<span class="help-block" data-ng-show="errors.childOption.name">{{errors.childOption.name}}</span>
		</div>
		</td>
					
					
					<td class="span1 btn-group">
						<a href="" class="btn btn-danger" list-remove list="item.option" item="childOption" ><i class="glyphicon glyphicon-minus-sign"></i></a>
						<a href="" class="btn" list-move-up list="item.option" item="childOption" ng-disabled="$first"><i class="glyphicon glyphicon-arrow-up"></i></a>
						<a href="" class="btn" list-move-down list="item.option" item="childOption" ng-disabled="$last"><i class="glyphicon glyphicon-arrow-down"></i></a>									
					</td>
				</tr>							
			</tbody>
		</table>
			
		<span class="help-block" data-ng-show="errors.item.option">{{errors.item.option}}</span>
		</div>
									
	</div>