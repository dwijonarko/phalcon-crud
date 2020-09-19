<div class="container"> 
    <h2>User CRUD</h2>
    <hr>
<div class="row" style="margin-left:0px;">
  {{ flash.output() }}
    <form action="/users/{{user.id}}/update" class="form" method="POST">
        <div class="form-group row">
            <label for="name" class="control-label col-sm-2">Name</label>
            <div class="col-sm-4">
    
                <input type="hidden" name="id" id="id" class="form-control"  value="{{user.id}}">
                <input type="text" name="name" id="name" class="form-control" placeholder="Name" required value="{{user.name}}">
            </div>
        </div>
        <div class="form-group row">
            <label for="emailId" class="control-label col-sm-2">Email</label>
            <div class="col-sm-4">
                <input type="email" name="emailId" id="emailId" class="form-control" placeholder="Email" required value="{{user.emailid}}">
            </div>
        </div>
        <div class="form-group row">
            <label for="contactNumber" class="control-label col-sm-2">Phone</label>
            <div class="col-sm-4">
                <input type="text" name="contactNumber" id="contactNumber" class="form-control" placeholder="Phone" required value="{{user.contactNumber}}">
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