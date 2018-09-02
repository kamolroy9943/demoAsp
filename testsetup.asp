<!--#include file="index.asp" -->
<% Sub BodyContent %>
<div class="card mx-auto mt-5" style="width:60%;">
    <div class="card-header bg-primary">
        <h2>Setup Your Test.</h2>
    </div>
    <div class="card-body">
        <form action="testSetupResponse.asp" method="POST">
            <div class="form-group">
                <label for="testName">TestName:</label>
                <input type="text" class="form-control" name="testName" id="testName">
            </div>
            <div class="form-group">
                <label for="testType">Test Type:</label>
                <input type="text" class="form-control" name="testType" id="testType">
            </div>
            <div class="form-group">
                <label for="unitPrice">Unit Price:</label>
                <input type="number" class="form-control" name="unitPrice" id="unitPrice">
            </div>
            <button class="btn btn-primary btn-lg">Submit</button>
        </form>
    </div>
</div>
<% End Sub %>