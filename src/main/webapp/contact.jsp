            <%@ include file="header.jsp" %>
            <%
             if(session.getAttribute("user")!=null)
            {
                out.print("Hello "+session.getAttribute("user")+",");
            }
            %>
            <br/>
            <hr>
            <div class="row">
                <div class="col-sm-4 col-lg-4">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3>
                                <i class="icon-pushpin main-color"></i> Our office</h3>
                        </div>
                        <div class="panel-body">
                            <address>
                                <strong>FPT UNIVERSITY.</strong>
                                <br> Hoa Lac High Tech Park
                                <br> Hanoi, Vietnam
                                <br>
                                <i class="icon-phone-sign"></i> +84 4 6291 5066
                            </address>
                        </div>
                    </div>
            
                    <div class="panel">
                        <div class="panel-heading">
                            <h3>
                                <i class="icon-time main-color"></i> Business hours</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
            
                                        <th>Day</th>
                                        <th>Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="success">
                                        <td>Monday</td>
                                        <td>9:00 to 18:00</td>
                                    </tr>
                                    <tr class="success">
                                        <td>Tuesday</td>
                                        <td>9:00 to 18:00</td>
                                    </tr>
                                    <tr class="success">
            
                                        <td>Wednesday</td>
                                        <td>9:00 to 18:00</td>
                                    </tr>
                                    <tr class="success">
            
                                        <td>Thursday</td>
                                        <td>9:00 to 18:00</td>
                                    </tr>
                                    <tr class="success">
            
                                        <td>Friday</td>
                                        <td>9:00 to 18:00</td>
                                    </tr>
                                    <tr class="warning">
            
                                        <td>Saturday</td>
                                        <td>9:00 to 14:00</td>
                                    </tr>
                                    <tr class="danger">
            
                                        <td>Sunday</td>
                                        <td>day off</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-8">
            
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="">
                                <i class="icon-envelope main-color"></i>
                                Feel free to contact us
                            </h3>
                        </div>
                        <div class="panel-body">
                            <!-- CONTACT FORM https://github.com/jonmbake/bootstrap3-contact-form -->
            
                            <form role="form" id="feedbackForm">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                                    <span class="help-block" style="display: none;">Please enter your name.</span>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
                                    <span class="help-block" style="display: none;">Please enter a valid e-mail address.</span>
                                </div>
                                <div class="form-group">
                                    <textarea rows="10" cols="100" class="form-control" id="message" name="message" placeholder="Message"></textarea>
                                    <span class="help-block" style="display: none;">Please enter a message.</span>
                                </div>
                                <button type="submit" id="feedbackSubmit" class="btn btn-primary btn-lg" style="display: block; margin-top: 10px;">Send Feedback</button>
                            </form>
                            <!-- END CONTACT FORM -->
                        </div>
                    </div>
                </div>
            </div>

        
            <%@ include file="footer.jsp" %>
