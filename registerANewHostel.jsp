<html>
    <head>
        <link rel="stylesheet" href="css/register.css" lang="text/css">
        <link type="text/css" rel="stylesheet" href="css/checkbox.css">
        <link rel="stylesheet" href="css/country.css" lang="text/css">
        <script src="/js/googleMapsAPI.js"></script> 
    </head>
    <body>
        <form id="hostel">
            <input type="text" name="hostelName" placeholder="Hostel name"> <br>
            <input type="text" name="PIB" placeholder="PIB"><br>
            <select required>
                <option value="" hidden id="placeholder">Country</option>
                <option value="AFG">Afghanistan</option>
                <option value="ALB">Albania</option>
                <option value="DZA">Algeria</option>
                <option value="ASM">American Samoa</option>
                <option value="AND">Andorra</option>
                <option value="AGO">Angola</option>
                <option value="AIA">Anguilla</option>
                <option value="ATA">Antarctica</option>
                <option value="ATG">Antigua and Barbuda</option>
                <option value="ARG">Argentina</option>
                <option value="ARM">Armenia</option>
                <option value="ABW">Aruba</option>
                <option value="AUS">Australia</option>
                <option value="AUT">Austria</option>
                <option value="AZE">Azerbaijan</option>
                <option value="BHS">Bahamas</option>
                <option value="BHR">Bahrain</option>
                <option value="BGD">Bangladesh</option>
                <option value="BRB">Barbados</option>
                <option value="BLR">Belarus</option>
                <option value="BEL">Belgium</option>
                <option value="BLZ">Belize</option>
                <option value="BEN">Benin</option>
                <option value="BMU">Bermuda</option>
                <option value="BTN">Bhutan</option>
            </select> <br>
            <input type="text" name="address" placeholder="Address"><br>
            <!--google maps API should go in here-->
            <input type="text" name="phone" placeholder="Phone number"><br>
            <input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" placeholder="E-mail"><br>
            <!--room input implementation goes in here-->
            <span>Does your hostel have the following?</span><br>
            <input type="checkbox" id="wifi" name="wifi" value="Wifi">
                <label for="wifi">Wifi</label>
            <input type="checkbox" id="parking" name="parking" value="Parking">
                <label for="parking">Parking</label>
            <input type="checkbox" id="lockers" name="lockers" value="Lockers">
                <label for="lockers">Lockers</label>
            <input type="submit" value="Submit">
        </form>

        <form id="room">
            <input type="number" placeholder="Total bed count">
            <input type="number" placeholder="Free beds">
            <input type="number" placeholder="Price">
            <input type="checkbox" id="private" name="private" value="Private">
                <label for="private">Private room</label>
            <input type="checkbox" id="bathroom" name="bathroom" value="Bathroom">
                <label for="bathroom">Shared bathroooms</label>
            
            <input type="file" name="file" id="file" class="inputfile" />
            <label for="file"><span id="plus">+</span> <br> Choose a file</label>
        </form>
    </body>
</html>