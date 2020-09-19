<div class="container"> 
    <h2>User CRUD</h2>
    <hr>
<div class="row" style="margin-left:0px;">
  {{ flash.output() }}

    <form action="/users/save" class="form" method="POST">
        <div class="form-group row">
            <label for="name" class="control-label col-sm-2">Name</label>
            <div class="col-sm-4">
                <input type="text" name="name" id="name" class="form-control" placeholder="Name" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="emailId" class="control-label col-sm-2">Email</label>
            <div class="col-sm-4">
                <input type="email" name="emailId" id="emailId" class="form-control" placeholder="Email" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="contactNumber" class="control-label col-sm-2">Phone</label>
            <div class="col-sm-4">
                <input type="text" name="contactNumber" id="contactNumber" class="form-control" placeholder="Phone" required>
            </div>
        </div>
        <div class="form-group col-sm-offset-2 ">
            <div class="col-sm-2">
            <input type="submit" value="Save" class="btn btn-primary col-sm-12">
            </div>
            <div class="col-sm-2">
            <input type="reset" value="Reset" class="btn btn-warning col-sm-12">
            </div>
            
        </div>
    </form>
</div>
<hr>
<div class="row">
    <div class="col-sm-12">
		<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">No</th>
		      <th scope="col">Name</th>
		      <th scope="col">Email</th>
		      <th scope="col">Phone</th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		  	{% for r in users %}
		    <tr>
		      <td>{{r.id}}</td>
		      <td>{{r.name}}</td>
		      <td>{{r.emailid}}</td>
		      <td>{{r.contactNumber}}</td>
		      <td>
      			<a href='/users/{{r.id}}/edit' class='btn btn-info btn-small' id='editId' data-toggle='modal' data-id="{{r.id}}">Edit</a>
      			<a href='/users/{{r.id}}/delete' class='btn btn-danger btn-small' id='deleteId' data-toggle='modal' data-id="{{r.id}}">Delete</a>
		      </td>
		    </tr>
		    {% endfor %}
		  </tbody>
		</table>
	</div>
</div>
</div>